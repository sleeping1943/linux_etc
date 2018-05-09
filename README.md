#关于配置的一些说明

## linux下Ctrl和Caps_Lock的交换

* xmodmap .xmodmap即可

## vim配置

* 新建~/.vim/bundle目录
* vundle安装：
    git clone https://github/com/gmarik/vundle.git
* 安装其他插件:
    进入vim;
    :BundleList插卡要安装哪些插件;
    :BundleInstall 进行安装;
* 最后完善YCM插件的安装:
    进入~/.vim/bundle/YouComplteteMe目录，执行install.sh或者install.py,后加--clang-completer,自动下载安装所需配置程序；

---
    Email : clseeping@163.com