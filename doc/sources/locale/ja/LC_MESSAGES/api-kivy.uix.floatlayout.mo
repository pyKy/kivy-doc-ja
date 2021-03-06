��          t               �   �   �   l   d     �  B   �  A   !  �   c  ^   �  ^   Z  p   �  3   *  �  ^  �   >  w        �  P   �  D     �   G  ~   �  T   z	  �   �	  3   a
   :class:`FloatLayout` honors the :attr:`~kivy.uix.widget.Widget.pos_hint` and the :attr:`~kivy.uix.widget.Widget.size_hint` properties of its children. By default, all widgets have their size_hint=(1, 1), so this button will adopt the same size as the layout:: Float Layout Float layout class. See module documentation for more information. For example, a FloatLayout with a size of (300, 300) is created:: If you are not using pos_hint, you must handle the positioning of the children: if the float layout is moving, you must handle moving the children too. If you want to create a button that will always be the size of layout minus 20% on each side:: This layout can be used for an application. Most of the time, you will use the size of Window. To create a button 50% of the width and 25% of the height of the layout and positioned at (20, 20), you can do:: ベースクラス: :class:`kivy.uix.layout.Layout` Project-Id-Version: Kivy 1.10.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-05-13 08:22+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: 水戸う納豆斎(Nattōsai Mitō) <flow4re2c@gmail.com>, 2017
Language: ja
Language-Team: Japanese (Japan) (https://www.transifex.com/python_kivy_doc_ja/teams/74810/ja_JP/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 :class:`FloatLayout` は子の :attr:`~kivy.uix.widget.Widget.pos_hint` と :attr:`~kivy.uix.widget.Widget.size_hint` を :attr:`~kivy.uix.widget.Widget.pos` と :attr:`~kivy.uix.widget.Widget.size` より優先します。 全てのWidgetのsize_hintの既定値は(1,1)なので、このButtonの大きさはlayoutと同じになります。 Float Layout(翻訳済み) Float layout class. 詳しくはmoduleのドキュメントを見て下さい。 例えば大きさ(300x300)のFloatLayoutがあったとします。 もしpos_hintを使わないのなら、子の位置は自分で制御しないといけません。もしLayoutが動いたなら子も自分で動かす必要があります。 もし親の大きさから上下左右20%ずつ縮めた大きさのButtonを作りたければ以下のようにします。 このLayoutは大概はWindowと同じ大きさで使う事になるでしょう。 もし 幅がlayoutの50% 高さがlayoutの25%のButtonを作り、それを座標(20, 20)に配置したければ以下のようにします。 ベースクラス: :class:`kivy.uix.layout.Layout` 