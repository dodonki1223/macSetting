# キー関連の設定スクリプト

こちらの記事を参考というかそのまま丸パクリで記述しています
[[Mac] キーボードの反応速度を速くする方法 2 ｜ DevelopersIO](https://dev.classmethod.jp/tool/mac-keyboard-speed-2/)

### キーのリピート入力認識までの時間設定

キーのリピート入力認識までの時間を設定するコマンドは下記になります

```shell
$ defaults write -g InitialKeyRepeat -int 13
```

`-int 13`の部分が値で、1 = 15msを意味する
**システム環境設定の上限値は15 = 225ms**

設定されたかどうかを確認するコマンドは下記になります

```
$ defaults read -g InitialKeyRepeat
```

### キーのリピート設定

キーのリピートの設定をするコマンドは下記になります

```shell
$ defaults write -g KeyRepeat -int 1 
```

`-int 1`の部分が値で、1 = 15msを意味する
**システム環境設定の上限値は2 = 30ms**

設定されたかどうかを確認するコマンドは下記になります

```
$ defaults read -g KeyRepeat
```

### 注意事項

設定を反映させるためにはログアウトすること！！
