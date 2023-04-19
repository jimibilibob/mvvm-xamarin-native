using System;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;

namespace Core.ViewModels
{
    public partial class MainViewModel: ObservableObject
    {
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

        public MainViewModel()
        {
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

