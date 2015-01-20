
# 使用说明
# 1、把AndroidManifest.xml替换渠道号为字符串 TD_CHANNEL_ID_VALUE
# 2、声明渠道，在下面的channels.
# 3、声明版本号，在下面的 versionName versionCode
# 4、执行 ./xxbatch.sh (会在build生产各种渠道的包)


# 获取当前目录的文件夹名字
cur_dir_name=${PWD##*/}


# 定义version code和version name
version_name=1.3.1
version_code=131
# echo ${version_name}
# echo ${version_code}


# 拷贝android manifest都模板
cp AndroidManifest.xml tmp.xml


# 声明渠道
declare -a channels=(100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126 127 128 129 130)


# 循环进入渠道打包
for channel in ${channels[@]}
do
echo $channel

# 把manifest的渠道号替换
rm AndroidManifest.xml
sed "s/TD_CHANNEL_ID_VALUE/${channel}/g" tmp.xml > AndroidManifest.xml

# 进行编译
gradle xx

# 把打包好的拷贝放好
cp build/apk/${cur_dir_name}-release_${version_name}_${version_code}.apk build/${cur_dir_name}-release_${version_name}_${version_code}_${channel}.apk
rm build/apk/*

done

# 删除tmp.xml
rm tmp.xml