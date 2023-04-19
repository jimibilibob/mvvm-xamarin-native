; ModuleID = 'obj/Debug/android/marshal_methods.x86_64.ll'
source_filename = "obj/Debug/android/marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [142 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 6
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 24
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 45
	i64 295915112840604065, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 46
	i64 634308326490598313, ; 4: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 37
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 59
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 33
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 30
	i64 940822596282819491, ; 8: System.Transactions => 0xd0e792aa81923a3 => 57
	i64 1000557547492888992, ; 9: Mono.Security.dll => 0xde2b1c9cba651a0 => 70
	i64 1120440138749646132, ; 10: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 54
	i64 1315114680217950157, ; 11: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 19
	i64 1425944114962822056, ; 12: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 64
	i64 1624659445732251991, ; 13: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 17
	i64 1628611045998245443, ; 14: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 39
	i64 1636321030536304333, ; 15: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 34
	i64 1795316252682057001, ; 16: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 18
	i64 1836611346387731153, ; 17: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 45
	i64 1875917498431009007, ; 18: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 16
	i64 1930726298510463061, ; 19: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 2
	i64 1981742497975770890, ; 20: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 38
	i64 2136356949452311481, ; 21: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 42
	i64 2165725771938924357, ; 22: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 22
	i64 2262844636196693701, ; 23: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 30
	i64 2284400282711631002, ; 24: System.Web.Services => 0x1fb3d1f42fd4249a => 66
	i64 2287887973817120656, ; 25: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 69
	i64 2329709569556905518, ; 26: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 36
	i64 2337758774805907496, ; 27: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 12
	i64 2470498323731680442, ; 28: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 25
	i64 2479423007379663237, ; 29: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 49
	i64 2497223385847772520, ; 30: System.Runtime => 0x22a7eb7046413568 => 13
	i64 2547086958574651984, ; 31: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 15
	i64 2592350477072141967, ; 32: System.Xml.dll => 0x23f9e10627330e8f => 14
	i64 2624866290265602282, ; 33: mscorlib.dll => 0x246d65fbde2db8ea => 7
	i64 2656907746661064104, ; 34: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 5
	i64 2783046991838674048, ; 35: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 12
	i64 3017704767998173186, ; 36: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 54
	i64 3289520064315143713, ; 37: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 35
	i64 3311221304742556517, ; 38: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 11
	i64 3522470458906976663, ; 39: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 47
	i64 3531994851595924923, ; 40: System.Numerics => 0x31042a9aade235bb => 10
	i64 3571415421602489686, ; 41: System.Runtime.dll => 0x319037675df7e556 => 13
	i64 3716579019761409177, ; 42: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 43: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 44
	i64 4525561845656915374, ; 44: System.ServiceModel.Internals => 0x3ece06856b710dae => 65
	i64 4636684751163556186, ; 45: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 51
	i64 4743821336939966868, ; 46: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 68
	i64 4782108999019072045, ; 47: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 21
	i64 4794310189461587505, ; 48: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 15
	i64 4795410492532947900, ; 49: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 47
	i64 5203618020066742981, ; 50: Xamarin.Essentials => 0x4836f704f0e652c5 => 53
	i64 5205316157927637098, ; 51: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 41
	i64 5376510917114486089, ; 52: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 49
	i64 5408338804355907810, ; 53: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 48
	i64 5507995362134886206, ; 54: System.Core.dll => 0x4c705499688c873e => 8
	i64 6319713645133255417, ; 55: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 37
	i64 6401687960814735282, ; 56: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 36
	i64 6504860066809920875, ; 57: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 22
	i64 6548213210057960872, ; 58: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 28
	i64 6591024623626361694, ; 59: System.Web.Services.dll => 0x5b7805f9751a1b5e => 66
	i64 6659513131007730089, ; 60: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 33
	i64 6876862101832370452, ; 61: System.Xml.Linq => 0x5f6f85a57d108914 => 67
	i64 6894844156784520562, ; 62: System.Numerics.Vectors => 0x5faf683aead1ad72 => 11
	i64 7103753931438454322, ; 63: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 32
	i64 7488575175965059935, ; 64: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 67
	i64 7637365915383206639, ; 65: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 53
	i64 7654504624184590948, ; 66: System.Net.Http => 0x6a3a4366801b8264 => 63
	i64 7820441508502274321, ; 67: System.Data => 0x6c87ca1e14ff8111 => 56
	i64 7836164640616011524, ; 68: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 17
	i64 8044118961405839122, ; 69: System.ComponentModel.Composition => 0x6fa2739369944712 => 62
	i64 8083354569033831015, ; 70: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 35
	i64 8103644804370223335, ; 71: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 58
	i64 8122463700241992132, ; 72: ui_kit_mvvm.dll => 0x70b8c9b361edc9c4 => 0
	i64 8167236081217502503, ; 73: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 3
	i64 8318905602908530212, ; 74: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 69
	i64 8601935802264776013, ; 75: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 48
	i64 8626175481042262068, ; 76: Java.Interop => 0x77b654e585b55834 => 3
	i64 8684531736582871431, ; 77: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 61
	i64 9324707631942237306, ; 78: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 18
	i64 9662334977499516867, ; 79: System.Numerics.dll => 0x8617827802b0cfc3 => 10
	i64 9678050649315576968, ; 80: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 25
	i64 9808709177481450983, ; 81: Mono.Android.dll => 0x881f890734e555e7 => 6
	i64 9834056768316610435, ; 82: System.Transactions.dll => 0x8879968718899783 => 57
	i64 9998632235833408227, ; 83: Mono.Security => 0x8ac2470b209ebae3 => 70
	i64 10038780035334861115, ; 84: System.Net.Http.dll => 0x8b50e941206af13b => 63
	i64 10229024438826829339, ; 85: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 28
	i64 10430153318873392755, ; 86: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 26
	i64 10725508388639359286, ; 87: ui_kit_mvvm => 0x94d8a90da4524136 => 0
	i64 10847732767863316357, ; 88: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 19
	i64 11023048688141570732, ; 89: System.Core => 0x98f9bc61168392ac => 8
	i64 11037814507248023548, ; 90: System.Xml => 0x992e31d0412bf7fc => 14
	i64 11162124722117608902, ; 91: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 52
	i64 11340910727871153756, ; 92: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 27
	i64 11392833485892708388, ; 93: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 43
	i64 11529969570048099689, ; 94: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 52
	i64 11580057168383206117, ; 95: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 16
	i64 11597940890313164233, ; 96: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 97: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 32
	i64 12137774235383566651, ; 98: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 50
	i64 12451044538927396471, ; 99: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 31
	i64 12466513435562512481, ; 100: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 40
	i64 12487638416075308985, ; 101: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 29
	i64 12538491095302438457, ; 102: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 23
	i64 12550732019250633519, ; 103: System.IO.Compression => 0xae2d28465e8e1b2f => 60
	i64 12700543734426720211, ; 104: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 24
	i64 12963446364377008305, ; 105: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 59
	i64 13370592475155966277, ; 106: System.Runtime.Serialization => 0xb98de304062ea945 => 64
	i64 13401370062847626945, ; 107: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 50
	i64 13454009404024712428, ; 108: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 55
	i64 13491513212026656886, ; 109: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 20
	i64 13572454107664307259, ; 110: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 44
	i64 13647894001087880694, ; 111: System.Data.dll => 0xbd670f48cb071df6 => 56
	i64 13959074834287824816, ; 112: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 31
	i64 14124974489674258913, ; 113: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 23
	i64 14172845254133543601, ; 114: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 42
	i64 14261073672896646636, ; 115: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 43
	i64 14644440854989303794, ; 116: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 41
	i64 14669215534098758659, ; 117: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 5
	i64 14792063746108907174, ; 118: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 55
	i64 14852515768018889994, ; 119: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 27
	i64 14954917835170835695, ; 120: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 4
	i64 14987728460634540364, ; 121: System.IO.Compression.dll => 0xcfff1ba06622494c => 60
	i64 14988210264188246988, ; 122: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 29
	i64 15370334346939861994, ; 123: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 26
	i64 15391712275433856905, ; 124: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 4
	i64 15582737692548360875, ; 125: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 39
	i64 15609085926864131306, ; 126: System.dll => 0xd89e9cf3334914ea => 9
	i64 15777549416145007739, ; 127: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 46
	i64 16154507427712707110, ; 128: System => 0xe03056ea4e39aa26 => 9
	i64 16565028646146589191, ; 129: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 62
	i64 16648892297579399389, ; 130: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 2
	i64 16822611501064131242, ; 131: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 58
	i64 16833383113903931215, ; 132: mscorlib => 0xe99c30c1484d7f4f => 7
	i64 17037200463775726619, ; 133: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 34
	i64 17187273293601214786, ; 134: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 68
	i64 17544493274320527064, ; 135: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 21
	i64 17704177640604968747, ; 136: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 40
	i64 17710060891934109755, ; 137: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 38
	i64 17928294245072900555, ; 138: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 61
	i64 18116111925905154859, ; 139: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 20
	i64 18129453464017766560, ; 140: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 65
	i64 18380184030268848184 ; 141: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 51
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [142 x i32] [
	i32 6, i32 24, i32 45, i32 46, i32 37, i32 59, i32 33, i32 30, ; 0..7
	i32 57, i32 70, i32 54, i32 19, i32 64, i32 17, i32 39, i32 34, ; 8..15
	i32 18, i32 45, i32 16, i32 2, i32 38, i32 42, i32 22, i32 30, ; 16..23
	i32 66, i32 69, i32 36, i32 12, i32 25, i32 49, i32 13, i32 15, ; 24..31
	i32 14, i32 7, i32 5, i32 12, i32 54, i32 35, i32 11, i32 47, ; 32..39
	i32 10, i32 13, i32 1, i32 44, i32 65, i32 51, i32 68, i32 21, ; 40..47
	i32 15, i32 47, i32 53, i32 41, i32 49, i32 48, i32 8, i32 37, ; 48..55
	i32 36, i32 22, i32 28, i32 66, i32 33, i32 67, i32 11, i32 32, ; 56..63
	i32 67, i32 53, i32 63, i32 56, i32 17, i32 62, i32 35, i32 58, ; 64..71
	i32 0, i32 3, i32 69, i32 48, i32 3, i32 61, i32 18, i32 10, ; 72..79
	i32 25, i32 6, i32 57, i32 70, i32 63, i32 28, i32 26, i32 0, ; 80..87
	i32 19, i32 8, i32 14, i32 52, i32 27, i32 43, i32 52, i32 16, ; 88..95
	i32 1, i32 32, i32 50, i32 31, i32 40, i32 29, i32 23, i32 60, ; 96..103
	i32 24, i32 59, i32 64, i32 50, i32 55, i32 20, i32 44, i32 56, ; 104..111
	i32 31, i32 23, i32 42, i32 43, i32 41, i32 5, i32 55, i32 27, ; 112..119
	i32 4, i32 60, i32 29, i32 26, i32 4, i32 39, i32 9, i32 46, ; 120..127
	i32 9, i32 62, i32 2, i32 58, i32 7, i32 34, i32 68, i32 21, ; 128..135
	i32 40, i32 38, i32 61, i32 20, i32 65, i32 51 ; 136..141
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ 797e2e13d1706ace607da43703769c5a55c4de60"}
!llvm.linker.options = !{}
