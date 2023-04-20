using System;
using System.Collections.Generic;
using Android.Views;
using Android.Widget;
using AndroidX.RecyclerView.Widget;
using core.Models;

namespace ui_kit_mvvm.Adapters
{
	public class UserAdapter : RecyclerView.Adapter
	{
        private List<UserResponse> _users;

		public UserAdapter(List<UserResponse> users)
		{
            _users = users;
		}

        public override int ItemCount => _users.Count;

        public override void OnBindViewHolder(RecyclerView.ViewHolder holder, int position)
        {
            UserViewHolder userHolder = holder as UserViewHolder;

            UserResponse user = _users[position];

            userHolder.UserName.Text = user.Username;
            userHolder.Email.Text = user.Email;
            userHolder.Phone.Text = user.Phone;
        }

        public override RecyclerView.ViewHolder OnCreateViewHolder(ViewGroup parent, int viewType)
        {
            Android.Views.View view = LayoutInflater.From(parent.Context).Inflate(Resource.Layout.user_item, parent, false);
            UserViewHolder holder = new UserViewHolder(view);
            return holder;
        }

        public void UpdateList(List<UserResponse> newUsers)
        {
            _users = newUsers;
            NotifyDataSetChanged();
        }
    }

    public class UserViewHolder : RecyclerView.ViewHolder
    {
        public TextView UserName { get; set; }
        public TextView Email { get; set; }
        public TextView Phone { get; set; }

        public UserViewHolder(Android.Views.View container) : base(container)
        {
            UserName = container.FindViewById<TextView>(Resource.Id.TvUserName);
            Email = container.FindViewById<TextView>(Resource.Id.TvEmail);
            Phone = container.FindViewById<TextView>(Resource.Id.TvPhone);
        }
    }
}

