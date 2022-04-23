execute as @a[tag=R.Show-Setting] run tellraw @s [{"text":"\n","color":"white","font":"uniform"},{"text":"⚕ ","color":"dark_aqua"},{"text":"----・----・----・----・----","color":"aqua"},{"text":"  PK ","color":"dark_aqua","bold":true},{"text":"Utility  ","color":"aqua","bold":true},{"text":"----・----・----・----・----","color":"aqua"},{"text":" ⚕","color":"dark_aqua"},{"text": "\n    ◁ ","color": "white"},{"text": "自分","underlined": true,"color": "green","clickEvent": {"action": "run_command","value": "/loot give @s loot pk-utility:player_head"}},{"text": "/","color": "gray"},{"text": "他人","underlined": true,"color": "light_purple","clickEvent": {"action": "suggest_command","value": "/give @s player_head{SkullOwner:'ここにIDを入力'}"}},{"text": "の頭","color": "yellow","hoverEvent": {"action": "show_text","value": {"text": "クリックで Head_Block を入手"}}},{"text":" ▷     ◁ ","color":"white"},{"text":"テキストフォーマット","color":"yellow","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":" - text"},{"text":"\n   例: '[{\"text\":\"金\"},{\"text\":\"欠\"}]'   >> 金欠\n\n"},{"text":" - color"},{"text":"\n   例: '[{\"text\":\"苺\",\"color\":\"red\"}]'","color":"white"},{"text":"   >> ","color":"white"},{"text":"苺","color":"red"},{"text":"\nwhite","color":"white"},{"text":" black","color":"black"},{"text":" dark_blue ","color":"dark_blue"},{"text":"dark_green ","color":"dark_green"},{"text":"dark_aqua ","color":"dark_aqua"},{"text":"dark_red ","color":"dark_red"},{"text":"dark_purple ","color":"dark_purple"},{"text":"gold ","color":"gold"},{"text":"gray ","color":"gray"},{"text":"dark_gray ","color":"dark_gray"},{"text":"blue ","color":"blue"},{"text":"green ","color":"green"},{"text":"aqua ","color":"aqua"},{"text":"red ","color":"red"},{"text":"light_purple ","color":"light_purple"},{"text":"yellow","color":"yellow"},{"text":"\n\n - Bold","color":"white","bold":true},{"text":"\n   例: '[{\"text\":\"やせ我慢\",\"Bold\":true}]'   >> ","color":"white"},{"text":"やせ我慢","color":"white","bold":true},{"text":"\n\n - italic","color":"white","italic":true},{"text":"\n\n - ","color":"white","italic":true},{"text":"underline\n\n","color":"white","underlined":true},{"text":" - ","color":"white"},{"text":"strikethrough >> ","color":"white"},{"text":"あいうえお","color":"white","strikethrough":true},{"text":"\n\n - obfuscated >> ","color":"white"},{"text":"あいうえお","color":"white","obfuscated":true},{"text":"\n\n      ※ クリックでwikiへ飛びます","color":"yellow","italic":true}]},"clickEvent": {"action": "open_url","value": "https://minecraftjapan.miraheze.org/wiki/コマンド/テキストフォーマット"}},{"text":" ▷     ◁ ","color":"white"},{"text":"再読み込み","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function pk-utility:settings/message-tag"},"hoverEvent":{"action":"show_text","value":{"text":"クリックで ページを最新の情報に更新する"}}},{"text":" ▷","color":"white"}]
execute as @a[tag=R.Show-Setting] run tellraw @s [{"text":"\n   - Prefix","color":"white","font":"uniform"},{"text":"       [","color":"dark_aqua"},{"text":"編集","color":"aqua","underlined":true,"hoverEvent": {"action": "show_text","value":{"text": "クリックで編集用コマンドを提示します"}},"clickEvent": {"action": "suggest_command","value": "/data modify storage pk-utility: Settings.Perfix set value '[{\"text\":\"ここに文字を入力\",\"color\":\"white\"}]'"}},{"text":"]   ","color":"dark_aqua"},{"text":"[","color":"white"},{"text":"リセット","color":"yellow","hoverEvent": {"action": "show_text","value":{"text": "クリックでリセットコマンドを提示します"}},"clickEvent": {"action": "suggest_command","value": "/data modify storage pk-utility: Settings.Perfix set value '[{\"text\":\"◁ \",\"color\":\"gray\"},{\"text\":\"P\",\"color\":\"dark_aqua\"},{\"text\":\"K\",\"color\":\"aqua\"},{\"text\":\" ▷\",\"color\":\"gray\"}]'"}},{"text":"]","color": "white"},{"text":"     ' ","color":"gray"},{"nbt":"Settings.Perfix","storage":"pk-utility:","interpret":true},{"text":" '","color":"gray"},{"text":"\n   - Map-Name"},{"text":",    ","color":"dark_gray"},{"text":"[","color":"dark_aqua"},{"text":"編集","color":"aqua","underlined":true,"hoverEvent": {"action": "show_text","value":{"text": "クリックで編集用コマンドを提示します"}},"clickEvent": {"action": "suggest_command","value": "/data modify storage pk-utility: Settings.Map-Name set value '[{\"text\":\"ここに文字を入力\",\"color\":\"white\",\"bold\":true}]'"}},{"text":"]   ","color":"dark_aqua"},{"text":"[","color":"white"},{"text":"リセット","color":"yellow","hoverEvent": {"action": "show_text","value":{"text": "クリックでリセットコマンドを提示します"}},"clickEvent": {"action": "suggest_command","value": "/data remove storage pk-utility: Settings.Map-Name"}},{"text":"]","color": "white"},{"text":"     ' ","color":"gray"},{"nbt":"Settings.Map-Name","storage":"pk-utility:","interpret":true},{"text":" '\n","color":"gray"}]

