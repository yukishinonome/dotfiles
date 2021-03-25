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
$ chsh -s $(which zsh)
$ echo $SHELL
```

## セットアップ方法

```
$ get clone git@github.com:yukishinonome/dotfiles.git ~/.dotfiles
$ bin/install.sh
```

`.vimrc`に書いあるツールのインストール

```
$ vimrc
```

`:PlugInstall`を実行する
