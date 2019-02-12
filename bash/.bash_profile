#*****************************
#* .bashrcファイルの読み込み *
#*****************************
source ~/.bashrc

#*****************************
#* PATHを通す                *
#*****************************
# ssh接続ツールのパスを通す
export SSH_C="$HOME/Tool/ssh_connection/"

# mysqlのにパスを通す
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# GOにパスを通す
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH

# GitのPATHの優先度をHomebrewでインストールしたものにする
export PATH=/usr/local/bin:$PATH

# Gitのリポジトリだとわかるように表示させる
# <PS1とは>
#   bashには、プロンプトを制御するために「PS1」という環境変数が使用されている
#   PS1変数は、exportコマンドを使いさまざまな特殊文字コードを利用すれば、表示形式を変更することが可能
#   変更方法はhttps://qiita.com/zaburo/items/9194cd9eb841dea897a0を参照
export PS1='\[\033[32m\]\u@\h\[\033[00m\]:\[\033[34m\]\w\[\033[31m\]$(__git_ps1)\[\033[00m\]\n\$ '

# anyenvの設定
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init -)"
