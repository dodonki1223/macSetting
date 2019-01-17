# bashの設定です

## .bash_profileと.bashrcの違いってそもそも何？

.bash_profileは`ログイン時に1回、実行される`
よく設定するのは……
- 環境変数（export）

.bashrcは`シェル起動時に１回、実行される`
よく設定するのは……
- エイリアス
- シェル関数
- コマンドラインの補完

## .bash_profile

- .bashrcファイルの読み込み
- PATHを通す
    - mysql
    - ssh接続ツールへのディレクトリ
    - Homebrewでインストールしたgit
    - GitリポジトリだとわかるようにPS1を変更

## .bashrc

- エイリアスの独自設定
    - `ll`コマンド
        - ls -l
    - `la`コマンド
        - ls -la
    - `sshc`コマンド
        - sh ssh_connection.sh
- Gitのリポジトリだとわかるように、Gitの補完機能を追加
