## 仮装環境の起動状態を保持

def DevEnv():
    print("dev start")
    while True:
        user_input = input("コマンドを入力してください (exitで終了): ")
        if user_input == "exit":
            print("プログラムを終了します。")
            break
        else:
            print("入力されたコマンド:", user_input)

if __name__ == "__main__":
    DevEnv()