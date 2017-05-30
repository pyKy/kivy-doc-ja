��          �               �     �   y        }  C   �  H   �  R     �  l  �   
  ]  �  N  �  :   >  5   y  u  �    %
  y   ;     �  C   �  H     R   Q  �  �  �   B  ]  �  N  '  :   v  5   �   However, since :class:`ScatterLayout` is implemented using a :class:`~kivy.uix.scatter.Scatter` widget, you can also translate, rotate and scale the layout using touches or clicks, just like in the case of a normal Scatter widget, and the child widgets will behave as expected. In contrast to a Scatter, the Layout favours 'hint' properties, such as size_hint, size_hint_x, size_hint_y and pos_hint. Scatter Layout ScatterLayout class, see module documentation for more information. ScatterPlaneLayout class, see module documentation for more information. Similar to ScatterLayout, but based on ScatterPlane - so the input is not bounded. Since the actual :class:`ScatterLayout` is a :class:`~kivy.uix.scatter.Scatter`, its add_widget and remove_widget functions are overridden to add children to the embedded :class:`~kivy.uix.floatlayout.FloatLayout` (accessible as the `content` property of :class:`~kivy.uix.scatter.Scatter`) automatically. So if you want to access the added child elements, you need self.content.children instead of self.children. The :class:`ScatterLayout` is implemented as a :class:`~kivy.uix.floatlayout.FloatLayout` inside a :class:`~kivy.uix.scatter.Scatter`. The :class:`ScatterLayout` was introduced in 1.7.0 and was called :class:`~kivy.uix.relativelayout.RelativeLayout` in prior versions. The :class:`~kivy.uix.relativelayout.RelativeLayout` is now an optimized implementation that uses only a positional transform to avoid some of the heavier calculation involved for :class:`~kivy.uix.scatter.Scatter`. This layout behaves just like a :class:`~kivy.uix.relativelayout.RelativeLayout`. When a widget is added with position = (0,0) to a :class:`ScatterLayout`, the child widget will also move when you change the position of the :class:`ScatterLayout`. The child widget's coordinates remain (0,0) as they are relative to the parent layout. ベースクラス: :class:`kivy.uix.scatter.ScatterPlane` ベースクラス: :class:`kivy.uix.scatter.Scatter` Project-Id-Version: Kivy 1.10.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-05-13 08:22+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 However, since :class:`ScatterLayout` is implemented using a :class:`~kivy.uix.scatter.Scatter` widget, you can also translate, rotate and scale the layout using touches or clicks, just like in the case of a normal Scatter widget, and the child widgets will behave as expected. In contrast to a Scatter, the Layout favours 'hint' properties, such as size_hint, size_hint_x, size_hint_y and pos_hint. Scatter Layout ScatterLayout class, see module documentation for more information. ScatterPlaneLayout class, see module documentation for more information. Similar to ScatterLayout, but based on ScatterPlane - so the input is not bounded. Since the actual :class:`ScatterLayout` is a :class:`~kivy.uix.scatter.Scatter`, its add_widget and remove_widget functions are overridden to add children to the embedded :class:`~kivy.uix.floatlayout.FloatLayout` (accessible as the `content` property of :class:`~kivy.uix.scatter.Scatter`) automatically. So if you want to access the added child elements, you need self.content.children instead of self.children. The :class:`ScatterLayout` is implemented as a :class:`~kivy.uix.floatlayout.FloatLayout` inside a :class:`~kivy.uix.scatter.Scatter`. The :class:`ScatterLayout` was introduced in 1.7.0 and was called :class:`~kivy.uix.relativelayout.RelativeLayout` in prior versions. The :class:`~kivy.uix.relativelayout.RelativeLayout` is now an optimized implementation that uses only a positional transform to avoid some of the heavier calculation involved for :class:`~kivy.uix.scatter.Scatter`. This layout behaves just like a :class:`~kivy.uix.relativelayout.RelativeLayout`. When a widget is added with position = (0,0) to a :class:`ScatterLayout`, the child widget will also move when you change the position of the :class:`ScatterLayout`. The child widget's coordinates remain (0,0) as they are relative to the parent layout. ベースクラス: :class:`kivy.uix.scatter.ScatterPlane` ベースクラス: :class:`kivy.uix.scatter.Scatter` 