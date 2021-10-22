# libcxx Prefab

Prefab package for <https://github.com/topjohnwu/libcxx>.

## Integration

This is a [Prefab](https://google.github.io/prefab/) library, so you will need to enable it in your project (requires Android Gradle Plugin 4.1+):

```gradle
android {
    ...
    buildFeatures {
        ...
        prefab true
    }
}
```

Add dependency:

```gradle
repositories {
    mavenCentral()
}

dependencies {
    implementation 'dev.rikka.ndk.thirdparty:cxx:1.2.0'
}
```

## Usage

### ndk-build

```makefile
# Remove original stl
APP_STL=none
```

```makefile
LOCAL_STATIC_LIBRARIES := cxx

# You can remove this block if you are using NDK r21+.
ifneq ($(call ndk-major-at-least,21),true)
    $(call import-add-path,$(NDK_GRADLE_INJECTED_IMPORT_PATH))
endif

$(call import-module,prefab/cxx)
```

### CMake

```gradle
android {
    defaultConfig {
        externalNativeBuild {
            cmake {
                // Remove original stl
                arguments '-DANDROID_STL=none'

```

```cmake
find_package(cxx REQUIRED CONFIG)
target_link_libraries(<your lib> cxx::cxx)
```