execute if data storage pk-utility: {Settings:{No-Collision:1b}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - プレイヤー同士の当たり判定を無効化","font":"uniform"},{"text":",'            ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/collision/0"}}]
execute unless data storage pk-utility: {Settings:{No-Collision:1b}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - プレイヤー同士の当たり判定を無効化","font":"uniform"},{"text":",'           ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/collision/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{CP:{Sponge:{Enable:1b}}}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - スポンジを踏んだ場合CPへ戻る","font":"uniform"},{"text":",'                   ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/cp/sponge/enable/0"}}]
execute unless data storage pk-utility: {Settings:{CP:{Sponge:{Enable:1b}}}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - スポンジを踏んだ場合CPへ戻る","font":"uniform"},{"text":",'                  ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/cp/sponge/enable/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{CP:{Diamond:1b}}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - Diamond_Blockを踏んだ場合CPを更新する","font":"uniform"},{"text":",'           ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/cp/diamond/0"}}]
execute unless data storage pk-utility: {Settings:{CP:{Diamond:1b}}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - Diamond_Blockを踏んだ場合CPを更新する","font":"uniform"},{"text":",'          ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/cp/diamond/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{TA:{Fin-ResetCP:1b}}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - TAの計測が終了した際にCPをリセットする","font":"uniform"},{"text":",'        ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/ta/fin-resetcp/0"}}]
execute unless data storage pk-utility: {Settings:{TA:{Fin-ResetCP:1b}}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - TAの計測が終了した際にCPをリセットする","font":"uniform"},{"text":",'       ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/ta/fin-resetcp/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute as @a[tag=R.Show-Setting] run tellraw @s " "

execute if data storage pk-utility: {Settings:{World-Spawn:1b}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - 初回joinにてスポーン地点がずれる仕様の修正","font":"uniform"},{"text":"※","underlined": true,"color": "yellow","hoverEvent": {"action": "show_text","value": {"text":"defaultgamemode を adventure に設定してある場合は、この設定は使用しなくて構いません。\nただ、リスポーン時の角度まで細かく設定したい場合は、こちらの使用を推奨します。"}}},{"text":",   ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/world-spawn/0"}},{"text":"  ","color": "dark_gray"},{"text":"["},{"text":"設置","color": "green","underlined": true,"clickEvent": {"action": "run_command","value": "/function pk-utility:settings/world-spawn/set"}},{"text":"]"},{"text":"  ","color": "dark_gray"},{"text":"["},{"text":"テスト","color": "yellow","underlined": true,"clickEvent": {"action": "run_command","value": "/function pk-utility:settings/world-spawn/tp/1"},"hoverEvent": {"action": "show_text","value":{"text":"クリックで 初回join時にTPされる場所へTP"} }},{"text":"]"}]
execute unless data storage pk-utility: {Settings:{World-Spawn:1b}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - 初回joinにてスポーン地点がずれる仕様の修正","font":"uniform"},{"text":"※","underlined": true,"color": "yellow","hoverEvent": {"action": "show_text","value": {"text":"defaultgamemode を adventure に設定してある場合は、この設定は使用しなくて構いません。\nただ、リスポーン時の角度まで細かく設定したい場合は、こちらの使用を推奨します。"}}},{"text":",  ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/world-spawn/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute if data storage pk-utility: {Settings:{Join-GiveItem:1b}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - 初回joinにて自動的に「CPへ戻る棒」を与える","font":"uniform"},{"text":",'    ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/join-giveitem/0"}}]
execute unless data storage pk-utility: {Settings:{Join-GiveItem:1b}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - 初回joinにて自動的に「CPへ戻る棒」を与える","font":"uniform"},{"text":",'   ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/join-giveitem/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute as @a[tag=R.Show-Setting] run tellraw @s " "

execute store result storage pk-utility: Settings.GameRule.SendCF byte 1 run gamerule sendCommandFeedback
execute if data storage pk-utility: {Settings:{GameRule:{SendCF:1b}}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - ","font":"uniform"},{"text":"Gamerule SendCommandFeedback","hoverEvent":{"action":"show_text","value":{"text":"プレイヤーが実行したコマンドのログをチャット欄に表示するかどうか。"}}},{"text":"                       ","color":"dark_gray"},{"text":"⦿","color":"green"},{"text":"  "},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/gamerule/sendcf/0"}}]
execute unless data storage pk-utility: {Settings:{GameRule:{SendCF:1b}}} as @a[tag=R.Show-Setting] run tellraw @s [{"text":"   - ","font":"uniform"},{"text":"Gamerule SendCommandFeedback","hoverEvent":{"action":"show_text","value":{"text":"プレイヤーが実行したコマンドのログをチャット欄に表示するかどうか。"}}},{"text":"                      ","color":"dark_gray"},{"text":" ◯ ","color":"gray","clickEvent":{"action":"run_command","value":"/function pk-utility:settings/gamerule/sendcf/1"}},{"text":"  "},{"text":"⦿","color":"red"}]

execute as @a[tag=R.Show-Setting] run tellraw @s ""

execute as @a[tag=R.Show-Setting] run tellraw @s [{"text":" > Effents","font":"uniform"},{"text":" ["},{"text":"Show","color":"green","underlined": true,"clickEvent": {"action": "run_command","value": "/function pk-utility:settings/message-effect"}},{"text":"/","color":"gray"},{"text":"Hide","color": "red","underlined": true,"clickEvent": {"action": "run_command","value": "/function pk-utility:settings/message-tag"}},{"text":"]"}]

tag @a remove R.Show-Setting