package crc641c47b3ee1f2f9700;


public class UserDetailFragment
	extends androidx.fragment.app.Fragment
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreateView:(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;:GetOnCreateView_Landroid_view_LayoutInflater_Landroid_view_ViewGroup_Landroid_os_Bundle_Handler\n" +
			"n_onViewCreated:(Landroid/view/View;Landroid/os/Bundle;)V:GetOnViewCreated_Landroid_view_View_Landroid_os_Bundle_Handler\n" +
			"";
		mono.android.Runtime.register ("ui_kit_mvvm.UserDetailFragment, ui_kit_mvvm", UserDetailFragment.class, __md_methods);
	}


	public UserDetailFragment ()
	{
		super ();
		if (getClass () == UserDetailFragment.class) {
			mono.android.TypeManager.Activate ("ui_kit_mvvm.UserDetailFragment, ui_kit_mvvm", "", this, new java.lang.Object[] {  });
		}
	}


	public UserDetailFragment (int p0)
	{
		super (p0);
		if (getClass () == UserDetailFragment.class) {
			mono.android.TypeManager.Activate ("ui_kit_mvvm.UserDetailFragment, ui_kit_mvvm", "System.Int32, mscorlib", this, new java.lang.Object[] { p0 });
		}
	}


	public android.view.View onCreateView (android.view.LayoutInflater p0, android.view.ViewGroup p1, android.os.Bundle p2)
	{
		return n_onCreateView (p0, p1, p2);
	}

	private native android.view.View n_onCreateView (android.view.LayoutInflater p0, android.view.ViewGroup p1, android.os.Bundle p2);


	public void onViewCreated (android.view.View p0, android.os.Bundle p1)
	{
		n_onViewCreated (p0, p1);
	}

	private native void n_onViewCreated (android.view.View p0, android.os.Bundle p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
