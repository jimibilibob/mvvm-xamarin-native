package crc6423062e17f7a86359;


public class UserViewHolder
	extends androidx.recyclerview.widget.RecyclerView.ViewHolder
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("ui_kit_mvvm.Adapters.UserViewHolder, ui_kit_mvvm", UserViewHolder.class, __md_methods);
	}


	public UserViewHolder (android.view.View p0)
	{
		super (p0);
		if (getClass () == UserViewHolder.class) {
			mono.android.TypeManager.Activate ("ui_kit_mvvm.Adapters.UserViewHolder, ui_kit_mvvm", "Android.Views.View, Mono.Android", this, new java.lang.Object[] { p0 });
		}
	}

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
