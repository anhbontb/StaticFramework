rm -r ./Carthage/Build/iOS/
carthage update --platform iOS --no-use-binaries --no-build
sh ./carthage-build-static.sh --platform ios
