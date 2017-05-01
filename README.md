# kivy-doc-ja
Kivyドキュメンテーションの日本語訳

# 本リポジトリについて
日本語翻訳の方法を変更しています。  翻訳の元ファイルは2016年3月にkivyのgithubから持ってきているために最新版と内容が違うところがあるので、逐次読みかえてください。

# HTMLについて
暫定的ですがgithubの機能を使用してdocs配下のHTMLを以下のURLで公開しています。


https://pyky.github.io/kivy-doc-ja/


#問題について
2016年9月現在の問題としては一部リンクがおかしいところと強調などの記法が適用されていません。


またAPIが出力できておりません。出力しようするとタッチパネル前提のところでエラーになるので、
現在はAPIは出力しないようにしてます。

実行内容

    C:\Users\jun\Documents\kivy-master\doc>make html
    mkdir -p build/html build/doctrees
    python autobuild.py silenced=yes
    [INFO              ] [Logger      ] Record log in C:\Users\jun\.kivy\logs\kivy_16-09-03_1.txt
    [INFO              ] [Kivy        ] v1.9.1
    [INFO              ] [Python      ] v3.5.1 (v3.5.1:37a07cee5969, Dec  6 2015, 01:38:48) [MSC v.1900 32 bit (Intel)]
    [INFO              ] [Factory     ] 179 symbols loaded
    [INFO              ] [OSC         ] using <thread> for socket
     Traceback (most recent call last):
       File "autobuild.py", line 66, in <module>
         from kivy.lib import osc, ddsfile, mtdev
       File "c:\Python35-32\lib\site-packages\kivy\lib\mtdev.py", line 17, in <module>
         libmtdev = cdll.LoadLibrary('libmtdev.so.1')
       File "c:\Python35-32\lib\ctypes\__init__.py", line 425, in LoadLibrary
         return self._dlltype(name)
       File "c:\Python35-32\lib\ctypes\__init__.py", line 347, in __init__
         self._handle = _dlopen(self._name, mode)
     OSError: [WinError 126] 指定されたモジュールが見つかりません。
    make: *** [html] Error 1


#翻訳について
翻訳の担当者などのタスクはTrelloにて管理しています。  
https://trello.com/b/vUxSE4Ks/kivy

以下のリンクから参加することが可能です。

 https://trello.com/invite/b/vUxSE4Ks/f7ddc4a749099c6854ba2cfca6b0620a/kivy-


作業する際は、【手付かず】となっている箇所から作業したいページを選択して、【作業中】に移動してください。   
その後、カードのメンバーに自分と、期日を移動した日から10日後に設定して作業してください。  
期日を過ぎても作業が終わらなかった場合は、一旦メンバーと期日を削除して【手付かず】に戻してください。  
その際、もし途中まで作業していた場合は、プルリクエストしていただき、その内容をカードのコメントに記載しておいてください。



現在の翻訳メンバー
https://github.com/orgs/pyKy/people


Slack作りました
http://pyky.slack.com

登録用フォーム
https://docs.google.com/forms/d/1bKv3KtJ6hAgYiuKMeFCm4nd0-9fhkwxdsMCRXsp0wbU/viewform

# LICENCEについて

本ライセンスはMITライセンスとなっております。
