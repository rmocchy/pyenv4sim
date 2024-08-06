# pyenv4sim

## whats this ?
- 研究室で利用するためのシミュレーション環境の雛形です。

## 前提
- makeコマンドのインストール
- docker利用環境の整備

## ファイル構成
- requirements.txt
    
    pythonでInstallしたいライブラリを定義する
- src/cmd
    
    直接呼び出されるファイルを定義する
- src/model
    
    具体的処理を定義する

## 使い方
- `make init` 
    
    コンテナの整備を行う
- `make sttdev`
    
    コンテナを起動状態で保持する(exitで終了)
- `make health`
    
    無事にCMD上のコードが実行できるかどうかの確認を行う
