# nvim
the windows neovim config === 

### Windows Terminal (Preview)
[Windows Terminal (Preview)](https://github.com/neovim/neovim/wiki/Installing-Neovim)
需要windows 版本：1809以上

---

###  [Installing Chocolatey]
[https://chocolatey.org/install](https://chocolatey.org/install)

Chocolatey用法：命令

search - 搜索包 choco search something
list - 列出包 choco list -lo
install - 安装 choco install baretail
pin - 固定包的版本，防止包被升级 choco pin windirstat
upgrade - 安装包的升级 choco upgrade baretail
uninstall - 安装包的卸载 choco uninstall baretail
安装Ruby Gem - choco install compass -source ruby
安装Python Egg - choco install sphynx -source python
安装IIS服务器特性 - choco install IIS -source windowsfeatures
安装Webpi特性 - choco install IIS7.5Express -source webpi

常用的一些命令
列出本地已安装的包 ：choco list --local-only
列出Windows系统已安装的软件：choco list -li  OR choco list -lai
升级所有已安装的包：choco upgrade all -y
mysql安装：choco install mysql -y
maven安装：choco install maven 
升级maven：choco upgrade maven
java安装 ： choco install jdk7，choco install jdk8

---

### [neovim]
[https://github.com/neovim/neovim](https://github.com/neovim/neovim)
[https://neovim.io/](https://neovim.io/)
[https://github.com/neovim/neovim/wiki/Installing-Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim)

####  Chocolatey
Release (v0.3): choco install neovim (use -y for automatically skipping confirmation messages)
Development (pre-release): choco install neovim --pre

####  Scoop
Release: scoop install neovim
Development (pre-release):
scoop bucket add versions
scoop install neovim-nightly

--------

config file : [e.g. theniceboy](https://github.com/theniceboy/nvim) 



