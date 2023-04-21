
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using Core.IoC;
using Core.ViewModels;
using Microsoft.Extensions.DependencyInjection;

namespace ui_kit_mvvm
{
    public class UserDetailFragment : AndroidX.Fragment.App.Fragment
    {
        MainViewModel Vm = IoCService.Instance.Services.GetService<MainViewModel>();

        private TextView _name;
        private TextView _userName;
        private TextView _email;
        private TextView _phone;
        private TextView _website;
        private TextView _company;
        private TextView _address;

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            Android.Views.View view = inflater.Inflate(Resource.Layout.fragment_user_detail, container, false);

            _name = view.FindViewById<TextView>(Resource.Id.TvName);
            _userName = view.FindViewById<TextView>(Resource.Id.TvUserName);
            _email = view.FindViewById<TextView>(Resource.Id.TvEmail);
            _phone = view.FindViewById<TextView>(Resource.Id.TvPhone);
            _website = view.FindViewById<TextView>(Resource.Id.TvWebsite);
            _company = view.FindViewById<TextView>(Resource.Id.TvCompanyName);
            _address = view.FindViewById<TextView>(Resource.Id.TvAdress);

            return base.OnCreateView(inflater, container, savedInstanceState);
        }

        public override void OnViewCreated(View view, Bundle savedInstanceState)
        {
            base.OnViewCreated(view, savedInstanceState);
        }
    }
}

