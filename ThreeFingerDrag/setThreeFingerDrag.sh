#!/bin/sh

echo
echo ----------------------------------------------------------------------
echo  \<３本指ドラッグの有効設定スクリプト\>
echo 　３本指ドラッグの有効設定をコマンドで接続機器用と本体用の設定します。
echo 　注意：画面上は設定されていないように見えますが実際は設定されています
echo 　　　　設定を反映させるために念の為ログアウトをすること
echo ----------------------------------------------------------------------
echo

echo 「Enter」キーを押すとそのまま処理が続行されます
echo 処理をやめる時はCtrl+Cで終了して下さい……
echo
read -p "Hit enter: "
echo

# ３本指ドラッグの有効設定（接続機器）
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
echo ３本指ドラッグの有効設定（接続機器）：$(defaults read com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag)

# ３本指ドラッグの有効設定（本体）
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
echo ３本指ドラッグの有効設定（本体）：$(defaults read com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag)
