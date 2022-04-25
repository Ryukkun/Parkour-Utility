# &nbsp;　Parkour-Utility
簡単なCheckPoint(CP)機能や Time Attack(TA)機能が備わっています。<br>
他にもアスレチック製作者用の機能などが盛りだくさん!!<br><br>

## ◈ 対応バージョン<br>
  - 1.16.x 以上<br><br>
  
## ◈ 使い方
### 1. コマンド
  `/function #pk-utility:help` Helpを表示します<br>
  `/function #pk-utility:setting` 設定画面を表示します<br>
  `/function #pk-utility:ranking` タイムアタックのランキングを表示します<br>
  `/function #pk-utility:get` 右クリックでCPへ戻ることができるアイテムを配布します。コマンドブロックへ入力し、信号を与えた場合、近くのプレイヤーへ配布します<br><br>

### 2. CP
  - set<br>
    - 1~2ブロック下に 一行目に小文字で「set cp」と書かれた看板を置くことで、CPを更新できる場所を作ることができます<br>
    - 設定を変更することで、ダイヤモンドブロックを踏むだけでCPを更新できるようにすることもできます<br><br>

  - tp<br>
    - `/function #pk-utility:get`で手に入る 「Back to CP」 を持って右クリックすることで、最後に更新されたCPの場所へ戻ることができます<br>
    - 設定を変更することで、スポンジを踏んだ場合CPへ強制送還させることができます<br><br>

### 3. TA
  - ジュークボックス・音符ブロックの下にライム色の羊毛が設置されてある状態で、その上を通過することでTAを開始することができます<br>
  - ジュークボックス・音符ブロックの下に赤色の羊毛が設置されてある状態で、その上を通過することでTAの計測を終了することができます<br><br>

### 4. Settings
  - Map-Name
    - /tellraw コマンドなどで使われる記述方法を使うことで、好みのマップ名へ変更することができます。<br>
    - 自ら記述することが難しい場合は、[mcstacker](https://mcstacker.net/)や、[Minecraft Tools](https://minecraft.tools/en/tellraw.php)などの 外部サイトを使うことで、簡単に生成することもできます。
    ※注意 チャット欄だと文字入力制限があるため、もし入りきらない場合はコマンドブロックを使用することを推奨します。 
    - 例 `'[{"text":"◈","color":"dark_aqua"},{"text":" Horary ","color":"aqua","bold":true},{"text":"◈","color":"dark_aqua"}]'`

## ◈ ライセンスについて
このレポジトリでは[MIT Lisence](LICENSE)が適応されています。<br>
かなり緩いライセンスなので、著作権表示さえ消されていなければ大抵の事は出来るので、どんどん使ってもらって構いません。<br><br>

## ◈ 連絡はこちらから
https://twitter.com/Ryukkun8
