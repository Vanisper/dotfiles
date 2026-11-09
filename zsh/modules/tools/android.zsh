export ANDROID_HOME="$HOME/.env/android_sdk"
# Android cmdline-tools
path_prepend "$ANDROID_HOME/cmdline-tools/latest/bin"
# Android build-tools
path_prepend "$ANDROID_HOME/build-tools/36.0.0"
# Android platform-tools
path_prepend "$ANDROID_HOME/platform-tools"

# apktool
path_prepend "$HOME/.env/apktool"
# smali / baksmali
path_prepend "$HOME/.env/smali"
