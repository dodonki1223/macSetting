# ３本指ドラッグの設定スクリプト

３本指ドラッグの設定をコマンドで行います。  
設定には接続機器用と本体用の設定があります。

### ３本指ドラッグの設定（接続機器）

３本指ドラッグの接続機器用を設定するコマンドは下記になります

```shell
$ defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true
```

設定されたかどうかを確認するコマンドは下記になります

```
$ defaults read com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag
```

### ３本指ドラッグの設定（本体）

３本指ドラッグの本体用を設定するコマンドは下記になります

```shell
$ defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
```

設定されたかどうかを確認するコマンドは下記になります

```
$ defaults read com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag
```

### 注意事項

画面上は設定されていないように見えますが実際には設定されています。  
設定を反映させるためにはログアウトすること！！
