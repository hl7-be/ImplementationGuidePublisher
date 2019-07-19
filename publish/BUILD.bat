@echo off
rem Prepare files
IF NOT EXIST ..\PortableJekyll\ GOTO BUILD
echo Jekyll Portable
SET PATH=%~dp0PortableJekyll\ruby\bin;%~dp0PortableJekyll\devkit\bin;%~dp0PortableJekyll\git\bin;%~dp0PortableJekyll\devkit\mingw\bin;%~dp0PortableJekyll\curl\bin;%~dp0PortableJekyll\winscp;%PATH%;
SET SSL_CERT_FILE=%~dp0PortableJekyll\curl\bin
SET SSL_CERT_FILE=%~dp0PortableJekyll\curl\bin\cacert.pem

:BUILD
SET JAVA_TOOL_OPTIONS=-Dfile.encoding=UTF-8
java -jar framework\ant\ant-launcher.jar -buildfile framework/build.xml -DigRoot=%1%
echo pause