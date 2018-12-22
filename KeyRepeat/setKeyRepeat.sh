#!/bin/sh

echo
echo ----------------------------------------------------------------------
echo  \<キーのリピート設定\>
echo 　システム環境設定で設定できる限界値を超えて「キーのリピート入力認識ま
echo 　での時間」の設定と「キーのリピート」の設定をコマンドで設定します。
echo 　注意：画面上は設定されていないように見えますが実際は設定されています
echo 　　　　設定を反映させるために念の為ログアウトをすること
echo ----------------------------------------------------------------------
echo

echo 「Enter」キーを押すとそのまま処理が続行されます
echo 処理をやめる時はCtrl+Cで終了して下さい……
echo
read -p "Hit enter: "
echo

# 「リピート入力認識までの時間」設定をいい感じに変更
defaults write -g InitialKeyRepeat -int 13
echo リピート入力認識までの時間：$(defaults read -g InitialKeyRepeat)

# 「キーリピート」設定を最小に変更
defaults write -g KeyRepeat -int 1 
echo キーリピート：$(defaults read -g KeyRepeat)
