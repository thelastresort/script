#!/bin/bash

#
# 这是一个能够帮忙改变as配置以便动态设置sdk版本和buildTool版本的脚本
# 对应项目的build.gradle内容改成如下
# compileSdkVersion System.getenv('ANDROID_SDK_VERSION') == null ? 22 : Integer.parseInt(System.getenv('ANDROID_SDK_VERSION'))
# buildToolsVersion System.getenv('ANDROID_BUILD_TOOLS_VERSION') == null ? "22.0.1" : System.getenv('ANDROID_BUILD_TOOLS_VERSION')
# 脚本内的ANDROID_SDK_VERSION, ANDROID_BUILD_TOOLS_VERSION可根据需要自己配置
cd /Applications
cd "Android Studio.app"
cd Contents
sed -i "" "s#<key>CFBundleDevelopmentRegion<\/key>#<key>LSEnvironment<\/key><dict><key>ANDROID_SDK_VERSION<\/key><string>22<\/string><key>ANDROID_BUILD_TOOLS_VERSION<\/key><string>22.0.1<\/string><\/dict><key>CFBundleDevelopmentRegion<\/key>#g" Info.plist
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -v -f "/Applications/Android Studio.app"

