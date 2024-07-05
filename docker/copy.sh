#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20231130.sql ./mysql/db
cp ../sql/ry_config_20231204.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../mind-the-gap-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy mind-the-gap-gateway "
cp ../mind-the-gap-gateway/target/mind-the-gap-gateway.jar ./ruoyi/gateway/jar

echo "begin copy mind-the-gap-auth "
cp ../mind-the-gap-auth/target/mind-the-gap-auth.jar ./ruoyi/auth/jar

echo "begin copy mind-the-gap-visual "
cp ../mind-the-gap-visual/mind-the-gap-monitor/target/mind-the-gap-visual-monitor.jar  ./ruoyi/visual/monitor/jar

echo "begin copy mind-the-gap-modules-system "
cp ../mind-the-gap-modules/mind-the-gap-system/target/mind-the-gap-modules-system.jar ./ruoyi/modules/system/jar

echo "begin copy mind-the-gap-modules-file "
cp ../mind-the-gap-modules/mind-the-gap-file/target/mind-the-gap-modules-file.jar ./ruoyi/modules/file/jar

echo "begin copy mind-the-gap-modules-job "
cp ../mind-the-gap-modules/mind-the-gap-job/target/mind-the-gap-modules-job.jar ./ruoyi/modules/job/jar

echo "begin copy mind-the-gap-modules-gen "
cp ../mind-the-gap-modules/mind-the-gap-gen/target/mind-the-gap-modules-gen.jar ./ruoyi/modules/gen/jar

