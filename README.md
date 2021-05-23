# dotfiles

## 事前準備

使っているシェルとインストール済みのシェルを確認

```
$ echo $SHELL
$ cat /etc/shells
```

zshなければインストール

```
$ brew install zsh
# or $ sudo apt install zsh
$ chsh -s $(which zsh)
$ echo $SHELL
```

## セットアップ方法

```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
$ git clone git@github.com:yukishinonome/dotfiles.git ~/.dotfiles
$ cd ~/.dotfiles
$ chmod u+x bin/install.sh
$ bin/install.sh
```

`.vimrc`に書いあるツールのインストール

```
$ vimrc
```

`:PlugInstall`を実行する
