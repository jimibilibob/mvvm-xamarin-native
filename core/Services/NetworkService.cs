using System;
using System.Net;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading.Tasks;

namespace core.Repository
{
    public class NetworkErrorException : HttpRequestException
    {
        public int Code;
        public NetworkErrorException(int code)
        {
            this.Code = code;
        }
        public NetworkErrorException(int code, string message) : base(message)
        {
            this.Code = code;
        }
        public NetworkErrorException(int code, string message, Exception inner) : base(message, inner)
        {
            this.Code = code;
        }
    }

    public static class NetworkErrors
    {
        public static readonly NetworkErrorException BadRequest = new NetworkErrorException(400, "Bad request");
        public static readonly NetworkErrorException NotFound = new NetworkErrorException(404, "Not Found");
        public static readonly NetworkErrorException InternalServerError = new NetworkErrorException(500, "Internal Server Error");
        public static readonly NetworkErrorException UnknownError = new NetworkErrorException(0, "Unknown Error");
    }

    public interface INetworkService
    {
        Task<T> GetData<T>(string endpoint);
    }

    public class NetworkService : INetworkService
    {
        public NetworkService()
        {
        }

        private static HttpClient httpClient = new HttpClient();

        public async Task<T> GetData<T>(string endpoint)
        {
            var response = new HttpResponseMessage();
            try
            {
                response = await httpClient.GetAsync(endpoint);
                return await response.Content.ReadFromJsonAsync<T>();
            }
            catch (Exception ex)
            {
                CheckNetworkException(response);
                throw ex;
            }
        }

        private void CheckNetworkException(HttpResponseMessage response)
        {
            switch (response.StatusCode)
            {
                case HttpStatusCode.BadRequest:
                    throw NetworkErrors.BadRequest;
                case HttpStatusCode.NotFound:
                    throw NetworkErrors.NotFound;
                case var expression when response.StatusCode >= HttpStatusCode.InternalServerError:
                    throw NetworkErrors.InternalServerError;
            }
        }
    }

    public class Result
    {
        protected Result(bool success, string error)
        {
            if (success && error != string.Empty)
                throw new InvalidOperationException();
            if (!success && error == string.Empty)
                throw new InvalidOperationException();
            Success = success;
            Error = error;
        }

        public bool Success { get; }
        public string Error { get; }
        public bool IsFailure => !Success;

        public static Result Fail(string message)
        {
            return new Result(false, message);
        }

        public static Result<T> Fail<T>(string message)
        {
            return new Result<T>(default, false, message);
        }

        public static Result Ok()
        {
            return new Result(true, string.Empty);
        }

        public static Result<T> Ok<T>(T value)
        {
            return new Result<T>(value, true, string.Empty);
        }
    }

    public class Result<T> : Result
    {
        protected internal Result(T value, bool success, string error)
            : base(success, error)
        {
            Value = value;
        }

        public T Value { get; set; }
    }
}

