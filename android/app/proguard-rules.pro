# Flutter wrappers
-keep class io.flutter.** { *; }
-keep class io.flutter.plugins.** { *; }

# Flutter Play Store split / deferred components (not used, suppress R8 warnings)
-dontwarn com.google.android.play.core.**
-dontwarn io.flutter.embedding.android.FlutterPlayStoreSplitApplication
-dontwarn io.flutter.embedding.engine.deferredcomponents.**

# Kotlin
-keep class kotlin.** { *; }
-keep class kotlinx.** { *; }

# Dio / OkHttp
-keep class okhttp3.** { *; }
-keep class okio.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**

# JSON / Annotations
-keepattributes *Annotation*
-keepattributes Signature
-keepattributes InnerClasses
-keepattributes EnclosingMethod

# Google Sign-In
-keep class com.google.android.gms.** { *; }
-dontwarn com.google.android.gms.**

# Audio service
-keep class com.ryanheise.** { *; }
-dontwarn com.ryanheise.**

# Local notifications
-keep class com.dexterous.** { *; }
-dontwarn com.dexterous.**

# Geolocator
-keep class com.baseflow.** { *; }
-dontwarn com.baseflow.**

# Remove debug log calls in release
-assumenosideeffects class android.util.Log {
    public static boolean isLoggable(java.lang.String, int);
    public static int v(...);
    public static int d(...);
    public static int i(...);
}
