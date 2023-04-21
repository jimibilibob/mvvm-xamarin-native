using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Net.Http.Json;
using System.Threading.Tasks;
using core.Models;

namespace core.Repository
{
    class RemoteRepository : IRemoteRepository
    {
        private readonly INetworkService NetworkHandler;

        public RemoteRepository(INetworkService networkHandler)
        {
            NetworkHandler = networkHandler;
        }

        public async Task<Result<List<UserResponse>>> GetUsers()
        {
            try
            {
                var users = await NetworkHandler.GetData<List<UserResponse>>("https://jsonplaceholder.typicode.com/users");
                return Result.Ok(users);
            }
            catch (NetworkErrorException ex)
            {
                // You can customize the error messages just checking the exceptionCode or just use the exceptionMessage instead (see default case)
                switch (ex.Code)
                {
                    case (int)HttpStatusCode.InternalServerError:
                        return Result.Fail<List<UserResponse>>("It seems like server is down");
                    case (int)HttpStatusCode.NotFound:
                        return Result.Fail<List<UserResponse>>("The users list seems to be unavailable right now");
                    default:
                        return Result.Fail<List<UserResponse>>(ex.Message ?? "Something went wrong");
                }
            }
            catch (Exception ex)
            {
                return Result.Fail<List<UserResponse>>($"Check your internet connection {ex}");
            }
        }

        public async Task<Result<UserResponse>> GetUserById(int id)
        {
            try
            {
                var users = await NetworkHandler.GetData<UserResponse>($"https://jsonplaceholder.typicode.com/users/{id}");
                return Result.Ok(users);
            }
            catch (NetworkErrorException ex)
            {
                // You can customize the error messages just checking the exceptionCode or just use the exceptionMessage instead (see default case)
                switch (ex.Code)
                {
                    case (int)HttpStatusCode.InternalServerError:
                        return Result.Fail<UserResponse>("It seems like server is down");
                    case (int)HttpStatusCode.NotFound:
                        return Result.Fail<UserResponse>("The user seems to be unavailable right now");
                    default:
                        return Result.Fail<UserResponse>(ex.Message ?? "Something went wrong");
                }
            }
            catch (Exception ex)
            {
                return Result.Fail<UserResponse>($"Check your internet connection {ex}");
            }
        }
    }

    public interface IRemoteRepository
    {
        public Task<Result<List<UserResponse>>> GetUsers();
        public Task<Result<UserResponse>> GetUserById(int id);
    }
}

