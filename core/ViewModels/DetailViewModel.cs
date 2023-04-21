using System;
using System.Threading.Tasks;
using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using core.Models;
using core.Repository;

namespace core.ViewModels
{
	public partial class DetailViewModel : ObservableObject
	{
        private IRemoteRepository repository;

        [ObservableProperty]
        private UserResponse _selectedUser;

        [ObservableProperty]
        private bool hasLoaded = false;

        public DetailViewModel(IRemoteRepository repository)
		{
            this.repository = repository;
        }

        [RelayCommand]
        private async Task GetUserAsync(int id)
        {
            var userResponse = await repository.GetUserById(id);

            SelectedUser = userResponse.Value;
            HasLoaded = true;
        }
	}
}

