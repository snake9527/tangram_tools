# tangram_tools
简体中文 | [English](README.md)
## label_check
检查目录中JSON文件的Label数量。如果图片没有对应的JSON，数量为0。检查信息输出到`output.txt`

### 快速开始
- label_check_linux.sh\
    将脚本复制到您的工作目录。使用 `bash label_check_linux.sh` 来运行脚本\
    警告：一些操作系统默认的 shell 不是 bash，例如 ubuntu 默认是 dash。如果你想直接运行 `./label_check_linux.sh`，你需要足够的权限，如`chmod 775 label_check_linux.sh`
- label_check_mac.command
    该脚本是Mac可执行文件，可复制到当前目录，双击即可执行。当然，需要有足够的权限，如 `chmod -x label_check_mac.command`
- label_check_mac.sh
    在终端中运行，`sh label_check_mac.sh`
- label_check_win.bat
    将脚本文件放在你的工作目录中，双击即可运行
