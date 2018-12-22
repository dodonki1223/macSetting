# Finderの独自キー設定スクリプト

Finderに独自のショートカットキーの設定を追加します

### 設定するキーの一覧

| キー             |  結果                | 
|:-----------------|:--------------------:|
| 新規Folder       |  ctrl + K            |
| ここに項目を移動 |  ctrl + command + V  |
| ゴミ箱に入れる   |  ctrl + d            |
| 情報を見る       |  ctrl + l            |

### Finderの独自ショートカットキーを設定するコマンド

Finderの独自ショートカットキーを設定するコマンドは下記になります

```shell
$ defaults write com.apple.Finder NSUserKeyEquivalents -dict-add "項目名" -string "ショートカット"
```

設定されたかどうかを確認するコマンドは下記になります  
Finderに独自に設定されたショートカットキーがすべて表示されます

```
$ defaults read com.apple.Finder NSUserKeyEquivalents
```

### 注意事項

画面上は設定されていないように見えますが実際には設定されています。  
設定を反映させるためにはログアウトすること！！
