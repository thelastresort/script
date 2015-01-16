
# 声明渠道
declare -a channels=(103 102 101)

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
    cp build/apk/a-release_1.3.1_131.apk build/a-release_1.3.1_131_${channel}.apk
    rm build/apk/*


done
