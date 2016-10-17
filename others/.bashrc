# .bashrc

# User specific aliases and functions

#前景   背景   颜色
#30      40    黑色
#31      41    红色
#32      42    绿色
#33      43    黄色
#34      44    蓝色
#35      45    紫红色
#36      46    青蓝色
#37      47    白色

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias j='jobs'
alias f='fg'
alias gg='git gui'
alias grep='egrep'
alias vi='vim'
alias makedbg='make dbg=1'
alias makenout='make >/dev/null'
alias makednout='make dbg=1 >/dev/null'
alias em='emacs'

export PS1="\[\e[37m\][\t \u@\h\w]\e[m"
export PATH=$PATH:/usr/local/squid/sbin/
export FILE_PATH=/usr/local/apache-tomcat-7.0.70/webapps/I-Seal-3.1/download
export LD_LIBRARY_PATH=/root/git/iseal-dlp-v3.1/SOURCES
export LUA_CPATH=/root/test/lua/C/?.so\;/usr/lib64/lua/5.1/?.so\;/usr/lib64/lua/5.1/socket/?.so
#swap ctrl and swapcaps
/usr/bin/setxkbmap -option "ctrl:swapcaps"

if [ "$CODE_HOME" == "" ];then
	export CODE_HOME=/root/git/iseal-dlp-v3.1
	echo -e "\033[0;032;032m当前代码工作路径切换至:${CODE_HOME}\033[m"
	echo -e "\033[0;032;032m当前动态库连接路径：${LD_LIBRARY_PATH}\033[m"
	echo -e "\033[0;032;032m前台上传文件保存路径：${FILE_PATH}\033[m"
	echo -e "\033[0;032;032mLUA查找路径：${LUA_CPATH}\033[m"
else
	echo -e "\033[0;032;032m当前代码工作路径：${CODE_HOME}\033[m"
	echo -e "\033[0;032;032m当前动态库连接路径：${LD_LIBRARY_PATH}\033[m"
	echo -e "\033[0;032;032m前台上传文件保存路径：${FILE_PATH}\033[m"
	echo -e "\033[0;032;032mLUA查找路径：${LUA_CPATH}\033[m"
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

#for go
#export GOROOT=/usr/local/go
#export GOOS=linux
#export GOARCH=386
#export GOBIN=$GOROOT/bin

#export PATH=$PATH$GOBIN
#alias cdg='cd /project/go'

