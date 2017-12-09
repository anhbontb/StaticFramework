
#!/bin/sh -e

xcconfig=$(mktemp /tmp/static.xcconfig.XXXXXX)
trap 'rm -f "$xcconfig"' INT TERM HUP EXIT

echo "LD = $PWD/./ld.py" >> $xcconfig
echo "ARCHS = x86_64 i386 arm64 armv7 armv7s" >> $xcconfig
echo "DEBUG_INFORMATION_FORMAT = dwarf" >> $xcconfig
echo "IPHONEOS_DEPLOYMENT_TARGET = 8.0" >> $xcconfig
echo "ENABLE_BITCODE = NO" >> $xcconfig

export XCODE_XCCONFIG_FILE="$xcconfig"

carthage build "$@"

