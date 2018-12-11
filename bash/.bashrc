#*****************************
#* エイリアスの独自設定      *
#*****************************
# llコマンドを設定
alias ll='ls -l'

# laコマンドを設定
alias la='ls -la'

#***********************************************
#* Gitのリポジトリの時                         *
#*   Gitのリポジトリだとわかるように表示させる *
#*   Gitコマンドの補完機能を追加する           *
#***********************************************
# gitコマンドの補完スクリプトを読み込む
source /usr/local/etc/bash_completion.d/git-completion.bash

# プロンプトに各種追加情報を表示可能にするスクリプトを読み込む、オプションは下記の通り
#   GIT_PS1_SHOWUPSTREAM
#      現在のブランチがupstreamより進んでいるとき">"を、遅れているとき"<"を、遅れてるけど独自の変更もあるとき"<>"を表示する。オプションが指定できるけど(svnをトラックするかとか)
#   GIT_PS1_SHOWUNTRACKEDFILES
#      addされてない新規ファイルがある(untracked)とき"%"を表示する
#   GIT_PS1_SHOWSTASHSTATE
#      stashになにか入っている(stashed)とき"$"を表示する
#   GIT_PS1_SHOWDIRTYSTATE
#      addされてない変更(unstaged)があったとき"*"を表示する、addされているがcommitされていない変更(staged)があったとき"+"を表示する
source /usr/local/etc/bash_completion.d/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
