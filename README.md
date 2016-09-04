# kivy-doc-ja
Kivyドキュメンテーションの日本語訳

# 本リポジトリについて
日本語翻訳の方法を変更しています。  
以下リポジトリから順次こちらに移動します。  
https://github.com/pyKy/translation  

# HTMLについて
暫定的ですがgithubの機能を使用してdocs配下のHTMLを以下のURLで公開しています。


https://pyky.github.io/kivy-doc-ja/


#問題について
2016年9月現在の問題としては一部リンクがおかしいところと強調などの記法が適用されていません。

移植完了後、対応する予定です。（2016年9月末対応予定）


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



# 移植待ち項目について

translationリポジトリで翻訳済みで移植待ちの項目は以下の通りです。

* Gallery of Examples（「Kivy カタログ」以外すべて）

# 目標

2016年中に「Getting started into Kivy」の翻訳を完了させる。
