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
            
        }
    }
}
