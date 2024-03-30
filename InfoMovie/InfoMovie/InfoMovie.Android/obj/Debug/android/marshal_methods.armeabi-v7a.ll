; ModuleID = 'obj/Debug/android/marshal_methods.armeabi-v7a.ll'
source_filename = "obj/Debug/android/marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [282 x i32] [
	i32 26230656, ; 0: Microsoft.Extensions.DependencyModel => 0x1903f80 => 24
	i32 32687329, ; 1: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 83
	i32 34715100, ; 2: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 115
	i32 39109920, ; 3: Newtonsoft.Json.dll => 0x254c520 => 31
	i32 57263871, ; 4: Xamarin.Forms.Core.dll => 0x369c6ff => 110
	i32 101534019, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 99
	i32 117431740, ; 6: System.Runtime.InteropServices => 0x6ffddbc => 136
	i32 120558881, ; 7: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 99
	i32 134690465, ; 8: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 119
	i32 159306688, ; 9: System.ComponentModel.Annotations => 0x97ed3c0 => 132
	i32 165246403, ; 10: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 60
	i32 182336117, ; 11: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 101
	i32 209399409, ; 12: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 58
	i32 220171995, ; 13: System.Diagnostics.Debug => 0xd1f8edb => 6
	i32 230216969, ; 14: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 77
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 130
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 63
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 81
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 75
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 50
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 42
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 79
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 34
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 41
	i32 441335492, ; 24: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 62
	i32 442521989, ; 25: Xamarin.Essentials => 0x1a605985 => 109
	i32 442565967, ; 26: System.Collections => 0x1a61054f => 4
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 74
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 30
	i32 469710990, ; 29: System.dll => 0x1bff388e => 40
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 75
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 87
	i32 513247710, ; 32: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 28
	i32 526420162, ; 33: System.Transactions.dll => 0x1f6088c2 => 124
	i32 527452488, ; 34: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 119
	i32 539058512, ; 35: Microsoft.Extensions.Logging => 0x20216150 => 26
	i32 545304856, ; 36: System.Runtime.Extensions => 0x2080b118 => 138
	i32 548916678, ; 37: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 12
	i32 605376203, ; 38: System.IO.Compression.FileSystem => 0x24154ecb => 128
	i32 627609679, ; 39: Xamarin.AndroidX.CustomView => 0x2568904f => 68
	i32 639843206, ; 40: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 73
	i32 662205335, ; 41: System.Text.Encodings.Web.dll => 0x27787397 => 46
	i32 663517072, ; 42: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 106
	i32 666292255, ; 43: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 55
	i32 672442732, ; 44: System.Collections.Concurrent => 0x2814a96c => 3
	i32 690569205, ; 45: System.Xml.Linq.dll => 0x29293ff5 => 49
	i32 691348768, ; 46: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 121
	i32 700284507, ; 47: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 116
	i32 720511267, ; 48: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 120
	i32 748832960, ; 49: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 32
	i32 775507847, ; 50: System.IO.Compression => 0x2e394f87 => 127
	i32 789151979, ; 51: Microsoft.Extensions.Options => 0x2f0980eb => 27
	i32 809851609, ; 52: System.Drawing.Common.dll => 0x30455ad9 => 126
	i32 843511501, ; 53: Xamarin.AndroidX.Print => 0x3246f6cd => 94
	i32 928116545, ; 54: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 115
	i32 955402788, ; 55: Newtonsoft.Json => 0x38f24a24 => 31
	i32 956575887, ; 56: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 120
	i32 967690846, ; 57: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 79
	i32 974778368, ; 58: FormsViewGroup.dll => 0x3a19f000 => 9
	i32 975236339, ; 59: System.Diagnostics.Tracing => 0x3a20ecf3 => 134
	i32 992768348, ; 60: System.Collections.dll => 0x3b2c715c => 4
	i32 1012816738, ; 61: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 98
	i32 1028951442, ; 62: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 22
	i32 1035644815, ; 63: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 54
	i32 1042160112, ; 64: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 112
	i32 1052210849, ; 65: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 84
	i32 1084122840, ; 66: Xamarin.Kotlin.StdLib => 0x409e66d8 => 118
	i32 1094987527, ; 67: InfoMovie.dll => 0x41442f07 => 10
	i32 1098259244, ; 68: System => 0x41761b2c => 40
	i32 1099692271, ; 69: Microsoft.DotNet.PlatformAbstractions => 0x418bf8ef => 14
	i32 1157931901, ; 70: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 15
	i32 1175144683, ; 71: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 104
	i32 1178241025, ; 72: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 91
	i32 1202000627, ; 73: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 15
	i32 1204270330, ; 74: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 55
	i32 1204575371, ; 75: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 20
	i32 1264511973, ; 76: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 100
	i32 1267360935, ; 77: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 105
	i32 1275534314, ; 78: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 121
	i32 1292207520, ; 79: SQLitePCLRaw.core.dll => 0x4d0585a0 => 33
	i32 1293217323, ; 80: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 70
	i32 1365406463, ; 81: System.ServiceModel.Internals.dll => 0x516272ff => 131
	i32 1376866003, ; 82: Xamarin.AndroidX.SavedState => 0x52114ed3 => 98
	i32 1379779777, ; 83: System.Resources.ResourceManager => 0x523dc4c1 => 2
	i32 1395857551, ; 84: Xamarin.AndroidX.Media.dll => 0x5333188f => 88
	i32 1406073936, ; 85: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 64
	i32 1411638395, ; 86: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 44
	i32 1457743152, ; 87: System.Runtime.Extensions.dll => 0x56e36530 => 138
	i32 1460219004, ; 88: Xamarin.Forms.Xaml => 0x57092c7c => 113
	i32 1461234159, ; 89: System.Collections.Immutable.dll => 0x5718a9ef => 37
	i32 1462112819, ; 90: System.IO.Compression.dll => 0x57261233 => 127
	i32 1469204771, ; 91: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 53
	i32 1470490898, ; 92: Microsoft.Extensions.Primitives => 0x57a5e912 => 28
	i32 1479771757, ; 93: System.Collections.Immutable => 0x5833866d => 37
	i32 1490351284, ; 94: Microsoft.Data.Sqlite.dll => 0x58d4f4b4 => 13
	i32 1582372066, ; 95: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 69
	i32 1592978981, ; 96: System.Runtime.Serialization.dll => 0x5ef2ee25 => 8
	i32 1622152042, ; 97: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 86
	i32 1624863272, ; 98: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 108
	i32 1635184631, ; 99: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 73
	i32 1636350590, ; 100: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 67
	i32 1639515021, ; 101: System.Net.Http.dll => 0x61b9038d => 7
	i32 1657153582, ; 102: System.Runtime => 0x62c6282e => 45
	i32 1658241508, ; 103: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 102
	i32 1658251792, ; 104: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 114
	i32 1670060433, ; 105: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 63
	i32 1688112883, ; 106: Microsoft.Data.Sqlite => 0x649e8ef3 => 13
	i32 1689493916, ; 107: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 16
	i32 1698840827, ; 108: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 117
	i32 1701541528, ; 109: System.Diagnostics.Debug.dll => 0x656b7698 => 6
	i32 1711441057, ; 110: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 34
	i32 1726116996, ; 111: System.Reflection.dll => 0x66e27484 => 135
	i32 1729485958, ; 112: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 59
	i32 1766324549, ; 113: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 101
	i32 1770582343, ; 114: Microsoft.Extensions.Logging.dll => 0x6988f147 => 26
	i32 1776026572, ; 115: System.Core.dll => 0x69dc03cc => 38
	i32 1788241197, ; 116: Xamarin.AndroidX.Fragment => 0x6a96652d => 74
	i32 1796167890, ; 117: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 12
	i32 1808609942, ; 118: Xamarin.AndroidX.Loader => 0x6bcd3296 => 86
	i32 1813058853, ; 119: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 118
	i32 1813201214, ; 120: Xamarin.Google.Android.Material => 0x6c13413e => 114
	i32 1818569960, ; 121: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 92
	i32 1828688058, ; 122: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 25
	i32 1867746548, ; 123: Xamarin.Essentials.dll => 0x6f538cf4 => 109
	i32 1878053835, ; 124: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 113
	i32 1885316902, ; 125: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 56
	i32 1886040351, ; 126: Microsoft.EntityFrameworkCore.Sqlite.dll => 0x706ab11f => 18
	i32 1894524299, ; 127: Microsoft.DotNet.PlatformAbstractions.dll => 0x70ec258b => 14
	i32 1900610850, ; 128: System.Resources.ResourceManager.dll => 0x71490522 => 2
	i32 1919157823, ; 129: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 89
	i32 1983156543, ; 130: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 117
	i32 2011961780, ; 131: System.Buffers.dll => 0x77ec19b4 => 36
	i32 2014489277, ; 132: Microsoft.EntityFrameworkCore.Sqlite => 0x7812aabd => 18
	i32 2019465201, ; 133: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 84
	i32 2055257422, ; 134: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 80
	i32 2079903147, ; 135: System.Runtime.dll => 0x7bf8cdab => 45
	i32 2090596640, ; 136: System.Numerics.Vectors => 0x7c9bf920 => 43
	i32 2097448633, ; 137: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 76
	i32 2103459038, ; 138: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 35
	i32 2126786730, ; 139: Xamarin.Forms.Platform.Android => 0x7ec430aa => 111
	i32 2181898931, ; 140: Microsoft.Extensions.Options.dll => 0x820d22b3 => 27
	i32 2192057212, ; 141: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 25
	i32 2197979891, ; 142: Microsoft.Extensions.DependencyModel.dll => 0x830282f3 => 24
	i32 2201107256, ; 143: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 122
	i32 2201231467, ; 144: System.Net.Http => 0x8334206b => 7
	i32 2217644978, ; 145: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 104
	i32 2244775296, ; 146: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 87
	i32 2252897993, ; 147: Microsoft.EntityFrameworkCore => 0x86487ec9 => 16
	i32 2256548716, ; 148: Xamarin.AndroidX.MultiDex => 0x8680336c => 89
	i32 2261435625, ; 149: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 78
	i32 2266799131, ; 150: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 21
	i32 2279755925, ; 151: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 96
	i32 2315684594, ; 152: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 51
	i32 2403452196, ; 153: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 72
	i32 2409053734, ; 154: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 93
	i32 2435904999, ; 155: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 133
	i32 2465273461, ; 156: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 32
	i32 2465532216, ; 157: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 62
	i32 2471841756, ; 158: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 159: Java.Interop.dll => 0x93918882 => 11
	i32 2490993605, ; 160: System.AppContext.dll => 0x94798bc5 => 137
	i32 2501346920, ; 161: System.Data.DataSetExtensions => 0x95178668 => 125
	i32 2505896520, ; 162: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 83
	i32 2570120770, ; 163: System.Text.Encodings.Web => 0x9930ee42 => 46
	i32 2581819634, ; 164: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 105
	i32 2582911366, ; 165: InfoMovie => 0x99f41986 => 10
	i32 2605712449, ; 166: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 122
	i32 2620871830, ; 167: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 67
	i32 2624644809, ; 168: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 71
	i32 2633051222, ; 169: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 81
	i32 2634653062, ; 170: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 17
	i32 2701096212, ; 171: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 102
	i32 2732626843, ; 172: Xamarin.AndroidX.Activity => 0xa2e0939b => 50
	i32 2737747696, ; 173: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 53
	i32 2766581644, ; 174: Xamarin.Forms.Core => 0xa4e6af8c => 110
	i32 2770495804, ; 175: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 116
	i32 2778768386, ; 176: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 107
	i32 2779977773, ; 177: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 97
	i32 2810250172, ; 178: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 64
	i32 2819470561, ; 179: System.Xml.dll => 0xa80db4e1 => 48
	i32 2821294376, ; 180: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 97
	i32 2847789619, ; 181: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 17
	i32 2853208004, ; 182: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 107
	i32 2855708567, ; 183: Xamarin.AndroidX.Transition => 0xaa36a797 => 103
	i32 2901442782, ; 184: System.Reflection => 0xacf080de => 135
	i32 2903344695, ; 185: System.ComponentModel.Composition => 0xad0d8637 => 129
	i32 2905242038, ; 186: mscorlib.dll => 0xad2a79b6 => 30
	i32 2916838712, ; 187: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 108
	i32 2919462931, ; 188: System.Numerics.Vectors.dll => 0xae037813 => 43
	i32 2921128767, ; 189: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 52
	i32 2978675010, ; 190: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 70
	i32 2996846495, ; 191: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 82
	i32 3016983068, ; 192: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 100
	i32 3024354802, ; 193: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 77
	i32 3044182254, ; 194: FormsViewGroup => 0xb57288ee => 9
	i32 3057625584, ; 195: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 90
	i32 3069363400, ; 196: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 19
	i32 3111772706, ; 197: System.Runtime.Serialization => 0xb979e222 => 8
	i32 3124832203, ; 198: System.Threading.Tasks.Extensions => 0xba4127cb => 140
	i32 3147165239, ; 199: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 134
	i32 3195844289, ; 200: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 19
	i32 3204380047, ; 201: System.Data.dll => 0xbefef58f => 123
	i32 3211777861, ; 202: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 69
	i32 3220365878, ; 203: System.Threading => 0xbff2e236 => 5
	i32 3247949154, ; 204: Mono.Security => 0xc197c562 => 139
	i32 3258312781, ; 205: Xamarin.AndroidX.CardView => 0xc235e84d => 59
	i32 3265893370, ; 206: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 140
	i32 3267021929, ; 207: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 57
	i32 3280506390, ; 208: System.ComponentModel.Annotations.dll => 0xc3888e16 => 132
	i32 3317135071, ; 209: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 68
	i32 3317144872, ; 210: System.Data => 0xc5b79d28 => 123
	i32 3340431453, ; 211: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 56
	i32 3345895724, ; 212: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 95
	i32 3346324047, ; 213: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 91
	i32 3353484488, ; 214: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 76
	i32 3358260929, ; 215: System.Text.Json => 0xc82afec1 => 47
	i32 3360279109, ; 216: SQLitePCLRaw.core => 0xc849ca45 => 33
	i32 3362522851, ; 217: Xamarin.AndroidX.Core => 0xc86c06e3 => 66
	i32 3366347497, ; 218: Java.Interop => 0xc8a662e9 => 11
	i32 3374999561, ; 219: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 96
	i32 3395150330, ; 220: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 44
	i32 3404865022, ; 221: System.ServiceModel.Internals => 0xcaf21dfe => 131
	i32 3428513518, ; 222: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 23
	i32 3429136800, ; 223: System.Xml => 0xcc6479a0 => 48
	i32 3430777524, ; 224: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 225: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 71
	i32 3476120550, ; 226: Mono.Android => 0xcf3163e6 => 29
	i32 3485117614, ; 227: System.Text.Json.dll => 0xcfbaacae => 47
	i32 3486566296, ; 228: System.Transactions => 0xcfd0c798 => 124
	i32 3493954962, ; 229: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 61
	i32 3501239056, ; 230: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 57
	i32 3509114376, ; 231: System.Xml.Linq => 0xd128d608 => 49
	i32 3536029504, ; 232: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 111
	i32 3567349600, ; 233: System.ComponentModel.Composition.dll => 0xd4a16f60 => 129
	i32 3618140916, ; 234: Xamarin.AndroidX.Preference => 0xd7a872f4 => 93
	i32 3627220390, ; 235: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 94
	i32 3632359727, ; 236: Xamarin.Forms.Platform => 0xd881692f => 112
	i32 3633644679, ; 237: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 52
	i32 3641597786, ; 238: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 80
	i32 3645089577, ; 239: System.ComponentModel.DataAnnotations => 0xd943a729 => 133
	i32 3657292374, ; 240: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 21
	i32 3672681054, ; 241: Mono.Android.dll => 0xdae8aa5e => 29
	i32 3676310014, ; 242: System.Web.Services.dll => 0xdb2009fe => 130
	i32 3682565725, ; 243: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 58
	i32 3684561358, ; 244: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 61
	i32 3689375977, ; 245: System.Drawing.Common => 0xdbe768e9 => 126
	i32 3704332502, ; 246: InfoMovie.Android => 0xdccba0d6 => 0
	i32 3706696989, ; 247: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 65
	i32 3718780102, ; 248: Xamarin.AndroidX.Annotation => 0xdda814c6 => 51
	i32 3724971120, ; 249: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 90
	i32 3748608112, ; 250: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 39
	i32 3754567612, ; 251: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 35
	i32 3758932259, ; 252: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 78
	i32 3786282454, ; 253: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 60
	i32 3822602673, ; 254: Xamarin.AndroidX.Media => 0xe3d849b1 => 88
	i32 3829621856, ; 255: System.Numerics.dll => 0xe4436460 => 42
	i32 3841636137, ; 256: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 22
	i32 3849253459, ; 257: System.Runtime.InteropServices.dll => 0xe56ef253 => 136
	i32 3870553226, ; 258: InfoMovie.Android.dll => 0xe6b3f48a => 0
	i32 3885922214, ; 259: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 103
	i32 3888767677, ; 260: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 95
	i32 3896106733, ; 261: System.Collections.Concurrent.dll => 0xe839deed => 3
	i32 3896760992, ; 262: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 66
	i32 3920810846, ; 263: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 128
	i32 3921031405, ; 264: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 106
	i32 3931092270, ; 265: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 92
	i32 3945713374, ; 266: System.Data.DataSetExtensions.dll => 0xeb2ecede => 125
	i32 3955647286, ; 267: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 54
	i32 3959773229, ; 268: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 82
	i32 4025784931, ; 269: System.Memory => 0xeff49a63 => 41
	i32 4073602200, ; 270: System.Threading.dll => 0xf2ce3c98 => 5
	i32 4101593132, ; 271: Xamarin.AndroidX.Emoji2 => 0xf479582c => 72
	i32 4101842092, ; 272: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 20
	i32 4105002889, ; 273: Mono.Security.dll => 0xf4ad5f89 => 139
	i32 4126470640, ; 274: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 23
	i32 4130442656, ; 275: System.AppContext => 0xf6318da0 => 137
	i32 4151237749, ; 276: System.Core => 0xf76edc75 => 38
	i32 4182413190, ; 277: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 85
	i32 4213026141, ; 278: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 39
	i32 4256097574, ; 279: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 65
	i32 4260525087, ; 280: System.Buffers => 0xfdf2741f => 36
	i32 4292120959 ; 281: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 85
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [282 x i32] [
	i32 24, i32 83, i32 115, i32 31, i32 110, i32 99, i32 136, i32 99, ; 0..7
	i32 119, i32 132, i32 60, i32 101, i32 58, i32 6, i32 77, i32 130, ; 8..15
	i32 63, i32 81, i32 75, i32 50, i32 42, i32 79, i32 34, i32 41, ; 16..23
	i32 62, i32 109, i32 4, i32 74, i32 30, i32 40, i32 75, i32 87, ; 24..31
	i32 28, i32 124, i32 119, i32 26, i32 138, i32 12, i32 128, i32 68, ; 32..39
	i32 73, i32 46, i32 106, i32 55, i32 3, i32 49, i32 121, i32 116, ; 40..47
	i32 120, i32 32, i32 127, i32 27, i32 126, i32 94, i32 115, i32 31, ; 48..55
	i32 120, i32 79, i32 9, i32 134, i32 4, i32 98, i32 22, i32 54, ; 56..63
	i32 112, i32 84, i32 118, i32 10, i32 40, i32 14, i32 15, i32 104, ; 64..71
	i32 91, i32 15, i32 55, i32 20, i32 100, i32 105, i32 121, i32 33, ; 72..79
	i32 70, i32 131, i32 98, i32 2, i32 88, i32 64, i32 44, i32 138, ; 80..87
	i32 113, i32 37, i32 127, i32 53, i32 28, i32 37, i32 13, i32 69, ; 88..95
	i32 8, i32 86, i32 108, i32 73, i32 67, i32 7, i32 45, i32 102, ; 96..103
	i32 114, i32 63, i32 13, i32 16, i32 117, i32 6, i32 34, i32 135, ; 104..111
	i32 59, i32 101, i32 26, i32 38, i32 74, i32 12, i32 86, i32 118, ; 112..119
	i32 114, i32 92, i32 25, i32 109, i32 113, i32 56, i32 18, i32 14, ; 120..127
	i32 2, i32 89, i32 117, i32 36, i32 18, i32 84, i32 80, i32 45, ; 128..135
	i32 43, i32 76, i32 35, i32 111, i32 27, i32 25, i32 24, i32 122, ; 136..143
	i32 7, i32 104, i32 87, i32 16, i32 89, i32 78, i32 21, i32 96, ; 144..151
	i32 51, i32 72, i32 93, i32 133, i32 32, i32 62, i32 1, i32 11, ; 152..159
	i32 137, i32 125, i32 83, i32 46, i32 105, i32 10, i32 122, i32 67, ; 160..167
	i32 71, i32 81, i32 17, i32 102, i32 50, i32 53, i32 110, i32 116, ; 168..175
	i32 107, i32 97, i32 64, i32 48, i32 97, i32 17, i32 107, i32 103, ; 176..183
	i32 135, i32 129, i32 30, i32 108, i32 43, i32 52, i32 70, i32 82, ; 184..191
	i32 100, i32 77, i32 9, i32 90, i32 19, i32 8, i32 140, i32 134, ; 192..199
	i32 19, i32 123, i32 69, i32 5, i32 139, i32 59, i32 140, i32 57, ; 200..207
	i32 132, i32 68, i32 123, i32 56, i32 95, i32 91, i32 76, i32 47, ; 208..215
	i32 33, i32 66, i32 11, i32 96, i32 44, i32 131, i32 23, i32 48, ; 216..223
	i32 1, i32 71, i32 29, i32 47, i32 124, i32 61, i32 57, i32 49, ; 224..231
	i32 111, i32 129, i32 93, i32 94, i32 112, i32 52, i32 80, i32 133, ; 232..239
	i32 21, i32 29, i32 130, i32 58, i32 61, i32 126, i32 0, i32 65, ; 240..247
	i32 51, i32 90, i32 39, i32 35, i32 78, i32 60, i32 88, i32 42, ; 248..255
	i32 22, i32 136, i32 0, i32 103, i32 95, i32 3, i32 66, i32 128, ; 256..263
	i32 106, i32 92, i32 125, i32 54, i32 82, i32 41, i32 5, i32 72, ; 264..271
	i32 20, i32 139, i32 23, i32 137, i32 38, i32 85, i32 39, i32 65, ; 272..279
	i32 36, i32 85 ; 280..281
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
