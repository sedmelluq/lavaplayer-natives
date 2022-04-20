@echo off
docker run --rm -ti -v %CD%\..\..:/build -v %CD%\cache:/root/.gradle lavaplayer-native-build-env-linux