using System;
using System.Collections.Generic;
using System.Diagnostics.Contracts;
using System.Linq;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.Collections;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using core.Models;
using core.Repository;

namespace Core.ViewModels
{
    public partial class MainViewModel: ObservableObject
    {
        private IRemoteRepository repository;

        [ObservableProperty]
        public List<UserResponse> users;

        public MainViewModel(IRemoteRepository repository)
        {
            this.repository = repository;
            GetUsersCommand = new AsyncRelayCommand(GetUsersAsync);
            Users = new List<UserResponse>();
        }

        [ObservableProperty]
        private string message = "";

        [ObservableProperty]
        private bool isLoaded = false;

        [RelayCommand]
        private void hasLoaded()
        {
            IsLoaded = !IsLoaded;
        }

        [RelayCommand]
        private void updateMessage(string newMessage)
        {
            Message = newMessage;
        }

        public IAsyncRelayCommand GetUsersCommand { get; }

        private async Task GetUsersAsync()
        {
            var usersResponse = await repository.GetUsers();

            Users = usersResponse.Value;
            IsLoaded = true;
        }

        partial void OnMessageChanged(string value)
        {
            Console.WriteLine($"The Message is about to change {value}");
        }

        partial void OnMessageChanging(string value)
        {
            Console.WriteLine($"The Message has changed to {value}");
        }
    }
}

