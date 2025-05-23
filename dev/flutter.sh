#!/bin/bash

set -ex

echo "Installing Android Studio..."

wget https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2024.3.2.14/android-studio-2024.3.2.14-linux.tar.gz -q -O android-studio.tar.gz

rm -rf ~/android-studio
tar -C ~/ -xzf android-studio.tar.gz

rm android-studio.tar.gz

echo "Installing Flutter SDK..."

wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.29.0-stable.tar.xz -q -O flutter.tar.xz

rm -rf ~/flutter
tar -C ~ -xJf flutter.tar.xz

rm flutter.tar.xz

