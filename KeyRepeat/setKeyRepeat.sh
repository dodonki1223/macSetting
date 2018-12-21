#!/bin/sh

# 「リピート入力認識までの時間」設定をいい感じに変更
defaults write -g InitialKeyRepeat -int 13
echo リピート入力認識までの時間：$(defaults read -g InitialKeyRepeat)

# 「キーリピート」設定を最小に変更
defaults write -g KeyRepeat -int 1 
echo キーリピート：$(defaults read -g KeyRepeat)
