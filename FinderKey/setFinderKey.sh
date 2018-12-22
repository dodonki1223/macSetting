#!/bin/sh

echo
echo ----------------------------------------------------------------------
echo  \<Finderの独自キー設定\>
echo 　Finderに独自のキーを設定する。システム環境設定のキーボードで設定
echo 　することができるものをコマンドで設定します。
echo 　注意：画面上は設定されていないように見えますが実際は設定されています
echo 　　　　設定を反映させるために念の為ログアウトをすること
echo 　・新規Folder　　　：ctrl + K
echo 　・ここに項目を移動：ctrl + command + V
echo 　・ゴミ箱に入れる　：ctrl + d
echo 　・情報を見る　　　：ctrl + l
echo ----------------------------------------------------------------------
echo

echo 「Enter」キーを押すとそのまま処理が続行されます
echo 処理をやめる時はCtrl+Cで終了して下さい……
echo
read -p "Hit enter: "
echo

# 「新規フォルダ」のショートカットキー設定
defaults write com.apple.Finder NSUserKeyEquivalents -dict-add "新規フォルダ" -string "^k"

# 「ここに項目を移動」のショートカットキー設定
defaults write com.apple.Finder NSUserKeyEquivalents -dict-add "ここに項目を移動" -string "@^v"

# 「ゴミ箱に入れる」のショートカットキー設定
defaults write com.apple.Finder NSUserKeyEquivalents -dict-add "ゴミ箱に入れる" -string "^d"

# 「情報を見る」のショートカットキー設定
defaults write com.apple.Finder NSUserKeyEquivalents -dict-add "情報を見る" -string "^l"

# Finderの独自ショートカットキー設定の内容を確認
echo Finderの独自キー設定：$(defaults read com.apple.Finder NSUserKeyEquivalents)
