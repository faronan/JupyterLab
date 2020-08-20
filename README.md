# JupyterLab

## ローカルでの起動方法
1. VSCodeを開く
2. `Remote-Containers` の拡張機能をインストール
3. コマンドパレット(Command + shift + P)で`Remote-Containers: Reopen in Container`を選択
  - 左下のオレンジ部分をクリックでもOK
4. VSCodeが再度開くのを待つ
  - 初回起動時は結構時間がかかります
5. ノートブックを選択するとVSCode上から実行できるようになります
  - 途中まで入力すると補完が効くなど何かと便利です

### ローカルでJupyterLabを開く場合
(起動方法の5まで進める)
1. コマンドパレット(Command + shift + P)で `Terminal: Create New Integrated Terminal`を選択してターミナルを起動
2. ターミナルから以下のコマンドを実行
  - `jupyter lab --ip=0.0.0.0 --no-browser`
3. ターミナルに流れるログの中から、`http://127.0.0.1:8888~`で始まるURLにアクセス
4. JupyterLabが開きます
  - 変数の中身を常に表示できる`Variable Inspector`や、GUIでGitを操作できる機能が入っています

### GitHubからノートブックを実行する場合
1. [![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/faronan/JupyterLab/master)をクリック
2. Jupyterが開きます
  - Jupyterが開くのには少し時間がかかります
  - push直後(コードを変更した時)にはさらに時間がかかるので、その時は少々時間を置いてから再度クリックしてください