﻿using System;
using CommunityToolkit.Mvvm.Collections;
using CommunityToolkit.Mvvm.DependencyInjection;
using CommunityToolkit.Mvvm.ComponentModel;
using Microsoft.Extensions.DependencyInjection;
using Core.ViewModels;
using core.Repository;

namespace Core.IoC
{
    public sealed class IoCService
    {
        private static IoCService _instance;



        public static IoCService Instance
        {
            get
            {
                if (_instance == null)
                {
                    _instance = new IoCService();
                }
                return _instance;
            }
        }



        public IServiceProvider Services { get; }
        private IoCService()
        {
            Services = ConfigureServices();
        }



        private static IServiceProvider ConfigureServices()
        {
            var services = new ServiceCollection();

            services.AddSingleton<INetworkService, NetworkService>();

            services.AddSingleton<IRemoteRepository, RemoteRepository>();

            services.AddTransient<MainViewModel>();

            return services.BuildServiceProvider();
        }



        public static T GetService<T>()
        {
            return Instance.Services.GetService<T>();
        }
    }
}

