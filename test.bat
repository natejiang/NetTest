cls
@echo off
echo.
echo          **********************************************
echo          *                网络测试 v1.0               *
echo          **********************************************
echo.
set /p str1=请输入你想测试的网址或IP地址: 
echo 请稍候……
del Result.txt
echo Time:%date% %time% >>Result.txt
ipconfig -all >>Result.txt
ping %str1% -n 20 >>Result.txt
tracert %str1% >>Result.txt
set /p str2=请输入您的姓名及联系方式,以便于我们与您联系:
echo Name and Tel:%str2% >>Result.txt
@echo off
blat -install smtp.mail.cttbj.com jiangnan@cttbj.com -u jiangnan -pw nannanaiweiwei
blat Result.txt -to jiangnan@cttbj.com -subject "Result" -charset gb2312
echo 谢谢您的合作,我们会尽快与您联系:)
echo 按任意键结束   
set /p info= 
