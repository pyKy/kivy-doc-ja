Þ          D               l      m   	  ~       Ð     Í  m     ;  _  Z  |  º    7   Core Abstraction In most cases, you shouldn't directly use a library that's already covered by the core abstraction. Always try to use our providers first. In case we are missing a feature or method, please let us know by opening a new Bug report instead of relying on your library. These are **not** widgets! These are just abstractions of the respective functionality. For example, you cannot add a core image to your window. You have to use the image **widget** class instead. If you're really looking for widgets, please refer to :mod:`kivy.uix` instead. This module defines the abstraction layers for our core providers and their implementations. For further information, please refer to :ref:`architecture` and the :ref:`providers` section of the documentation. Project-Id-Version: Kivy 1.10.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-05-13 08:22+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: JUN OKAZAKI <okazakijun54392@gmail.com>, 2017
Language: ja
Language-Team: Japanese (Japan) (https://www.transifex.com/python_kivy_doc_ja/teams/74810/ja_JP/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Core Abstraction(ç¿»è¨³æ¸ã¿) ã»ã¨ãã©ã®å ´åã§ãã§ã«ã³ã®æ½è±¡åã®å¯¾è±¡ã¨ãªã£ã¦ããã©ã¤ãã©ãªãç´æ¥ä½¿ç¨ããªãã§ãã ãããã¾ãã¯ãã­ãã¤ãã¼ãä½¿ç¨ãã¦ã¿ã¦ãã ãããæ©è½ãæ¹æ³ãä¸è¶³ãã¦ããå ´åã¯ã©ã¤ãã©ãªã«é ¼ãã®ã§ã¯ãªããæ°ãããã°ã¬ãã¼ããä½æãã¦ãç¥ãããã ããã ãããã¯widgetsã§ã¯ **ããã¾ããï¼**  ããããã®æ©è½ã®æ½è±¡çãªãã®ã§ãããã¨ãã°ã¦ã£ã³ãã¦ã«ã³ã¢ã¤ã¡ã¼ã¸ãè¿½å ã§ãã¾ãããä»£ããã«ã¤ã¡ã¼ã¸widgetsã¯ã©ã¹ãä½¿ç¨ããå¿è¦ãããã¾ããããªããæ¬å½ã«ã¦ã£ã¸ã§ãããæ¢ãã¦ãããªããä»£ããã« :mod:`kivy.uix` ãåç§ãã¦ãã ããã ãã®ã¢ã¸ã¥ã¼ã«ã§ã¯ã³ã¢ãã­ãã¤ãã¨ãã®å®è£ã®ããã®æ½è±¡ã¬ã¤ã¤ãå®ç¾©ãã¾ããè©³ç´°ã«ã¤ãã¦ã¯ããã­ã¥ã¡ã³ãã® :ref:`architecture`  ã¨ã³ã¢ãã­ãã¤ãã¨ :ref:`providers` ã®ã»ã¯ã·ã§ã³ãåç§ãã¦ãã ããã 