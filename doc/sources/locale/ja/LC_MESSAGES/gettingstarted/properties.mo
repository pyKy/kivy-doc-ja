Þ                         ì     í         I   ª     ô  ;     H   J  J     '   Þ       
   !  u   ,  J  ¢  u  í    c  3   ÿ  X   3	  -   	  U   º	  X   
     i
  @   ñ
  '   2     Z  ¾   s  ³  2   :mod:`~kivy.properties.NumericProperty`, :mod:`~kivy.properties.StringProperty`, :mod:`~kivy.properties.ListProperty`, :mod:`~kivy.properties.ObjectProperty`, :mod:`~kivy.properties.BooleanProperty`, :mod:`~kivy.properties.BoundedNumericProperty`, :mod:`~kivy.properties.OptionProperty`, :mod:`~kivy.properties.ReferenceListProperty`, :mod:`~kivy.properties.AliasProperty`, :mod:`~kivy.properties.DictProperty`, After, using Kivy's properties:: Automatically observe any changes and dispatch functions/code accordingly Check and validate values Easily manipulate widgets defined in the :doc:`/guide/lang` For an in-depth explanation, take a look at :doc:`/api-kivy.properties`. Kivy introduces a new way of declaring properties within a class. Before:: Kivy provides the following properties: Optimize memory management Properties These properties implement the `Observer pattern <http://en.wikipedia.org/wiki/Observer_pattern>`_. They help you to: To use them, **you have to declare them at class level**. That is, directly in the class, not in any method of the class. A property is a class attribute that will automatically create instance attributes. Each property by default provides an ``on_<propertyname>`` event that is called whenever the property's state/value changes. Project-Id-Version: Kivy 1.10.0
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
 :mod:`~kivy.properties.NumericProperty`, :mod:`~kivy.properties.StringProperty`, :mod:`~kivy.properties.ListProperty`, :mod:`~kivy.properties.ObjectProperty`, :mod:`~kivy.properties.BooleanProperty`, :mod:`~kivy.properties.BoundedNumericProperty`, :mod:`~kivy.properties.OptionProperty`, :mod:`~kivy.properties.ReferenceListProperty`, :mod:`~kivy.properties.AliasProperty`, :mod:`~kivy.properties.DictProperty`, ãã®å¾ãKivyãã­ããã£ãå®£è¨ãã¾ã:: ãã£ã¹ãããæ©è½/ã³ã¼ãã®ãã¹ã¦ã®å¤æ´ãèªåçã«ç£è¦ãã¾ãã ãã§ãã¯ãã¦ãå¤ãæ¤è¨¼ãã¾ãã :doc:`/guide/lang` ã§å®ç¾©ãããã¦ã£ã¸ã§ãããç°¡åã«æä½ãã¾ãã è©³ç´°ãªèª¬æã«ã¤ãã¦ã¯ã:doc:`/api-kivy.properties` ãè¦ã¦ã¿ã¾ãããã Kivyã¯ãã¯ã©ã¹åã®ãã­ããã£ãå®£è¨ããããã®æ°ããæ¹æ³ãç´¹ä»ãã¾ããäºåã«ä»¥ä¸ãå®£è¨ãã¾ã:: Kivyã«ã¯ãæ¬¡ã®ãã­ããã£ãç¨æããã¦ãã¾ãã ã¡ã¢ãªç®¡çãæé©åãã¾ãã Properties(ç¿»è¨³æ¸ã¿) ãããã®ãã­ããã£ã¯ããªããæå©ãããããã« `Observer ãã¿ã¼ã³ <https://ja.wikipedia.org/wiki/Observer_%E3%83%91%E3%82%BF%E3%83%BC%E3%83%B3>` ãå®è£ãã¾ãã ããããä½¿ç¨ããã«ã¯ã** ã¯ã©ã¹ã¬ãã«ã§å®£è¨ããå¿è¦ãããã¾ãã** ä»»æã®ä»ã®ã¡ã½ããã§ã¯ãªããç´æ¥ã¯ã©ã¹ã§å®£è¨ãã¾ãããã­ããã£ã¯ãèªåçã«ã¤ã³ã¹ã¿ã³ã¹å±æ§ãä½æããã¯ã©ã¹å±æ§ã§ããããã©ã«ãã§ã¯ãåãã­ããã£ã¯ãã­ããã£ã®ç¶æ/å¤ãå¤åããããã« ``_<propertyname>``ã¤ãã³ããå¼ã¶ãã¨ãæä¾ãã¾ãã 