*start

[cm ]
[clearfix ]
[start_keyconfig ]

[bg storage="title.jpg" time="100"]

[wait time="800" ]

;メッセージウィンドウの設定
[position layer="message0" frame="config/message_window_02.png" left="80" top="480" width="1100" height="225" page="fore" visible="true" ]

;文字が表示される領域を調整
[position layer="message0" page=fore margint="60" marginl="50" marginr="70" marginb="60" ]


;メッセージウィンドウの表示
@layopt layer="message0" visible="true"

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size="35" bold="true" x="150" y="490" ]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area" pos_mode="false"]

;このゲームで登場するキャラクターを宣言
;mirai
[chara_new  name="mirai" storage="chara/mirai/normal.png" jname="ミライ" ]
;キャラクターの表情登録
[chara_face name="mirai" face="normal" storage="chara/mirai/normal.png"]
[chara_face name="mirai" face="trouble" storage="chara/mirai/trouble.png"]
[chara_face name="mirai" face="surprised" storage="chara/mirai/surprised.png"]
[chara_face name="mirai" face="kind" storage="chara/mirai/kind.png"]
[chara_face name="mirai" face="smile" storage="chara/mirai/smile.png"]
[chara_face name="mirai" face="sad" storage="chara/mirai/sad.png"]
[chara_face name="mirai" face="letter" storage="chara/mirai/letter.png"]
[chara_face name="mirai" face="bye" storage="chara/mirai/bye.png"]

;scan
[chara_new name="scan" storage="scan.png" ]

[font size="35"]
[playbgm storage="Timeless_Echoes.mp3" volume="30" loop="true" ]

;キャラクター登場
[chara_show name="mirai" left="200" top="121" ]
#ミライ
[playse storage="mirai/mirai2_0010.wav"]
なずなちゃん、ひさしぶり！　ミライだよ！[p]
[chara_mod name="mirai" face="smile" ]
[playse storage="mirai/mirai2_0020.wav"]
おぼえてる？　１年前、いっしょにおてがみをさがしたの[p]
[chara_mod name="mirai" face="normal" ]
[playse storage="mirai/mirai2_0030.wav"]
あのときはありがとう！　とってもたのしかったよ！[p]
[chara_mod name="mirai" face="kind" ]
[playse storage="mirai/mirai2_0040.wav"]
なずなちゃんも９さいになったんだね！　おめでとう！[p]
[chara_mod name="mirai" face="trouble" ]
[playse storage="mirai/mirai2_0050.wav"]
じつは……また、さがしものがあるの[p]
[chara_mod name="mirai" face="normal" ]
[playse storage="mirai/mirai2_0070.wav"]
１年前と同じように、いっしょにさがしてくれる？[p]

[eval exp="f.prg = 1"]

*scan
[if exp="f.prg==1" ]
    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_0080.wav"]
    それじゃあ、スタート！[r]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0090.wav"]
    まずは[mark color="#F38A8A" ]【へやの中にあるコード】[endmark]をスキャンしてね！[r]

    [layopt layer="1" visible="true"]
    [image layer="1" x="705" y="165" storage="camera_frame.png" ]
    [bgcamera mode="back" fit="true" left="720" top="180" width="430" height="270" ]

[elsif exp="f.prg==2" ]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0150.wav"]
    なずなちゃんが[mark color="#F38A8A" ]【できるようになったこと】[endmark]を教えて[r]

[elsif exp="f.prg==3" ]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0220.wav"]
    ３つのうち、[mark color="#F38A8A" ]【いちばん大きいもの】[endmark]をスキャンしてね[r]

[elsif exp="f.prg==4" ]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0280.wav"]
    [mark color="#F38A8A" ]【なずなちゃんのねこちゃんのしっぽ】[endmark]はどれ？[r]

[elsif exp="f.prg==5" ]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0340.wav"]
    [mark color="#F38A8A" ]【パパのへやのパソコン】[endmark]をきどうしてね[r]

