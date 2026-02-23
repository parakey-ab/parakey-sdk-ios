TARGET="/tmp/sdk-build"
CURRENT_COMMIT=$(git rev-parse HEAD)

rm -fr $TARGET
git clone git@github.com:parakey-ab/parakey-sdk-react-native.git $TARGET
cd $TARGET

yarn
cd example/ios
sed -i '' "s/:tag => '[^']*'/:commit => '$CURRENT_COMMIT'/" Podfile
rm Podfile.lock
pod install
cd ..
bundle install
npx react-native build-ios
