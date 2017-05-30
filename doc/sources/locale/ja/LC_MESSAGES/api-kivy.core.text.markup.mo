��    '      T              �  �   �  d   s     �     �  |         }  Y   �     �  H   �  J   F  /   �  .   �  �   �  ]   �       s     .   �  /   �  B   �     ,     ?  !   K  �   m     �  �   	     �	     �	     �	     �	     �	     �	     
     
     )
     9
     I
    U
  5   m  u  �  �     d   �     d     w  |   �     	  Y        s  H   �  J   �  /     .   M  �   |  ]   1     �  s   �  .     /   E  B   u     �     �  !   �  �   �     �  �   �          -     9     V     n     z     �     �     �     �     �    �  5   �   3-tuple of (xw, h, lines), where w, and h is similar to the input and contains the resulting width / height of the text, including padding. lines, is a list containing a single `LayoutLine`, which contains the words for the line. A tag is defined as ``[tag]``, and should have a corresponding ``[/tag]`` closing tag. For example:: Activate bold text Activate italic text Add an interactive zone. The reference + all the word box inside the reference will be available in :attr:`MarkupLabel.refs` Change the font Change the font size. <size> should be an integer, optionally with a unit (i.e. ``16sp``) Change the text color Display the text at a subscript position relative to the text before it. Display the text at a superscript position relative to the text before it. Get the bounding box of all the ``[ref=...]``:: Get the position of all the ``[anchor=...]``:: If :attr:`text_size` [0] is None, the lines are returned unchanged. Otherwise, the lines are converted to a single line fitting within the constrained width, :attr:`text_size` [0]. If you need to escape the markup from the current text, use :func:`kivy.utils.escape_markup`. Markup text label. Put an anchor in the text. You can get the position of your anchor within the text with :attr:`MarkupLabel.anchors` Return the text with all the markup splitted:: See module documentation for more informations. Shortens the text to a single line according to the label options. Strikethrough text Text Markup The following tags are available: This function operates on a text that has already been laid out because for markup, parts of text can have different size and options. Underlined text We provide a simple text-markup for inline text styling. The syntax look the same as the `BBCode <http://en.wikipedia.org/wiki/BBCode>`_. ``[anchor=<str>]`` ``[b][/b]`` ``[color=#<color>][/color]`` ``[font=<str>][/font]`` ``[i][/i]`` ``[ref=<str>][/ref]`` ``[s][/s]`` ``[size=<size>][/size]`` ``[sub][/sub]`` ``[sup][/sup]`` ``[u][/u]`` `lines`: list of `LayoutLine` instances describing the text. `w`: int, the width of the text in lines, including padding. `h`: int, the height of the text in lines, including padding. `margin` int, the additional space left on the sides. This is in addition to :attr:`padding_x`. ベースクラス: :class:`kivy.core.text.LabelBase` Project-Id-Version: Kivy 1.10.0
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
 3-tuple of (xw, h, lines), where w, and h is similar to the input and contains the resulting width / height of the text, including padding. lines, is a list containing a single `LayoutLine`, which contains the words for the line. A tag is defined as ``[tag]``, and should have a corresponding ``[/tag]`` closing tag. For example:: Activate bold text Activate italic text Add an interactive zone. The reference + all the word box inside the reference will be available in :attr:`MarkupLabel.refs` Change the font Change the font size. <size> should be an integer, optionally with a unit (i.e. ``16sp``) Change the text color Display the text at a subscript position relative to the text before it. Display the text at a superscript position relative to the text before it. Get the bounding box of all the ``[ref=...]``:: Get the position of all the ``[anchor=...]``:: If :attr:`text_size` [0] is None, the lines are returned unchanged. Otherwise, the lines are converted to a single line fitting within the constrained width, :attr:`text_size` [0]. If you need to escape the markup from the current text, use :func:`kivy.utils.escape_markup`. Markup text label. Put an anchor in the text. You can get the position of your anchor within the text with :attr:`MarkupLabel.anchors` Return the text with all the markup splitted:: See module documentation for more informations. Shortens the text to a single line according to the label options. Strikethrough text Text Markup The following tags are available: This function operates on a text that has already been laid out because for markup, parts of text can have different size and options. Underlined text We provide a simple text-markup for inline text styling. The syntax look the same as the `BBCode <http://en.wikipedia.org/wiki/BBCode>`_. ``[anchor=<str>]`` ``[b][/b]`` ``[color=#<color>][/color]`` ``[font=<str>][/font]`` ``[i][/i]`` ``[ref=<str>][/ref]`` ``[s][/s]`` ``[size=<size>][/size]`` ``[sub][/sub]`` ``[sup][/sup]`` ``[u][/u]`` `lines`: list of `LayoutLine` instances describing the text. `w`: int, the width of the text in lines, including padding. `h`: int, the height of the text in lines, including padding. `margin` int, the additional space left on the sides. This is in addition to :attr:`padding_x`. ベースクラス: :class:`kivy.core.text.LabelBase` 