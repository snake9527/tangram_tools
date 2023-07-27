# tangram_tools
[简体中文](README_CHS.md) | English
## label_check
Check the Label number of JSON file in the directory. If the image does not have a corresponding JSON, the number is 0.The final result will be shown in output.txt
### quick start
- label_check_linux.sh\
   copy script into your working directory.\
   use `bash label_check_linux.sh` to run script\
   Warning: Some operating systems default to sh not bash, such as ubuntu being dash. If you want to run `./label_check_linux. sh` directly, you need enough authorization, such as `chmod 775 label_check_linux. sh`  
- label_check_mac.command\
   This script is a Mac executable file that can be copied to the current directory and executed by double clicking. Of course authorization is required, like `chmod -x label_check_mac.command`
- label_check_mac.sh\
   Run in terminal, `sh label_check_mac.sh`
- label_check_win.bat\
   Place the file in the your working directory and double-click to run it
