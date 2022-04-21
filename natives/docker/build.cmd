@echo off
echo #################################
echo #                               #
echo # RECOMMAND TO USING APT MIRROR #
echo #      CHEK THE DOCKERFILE      #
echo #                               #
echo #################################

docker build -t lavaplayer-native-build-env-linux .
docker volume create lavaplayer-native-build-env-linux
docker run --rm -ti -v %CD%\..\..:/build -v lavaplayer-native-build-env-linux:/root/.gradle lavaplayer-native-build-env-linux