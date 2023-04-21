using core.Models;
using Core.IoC;
using Core.ViewModels;
using Foundation;
using Microsoft.Extensions.DependencyInjection;
using System;
using System.ComponentModel;
using UIKit;

namespace ui_kit_mvvm_ios
{
    public partial class ViewController : UIViewController
    {
        MainViewModel Vm = IoCService.Instance.Services.GetService<MainViewModel>();

        public ViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad ()
        {
            base.ViewDidLoad ();
            // Perform any additional setup after loading the view, typically from a nib.

            fabButton.Layer.CornerRadius = fabButton.Frame.Height / 2;
            fabButton.ClipsToBounds = true;

            progressIndicator.StartAnimating();

            Vm.PropertyChanged += onPropertyChanged;
            fabButton.TouchUpInside += (sender, args) =>
            {
                //Vm.hasLoadedCommand.Execute(null);
            };

            usersTableView.RegisterNibForCellReuse(UsersTableViewCell.Nib, UsersTableViewCell.Key);
            usersTableView.DataSource = new HomeViewControllerDataSource(this);
            usersTableView.Delegate = new HomeViewControllerDelegate(this);

            Vm.GetUsersCommand.Execute(null);
        }

        public override void DidReceiveMemoryWarning ()
        {
            base.DidReceiveMemoryWarning ();
            // Release any cached data, images, etc that aren't in use.
        }

        private void onPropertyChanged(object sender, PropertyChangedEventArgs args)
        {
            switch (args.PropertyName)
            {
                case "Message":
                    onMessageChanged();
                    break;
                case "IsLoaded":
                    onIsLoadedChanged();
                    break;
                case "Users":
                    onUsersChanged();
                    break;
            }
        }

        private void onMessageChanged()
        {
            if (Vm.Message == null) return;
            messageLabel.Text = Vm.Message;
        }

        private void onIsLoadedChanged()
        {
            if (Vm.IsLoaded)
            {
                progressIndicator.Hidden = true;
                progressIndicator.StopAnimating();
                messageLabel.Hidden = true;
                return;
            }
            progressIndicator.StartAnimating();
            progressIndicator.Hidden = false;
            messageLabel.Text = Vm.Message;
            Vm.updateMessageCommand.Execute("Loading ...");
        }

        private void onUsersChanged()
        {
            usersTableView.ReloadData();
        }

        class HomeViewControllerDataSource : UITableViewDataSource
        {
            private ViewController _controller;

            public HomeViewControllerDataSource(ViewController viewController)
            {
                _controller = viewController;
            }
            public override UITableViewCell GetCell(UITableView tableView, NSIndexPath indexPath)
            {
                UserResponse user = _controller.Vm.Users[indexPath.Row];

                UsersTableViewCell cell = (UsersTableViewCell) tableView.DequeueReusableCell(UsersTableViewCell.Key, indexPath);

                cell.User = user;
                cell.UpdateViews();

                return cell;
            }

            public override nint RowsInSection(UITableView tableView, nint section)
            {
                return _controller.Vm.Users.Count;
            }

        }

        class HomeViewControllerDelegate : UITableViewDelegate
        {
            ViewController _controller;

            public HomeViewControllerDelegate(ViewController controller)
            {
                _controller = controller;
            }

            [Export("tableView:heightForRowAtIndexPath:")]
            public override nfloat GetHeightForRow(UITableView tableView, NSIndexPath indexPath)
            {
                return 90f;
            }
        }
    }
}
