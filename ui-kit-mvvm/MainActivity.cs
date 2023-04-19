using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Views;
using AndroidX.AppCompat.Widget;
using AndroidX.AppCompat.App;
using Google.Android.Material.FloatingActionButton;
using Google.Android.Material.Snackbar;
using Android.Widget;
using Core.ViewModels;
using System.ComponentModel;
using Core.IoC;
using Microsoft.Extensions.DependencyInjection;

namespace ui_kit_mvvm
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {

        MainViewModel Vm = IoCService.Instance.Services.GetService<MainViewModel>();

        RelativeLayout contentLayout;
        LinearLayout loadingContainer;
        ProgressBar progressBar;
        TextView message;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            //Toolbar toolbar = FindViewById<Toolbar>(Resource.Id.toolbar);
            //SetSupportActionBar(toolbar);

            FloatingActionButton fab = FindViewById<FloatingActionButton>(Resource.Id.fab);
            fab.Click += FabOnClick;

            contentLayout = FindViewById<RelativeLayout>(Resource.Id.ContentView);

            loadingContainer = FindViewById<LinearLayout>(Resource.Id.ProgressContainer);
            progressBar = loadingContainer.FindViewById<ProgressBar>(Resource.Id.progress_bar);
            message = loadingContainer.FindViewById<TextView>(Resource.Id.Message);

            Vm.PropertyChanged += onPropertyChanged;
        }

        public override bool OnCreateOptionsMenu(IMenu menu)
        {
            MenuInflater.Inflate(Resource.Menu.menu_main, menu);
            return true;
        }

        public override bool OnOptionsItemSelected(IMenuItem item)
        {
            int id = item.ItemId;
            if (id == Resource.Id.action_settings)
            {
                return true;
            }

            return base.OnOptionsItemSelected(item);
        }

        private void FabOnClick(object sender, EventArgs eventArgs)
        {
            Vm.hasLoadedCommand.Execute(null);
            //View view = (View) sender;
            //Snackbar.Make(view, "Replace with your own action", Snackbar.LengthLong)
            //    .SetAction("Action", (View.IOnClickListener)null).Show();
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        private void onPropertyChanged(object sender, PropertyChangedEventArgs args)
        {
            switch(args.PropertyName) {
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
            message.Text = Vm.Message;
        }

        private void onIsLoadedChanged()
        {
            if (Vm.IsLoaded)
            {
                progressBar.Visibility = ViewStates.Invisible;
                Vm.updateMessageCommand.Execute("Data Loaded!");
                return;
            }
            progressBar.Visibility = ViewStates.Visible;
            message.Text = Vm.Message;
            Vm.updateMessageCommand.Execute("Loading");
        }
	}
}

