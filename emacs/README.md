### liang的Emacs使用记录

#### 配置文件的使用
Emacs的配置文件是`~/.emacs`，扩展文件夹是`~/.emacs.d`，这两个都是隐藏文件。

为了能长期更新，维护Emacs的配置文件，我决定把这两个配置文件(夹)放到Github上去。

要达到这样的目的，需要先建立一个Github的项目，项目结构如下

```lisp
|
|
|-emacs-|
	    |-README.md
        |-.emacs
		|-.emacs.d-|
		           |-auto-save-list
		           |-extend-|
				            |-color-theme-6.6.0
 				            |-csv-mode
							|-markdown-mode

```
然后，执行下面的两个命令，在用户目录下创建指向配置的连接文件

```bash
ln -s -v /path/to/emacs/.emacs ~/.emacs
ln -s -v /path/to/emacs/.emacs.d ~/.emacs.d
```

用户目录下的链接文件建立好以后，更新了Github项目中的配置，就可以同步更新Emacs的配置文件了。






