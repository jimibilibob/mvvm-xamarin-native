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
	[Register ("ViewController")]
	partial class ViewController
	{
		[Outlet]
		UIKit.UIButton fabButton { get; set; }

		[Outlet]
		UIKit.UILabel messageLabel { get; set; }

		[Outlet]
		UIKit.UIActivityIndicatorView progressIndicator { get; set; }
		
		void ReleaseDesignerOutlets ()
		{
			if (messageLabel != null) {
				messageLabel.Dispose ();
				messageLabel = null;
			}

			if (progressIndicator != null) {
				progressIndicator.Dispose ();
				progressIndicator = null;
			}

			if (fabButton != null) {
				fabButton.Dispose ();
				fabButton = null;
			}
		}
	}
}