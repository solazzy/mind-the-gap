@echo off
echo.
echo [信息] 使用Jar命令运行Monitor工程。
echo.

cd %~dp0
cd ../mind-the-gap-visual/mind-the-gap-monitor/target

set JAVA_OPTS=-Xms512m -Xmx1024m -XX:MetaspaceSize=128m -XX:MaxMetaspaceSize=512m

java -Dfile.encoding=utf-8 %JAVA_OPTS% -jar mind-the-gap-visual-monitor.jar

cd bin
pause