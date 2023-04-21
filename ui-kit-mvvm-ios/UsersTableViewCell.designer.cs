// WARNING
//
// This file has been generated automatically by Visual Studio to store outlets and
// actions made in the UI designer. If it is removed, they will be lost.
// Manual changes to this file may not be handled correctly.
//
using Foundation;
using System.CodeDom.Compiler;

namespace ui_kit_mvvm_ios
{
	[Register ("UsersTableViewCell")]
	partial class UsersTableViewCell
	{
		[Outlet]
		UIKit.UILabel emailLabel { get; set; }

		[Outlet]
		UIKit.UILabel phoneLabel { get; set; }

		[Outlet]
		UIKit.UILabel userNameLabel { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (userNameLabel != null) {
				userNameLabel.Dispose ();
				userNameLabel = null;
			}

			if (emailLabel != null) {
				emailLabel.Dispose ();
				emailLabel = null;
			}

			if (phoneLabel != null) {
				phoneLabel.Dispose ();
				phoneLabel = null;
			}
		}
	}
}
