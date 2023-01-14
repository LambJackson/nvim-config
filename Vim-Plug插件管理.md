# Vim-plug插件管理

## vim-plug安装

### 离线安装  

下载 plug.vim 文件，根据操作系统不同，放置在以下~/.vim/autoload目录中：

```shell
mkdir -p  ~/.vim/autoload/
cp plug.vim  ~/.vim/autoload/plug.vim 
```

### 在线安装:  

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## vim-plug指令用法  

### 安装插件  

如果希望安装新插件，首先找到其在http://github.com的网址，然后将其追加至vimrc配置文件中的call plug#begin()和call plug#end()之间，最后执行以下命令安装所有引用的插件：

```vim
:PlugInstall 
```

你也可以使用以下命令，指定安装特定的插件：

```vim
:PlugInstall gist-vim   
```

### 卸载插件  

如果希望卸载插件，请先在vimrc配置文件中注释或者删除对应插件的配置信息，然后再执行以下命令：

```vim
:PlugClean
```

### 更新插件  

使用以下命令，可以更新vim-plug插件自身：

```vim
:PlugUpgrade 
```

使用以下命令，可以批量更新所有已安装的插件：

```vim
:PlugUpdate   
```

### 插件状态  

使用以下命令，可以查看当前已安装插件的状态信息：

```vim
:PlugStatus
```