[endif]

[chara_show name="scan" left="840" top="75 ]
[qr_config qrcode="jump"]
[s]

*test

[if exp="f.prg==1" ]
    [playse storage="scan.mp3"]
    [chara_hide name="scan" ]

    [wait time=1200]

    [chara_show name="mirai" left="200" top="121" ]
    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_0100.wav"]
    できたね！　さすがだよ！[p]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0110.wav"]
    前と同じように、スキャンすると次の場所がわかるよ[p]
    [playse storage="mirai/mirai2_0120.wav"]
    移動するときは、タブレットは見なくていいからね[p]
    [playse storage="mirai/mirai2_0130.wav"]
    階段も気をつけてね！[p]
    [playse storage="mirai/mirai2_0140.wav"]
    次は……[mark color="#F38A8A" ]【ドラムのあるへや】[endmark]に行ってみて！[p]
    [eval exp="f.prg = 2"]
    @jump target="*scan"
[else]
    @jump target="*fail"
[endif]

*test2

[if exp="f.prg==2" ]
    [playse storage="scan.mp3"]
    [chara_hide name="scan" ]

    [wait time=1200]

    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_0160.wav"]
    すごい！　できることが増えたんだね！[p]
    [chara_mod name="mirai" face="kind" ]
    [playse storage="mirai/mirai2_0170.wav"]
    １年たって、ドラムも上手になっているんだね！[p]
    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_0180.wav"]
    わたしも、料理がもっと上手になったよ！[p]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0190.wav"]
    いつか、なずなちゃんにお料理を作ってあげたいな[p]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0200.wav"]
    さて、次のばしょは……[p]
    [playse storage="mirai/mirai2_0210.wav"]
    [mark color="#F38A8A" ]【スマイルゼミ】[endmark]を開いてみてね！[p]

    [eval exp="f.prg = 3"]
    @jump target="*scan"
[else]
    @jump target="*fail"
[endif]

*test3
[if exp="f.prg==3" ]
    [playse storage="scan.mp3"]
    [chara_hide name="scan" ]

    [wait time=1200]

    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_022.wav"]
    正解！　バッチリだね！[p]
    [chara_mod name="mirai" face="kind" ]
    [playse storage="mirai/mirai2_0240.wav"]
    勉強もむずかしくなってきたかな？[p]
    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_0250.wav"]
    でも、なずなちゃんならぜったいだいじょうぶ！[p]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0270.wav"]
    つぎは[mark color="#F38A8A" ]【ねこごはんのきかい】[endmark]だよ！[p]

    [eval exp="f.prg = 4"]
    @jump target="*scan"

[else]

    @jump target="*fail"

[endif]

*test4
[if exp="f.prg==4" ]
    [playse storage="scan.mp3"]
    [chara_hide name="scan" ]

    [wait time=1200]

    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_0290.wav"]
    正解だよ！[p]
    [chara_mod name="mirai" face="kind" ]
    [playse storage="mirai/mirai2_0300.wav"]
    ねこちゃんも１さい大きくなったんだね！[p]
    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_0310.wav"]
    なずなちゃんと一緒にすごして、きっと幸せだね！[p]
    [chara_mod name="mirai" face="normal" ]
    [playse storage="mirai/mirai2_0320.wav"]
    さあ、最後の場所だよ！[p]
    [playse storage="mirai/mirai2_0330.wav"]
    最後は[mark color="#F38A8A" ]【パパのへやのパソコン】[endmark]！[p]

    [eval exp="f.prg = 5"]
    @jump target="*scan"

[else]

    @jump target="*fail"

[endif]

*test5
[if exp="f.prg==5" ]
    [playse storage="scan.mp3"]
    [chara_hide name="scan" ]

    [wait time=1200]

    [chara_mod name="mirai" face="smile" ]
    [playse storage="mirai/mirai2_0350.wav"]
    やった！　全部クリアだよ！[p]
    [chara_mod name="mirai" face="kind" ]
    [playse storage="mirai/mirai2_0360.wav"]
    これできっと探し物が見つかるはず……[p]

    [eval exp="f.prg = 6"]
    @jump target="*ending"

[else]

    @jump target="*fail"

[endif]

*fail
[if exp="f.prg==2" ]

    @jump target="*test2"

[else]

    [chara_hide name="scan" ]

    [playse storage="scan.mp3"]
    [wait time=1200]

    [chara_mod name="mirai" face="sad" ]
    [playse storage="mirai/mirai_fail.wav"]
    ざんねん、ちがうみたい……[p]
    @jump target="*scan"

[endif]

*ending
[freeimage layer="1" ]
[stop_bgcamera ]
 
[chara_mod name="mirai" face="surprised" ]
[playse storage="mirai/mirai2_0380.wav"]
あ……！　これは……！！[p]

[playse storage="letter.mp3"]
[wait time=600]

[chara_mod name="mirai" face="letter" ]
[playse storage="mirai/mirai2_0390.wav"]
みつけた！　なずなちゃんへのメッセージ！！[p]
[playse storage="mirai/mirai2_0400.wav"]
これ、パパとママからだよ！[p]
[playse storage="mirai/mirai2_0410.wav"]
前と同じように、わたしがよんであげるね！[p]
[chara_mod name="mirai" face="normal" ]
[playse storage="mirai/mirai2_0420.wav"]
『なぁちゃん、９さいのおたんじょうび、おめでとう！[p]
[playse storage="mirai/mirai2_0430.wav"]
この１年で、なぁちゃんはたくさん成長したね[p]
[playse storage="mirai/mirai2_0440.wav"]
後転ができるようになったり、自転車も乗れるようになったり[p]
[playse storage="mirai/mirai2_0450.wav"]
習字もドラムも勉強も、いろんなことをがんばって……[p]
[playse storage="mirai/mirai2_0460.wav"]
できることが少しずつ増えているね！[p]
[playse storage="mirai/mirai2_0470.wav"]
これからもいろんなことを経験して、毎日をたのしんでね！[p]
[playse storage="mirai/mirai2_0480.wav"]
パパとママはいつもなぁちゃんのことをおうえんしているよ！[p]
[playse storage="mirai/mirai2_0490.wav"]
だいすきだよ、なぁちゃん！[p]
[playse storage="mirai/mirai2_0500.wav"]
パパとママより』[p]

[chara_mod name="mirai" face="kind" ]
……[p]
[chara_mod name="mirai" face="smile" ]
[playse storage="mirai/mirai2_0530.wav"]
１年前とくらべて、なずなちゃんが成長したのがわかって……[p]
[chara_mod name="mirai" face="kind" ]
[playse storage="mirai/mirai2_0540.wav"]
わたし、なんだかとってもうれしくなっちゃった！[p]

[chara_mod name="mirai" face="kind" ]
……[p]

[chara_mod name="mirai" face="smile" ]
[playse storage="mirai/mirai2_0580.wav"]
それじゃあ、またお別れの時間だね[p]

[chara_mod name="mirai" face="kind" ]
[playse storage="mirai/mirai2_0590.wav"]
９さいのおたんじょうび、本当におめでとう！[p]

[chara_mod name="mirai" face="smile" ]
[playse storage="mirai/mirai2_0600.wav"]
きっとまた会おうね！[p]

[chara_mod name="mirai" face="bye" ]
[playse storage="mirai/mirai2_0610.wav"]
それじゃあ……またね！！　なずなちゃん！！[p]

[freeimage layer="message0" ]
[chara_hide name="mirai" time="3000" ]

[layopt layer="1" visible="true" ]
[image layer="1" storage="end.png" left="320" top="220" time="3000" ]

[s]
