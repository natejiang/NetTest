cls
@echo off
echo.
echo          **********************************************
echo          *                ������� v1.0               *
echo          **********************************************
echo.
set /p str1=������������Ե���ַ��IP��ַ: 
echo ���Ժ򡭡�
del Result.txt
echo Time:%date% %time% >>Result.txt
ipconfig -all >>Result.txt
ping %str1% -n 20 >>Result.txt
tracert %str1% >>Result.txt
set /p str2=������������������ϵ��ʽ,�Ա�������������ϵ:
echo Name and Tel:%str2% >>Result.txt
@echo off
blat -install smtp.mail.cttbj.com jiangnan@cttbj.com -u jiangnan -pw nannanaiweiwei
blat Result.txt -to jiangnan@cttbj.com -subject "Result" -charset gb2312
echo лл���ĺ���,���ǻᾡ��������ϵ:)
echo �����������   
set /p info= 
