set -e

echo "Build Dir: $(pwd)"

echo "---"
ls -l
echo "---"

export PATH="$PATH:/opt/flutter/bin"

flutter create .
flutter pub run build_runner build
flutter build web
