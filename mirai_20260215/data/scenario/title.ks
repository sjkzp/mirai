
[cm]

@clearstack
@bg storage ="title.jpg" time=100
@wait time = 200

*start 

[button x="440" y="330" graphic="title/button1.png" enterimg="title/button2.png" clickse="start.mp3" target="gamestart" keyfocus="1"]

[s]

*gamestart

;一番最初のシナリオファイルへジャンプする
@jump storage="scene1.ks"



