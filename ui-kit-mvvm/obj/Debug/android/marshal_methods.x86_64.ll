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
@assembly_image_cache_hashes = local_unnamed_addr constant [158 x i64] [
	i64 120698629574877762, ; 0: Mono.Android => 0x1accec39cafe242 => 8
	i64 210515253464952879, ; 1: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 31
	i64 232391251801502327, ; 2: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 52
	i64 295915112840604065, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 53
	i64 634308326490598313, ; 4: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 44
	i64 702024105029695270, ; 5: System.Drawing.Common => 0x9be17343c0e7726 => 66
	i64 720058930071658100, ; 6: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 40
	i64 872800313462103108, ; 7: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 37
	i64 940822596282819491, ; 8: System.Transactions => 0xd0e792aa81923a3 => 64
	i64 1000557547492888992, ; 9: Mono.Security.dll => 0xde2b1c9cba651a0 => 77
	i64 1120440138749646132, ; 10: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 61
	i64 1315114680217950157, ; 11: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 26
	i64 1425944114962822056, ; 12: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 71
	i64 1624659445732251991, ; 13: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 24
	i64 1628611045998245443, ; 14: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 46
	i64 1636321030536304333, ; 15: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 41
	i64 1743969030606105336, ; 16: System.Memory.dll => 0x1833d297e88f2af8 => 13
	i64 1795316252682057001, ; 17: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 25
	i64 1836611346387731153, ; 18: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 52
	i64 1865037103900624886, ; 19: Microsoft.Bcl.AsyncInterfaces => 0x19e1f15d56eb87f6 => 5
	i64 1875917498431009007, ; 20: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 23
	i64 1930726298510463061, ; 21: CommunityToolkit.Mvvm.dll => 0x1acb5156cd389055 => 2
	i64 1981742497975770890, ; 22: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 45
	i64 2040001226662520565, ; 23: System.Threading.Tasks.Extensions.dll => 0x1c4f8a4ea894a6f5 => 78
	i64 2136356949452311481, ; 24: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 49
	i64 2165725771938924357, ; 25: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 29
	i64 2262844636196693701, ; 26: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 37
	i64 2284400282711631002, ; 27: System.Web.Services => 0x1fb3d1f42fd4249a => 73
	i64 2287887973817120656, ; 28: System.ComponentModel.DataAnnotations.dll => 0x1fc035fd8d41f790 => 76
	i64 2329709569556905518, ; 29: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 43
	i64 2335503487726329082, ; 30: System.Text.Encodings.Web => 0x2069600c4d9d1cfa => 19
	i64 2337758774805907496, ; 31: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 17
	i64 2470498323731680442, ; 32: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 32
	i64 2479423007379663237, ; 33: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 56
	i64 2497223385847772520, ; 34: System.Runtime => 0x22a7eb7046413568 => 18
	i64 2547086958574651984, ; 35: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 22
	i64 2592350477072141967, ; 36: System.Xml.dll => 0x23f9e10627330e8f => 21
	i64 2624866290265602282, ; 37: mscorlib.dll => 0x246d65fbde2db8ea => 9
	i64 2656907746661064104, ; 38: Microsoft.Extensions.DependencyInjection => 0x24df3b84c8b75da8 => 7
	i64 2783046991838674048, ; 39: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 17
	i64 3017704767998173186, ; 40: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 61
	i64 3289520064315143713, ; 41: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 42
	i64 3311221304742556517, ; 42: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 16
	i64 3522470458906976663, ; 43: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 54
	i64 3531994851595924923, ; 44: System.Numerics => 0x31042a9aade235bb => 15
	i64 3571415421602489686, ; 45: System.Runtime.dll => 0x319037675df7e556 => 18
	i64 3716579019761409177, ; 46: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 47: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 51
	i64 3966267475168208030, ; 48: System.Memory => 0x370b03412596249e => 13
	i64 4525561845656915374, ; 49: System.ServiceModel.Internals => 0x3ece06856b710dae => 72
	i64 4636684751163556186, ; 50: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 58
	i64 4743821336939966868, ; 51: System.ComponentModel.Annotations => 0x41d5705f4239b194 => 75
	i64 4782108999019072045, ; 52: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 28
	i64 4794310189461587505, ; 53: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 22
	i64 4795410492532947900, ; 54: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 54
	i64 5203618020066742981, ; 55: Xamarin.Essentials => 0x4836f704f0e652c5 => 60
	i64 5205316157927637098, ; 56: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 48
	i64 5376510917114486089, ; 57: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 56
	i64 5408338804355907810, ; 58: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 55
	i64 5507995362134886206, ; 59: System.Core.dll => 0x4c705499688c873e => 11
	i64 6222399776351216807, ; 60: System.Text.Json.dll => 0x565a67a0ffe264a7 => 20
	i64 6319713645133255417, ; 61: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 44
	i64 6401687960814735282, ; 62: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 43
	i64 6504860066809920875, ; 63: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 29
	i64 6548213210057960872, ; 64: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 35
	i64 6591024623626361694, ; 65: System.Web.Services.dll => 0x5b7805f9751a1b5e => 73
	i64 6659513131007730089, ; 66: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 40
	i64 6876862101832370452, ; 67: System.Xml.Linq => 0x5f6f85a57d108914 => 74
	i64 6894844156784520562, ; 68: System.Numerics.Vectors => 0x5faf683aead1ad72 => 16
	i64 7103753931438454322, ; 69: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 39
	i64 7488575175965059935, ; 70: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 74
	i64 7637365915383206639, ; 71: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 60
	i64 7654504624184590948, ; 72: System.Net.Http => 0x6a3a4366801b8264 => 70
	i64 7820441508502274321, ; 73: System.Data => 0x6c87ca1e14ff8111 => 63
	i64 7836164640616011524, ; 74: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 24
	i64 8044118961405839122, ; 75: System.ComponentModel.Composition => 0x6fa2739369944712 => 69
	i64 8083354569033831015, ; 76: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 42
	i64 8085230611270010360, ; 77: System.Net.Http.Json.dll => 0x703482674fdd05f8 => 14
	i64 8103644804370223335, ; 78: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 65
	i64 8122463700241992132, ; 79: ui_kit_mvvm.dll => 0x70b8c9b361edc9c4 => 0
	i64 8167236081217502503, ; 80: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8318905602908530212, ; 81: System.ComponentModel.DataAnnotations => 0x7372b092055ea624 => 76
	i64 8601935802264776013, ; 82: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 55
	i64 8626175481042262068, ; 83: Java.Interop => 0x77b654e585b55834 => 4
	i64 8684531736582871431, ; 84: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 68
	i64 9324707631942237306, ; 85: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 25
	i64 9662334977499516867, ; 86: System.Numerics.dll => 0x8617827802b0cfc3 => 15
	i64 9678050649315576968, ; 87: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 32
	i64 9808709177481450983, ; 88: Mono.Android.dll => 0x881f890734e555e7 => 8
	i64 9834056768316610435, ; 89: System.Transactions.dll => 0x8879968718899783 => 64
	i64 9998632235833408227, ; 90: Mono.Security => 0x8ac2470b209ebae3 => 77
	i64 10038780035334861115, ; 91: System.Net.Http.dll => 0x8b50e941206af13b => 70
	i64 10229024438826829339, ; 92: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 35
	i64 10430153318873392755, ; 93: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 33
	i64 10447083246144586668, ; 94: Microsoft.Bcl.AsyncInterfaces.dll => 0x90fb7edc816203ac => 5
	i64 10725508388639359286, ; 95: ui_kit_mvvm => 0x94d8a90da4524136 => 0
	i64 10847732767863316357, ; 96: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 26
	i64 11023048688141570732, ; 97: System.Core => 0x98f9bc61168392ac => 11
	i64 11037814507248023548, ; 98: System.Xml => 0x992e31d0412bf7fc => 21
	i64 11162124722117608902, ; 99: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 59
	i64 11340910727871153756, ; 100: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 34
	i64 11392833485892708388, ; 101: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 50
	i64 11529969570048099689, ; 102: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 59
	i64 11580057168383206117, ; 103: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 23
	i64 11597940890313164233, ; 104: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 105: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 39
	i64 11878390698512737345, ; 106: core.dll => 0xa4d88567e827e441 => 3
	i64 12102847907131387746, ; 107: System.Buffers => 0xa7f5f40c43256f62 => 10
	i64 12137774235383566651, ; 108: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 57
	i64 12145679461940342714, ; 109: System.Text.Json => 0xa88e1f1ebcb62fba => 20
	i64 12451044538927396471, ; 110: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 38
	i64 12466513435562512481, ; 111: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 47
	i64 12487638416075308985, ; 112: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 36
	i64 12538491095302438457, ; 113: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 30
	i64 12550732019250633519, ; 114: System.IO.Compression => 0xae2d28465e8e1b2f => 67
	i64 12700543734426720211, ; 115: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 31
	i64 12963446364377008305, ; 116: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 66
	i64 13370592475155966277, ; 117: System.Runtime.Serialization => 0xb98de304062ea945 => 71
	i64 13401370062847626945, ; 118: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 57
	i64 13454009404024712428, ; 119: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 62
	i64 13491513212026656886, ; 120: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 27
	i64 13572454107664307259, ; 121: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 51
	i64 13647894001087880694, ; 122: System.Data.dll => 0xbd670f48cb071df6 => 63
	i64 13959074834287824816, ; 123: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 38
	i64 14124974489674258913, ; 124: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 30
	i64 14172845254133543601, ; 125: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 49
	i64 14254549526787645812, ; 126: core => 0xc5d255455163e174 => 3
	i64 14261073672896646636, ; 127: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 50
	i64 14551742072151931844, ; 128: System.Text.Encodings.Web.dll => 0xc9f22c50f1b8fbc4 => 19
	i64 14644440854989303794, ; 129: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 48
	i64 14669215534098758659, ; 130: Microsoft.Extensions.DependencyInjection.dll => 0xcb9385ceb3993c03 => 7
	i64 14792063746108907174, ; 131: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 62
	i64 14852515768018889994, ; 132: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 34
	i64 14954917835170835695, ; 133: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xcf8a8a895a82ecef => 6
	i64 14987728460634540364, ; 134: System.IO.Compression.dll => 0xcfff1ba06622494c => 67
	i64 14988210264188246988, ; 135: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 36
	i64 15024878362326791334, ; 136: System.Net.Http.Json => 0xd0831743ebf0f4a6 => 14
	i64 15370334346939861994, ; 137: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 33
	i64 15391712275433856905, ; 138: Microsoft.Extensions.DependencyInjection.Abstractions => 0xd59a58c406411f89 => 6
	i64 15582737692548360875, ; 139: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 46
	i64 15609085926864131306, ; 140: System.dll => 0xd89e9cf3334914ea => 12
	i64 15777549416145007739, ; 141: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 53
	i64 15963349826457351533, ; 142: System.Threading.Tasks.Extensions => 0xdd893616f748b56d => 78
	i64 16154507427712707110, ; 143: System => 0xe03056ea4e39aa26 => 12
	i64 16565028646146589191, ; 144: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 69
	i64 16648892297579399389, ; 145: CommunityToolkit.Mvvm => 0xe70cbf55c4f508dd => 2
	i64 16822611501064131242, ; 146: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 65
	i64 16833383113903931215, ; 147: mscorlib => 0xe99c30c1484d7f4f => 9
	i64 17037200463775726619, ; 148: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 41
	i64 17187273293601214786, ; 149: System.ComponentModel.Annotations.dll => 0xee8575ff9aa89142 => 75
	i64 17544493274320527064, ; 150: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 28
	i64 17704177640604968747, ; 151: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 47
	i64 17710060891934109755, ; 152: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 45
	i64 17838668724098252521, ; 153: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 10
	i64 17928294245072900555, ; 154: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 68
	i64 18116111925905154859, ; 155: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 27
	i64 18129453464017766560, ; 156: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 72
	i64 18380184030268848184 ; 157: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 58
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [158 x i32] [
	i32 8, i32 31, i32 52, i32 53, i32 44, i32 66, i32 40, i32 37, ; 0..7
	i32 64, i32 77, i32 61, i32 26, i32 71, i32 24, i32 46, i32 41, ; 8..15
	i32 13, i32 25, i32 52, i32 5, i32 23, i32 2, i32 45, i32 78, ; 16..23
	i32 49, i32 29, i32 37, i32 73, i32 76, i32 43, i32 19, i32 17, ; 24..31
	i32 32, i32 56, i32 18, i32 22, i32 21, i32 9, i32 7, i32 17, ; 32..39
	i32 61, i32 42, i32 16, i32 54, i32 15, i32 18, i32 1, i32 51, ; 40..47
	i32 13, i32 72, i32 58, i32 75, i32 28, i32 22, i32 54, i32 60, ; 48..55
	i32 48, i32 56, i32 55, i32 11, i32 20, i32 44, i32 43, i32 29, ; 56..63
	i32 35, i32 73, i32 40, i32 74, i32 16, i32 39, i32 74, i32 60, ; 64..71
	i32 70, i32 63, i32 24, i32 69, i32 42, i32 14, i32 65, i32 0, ; 72..79
	i32 4, i32 76, i32 55, i32 4, i32 68, i32 25, i32 15, i32 32, ; 80..87
	i32 8, i32 64, i32 77, i32 70, i32 35, i32 33, i32 5, i32 0, ; 88..95
	i32 26, i32 11, i32 21, i32 59, i32 34, i32 50, i32 59, i32 23, ; 96..103
	i32 1, i32 39, i32 3, i32 10, i32 57, i32 20, i32 38, i32 47, ; 104..111
	i32 36, i32 30, i32 67, i32 31, i32 66, i32 71, i32 57, i32 62, ; 112..119
	i32 27, i32 51, i32 63, i32 38, i32 30, i32 49, i32 3, i32 50, ; 120..127
	i32 19, i32 48, i32 7, i32 62, i32 34, i32 6, i32 67, i32 36, ; 128..135
	i32 14, i32 33, i32 6, i32 46, i32 12, i32 53, i32 78, i32 12, ; 136..143
	i32 69, i32 2, i32 65, i32 9, i32 41, i32 75, i32 28, i32 47, ; 144..151
	i32 45, i32 10, i32 68, i32 27, i32 72, i32 58 ; 152..157
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
