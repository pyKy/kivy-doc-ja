Þ    I      d              ¬     ­    Á     Ê     ×  *   í  T     @   m  ,   ®  ë  Û  è   Ç     °	  %   4
     Z
  l   o
     Ü
     ð
     {  t          ú         3   '  0   [  &     A   ³  ¥  õ  ð     }     º  
     Å     I  z   V  ¼  Ñ  ¦       5     ½     Ò     T  ç   q      Y     z                 !   ?  `  a    Â  ¾  Î  K   !  	  Ù!  Â   ã#  õ   ¦$     %  Ú   *&     '    '  \  $*  Ó   +  Y  U,  Å  ¯-     u0  ð   0     1  |   1     2  q   2  Q   3     U3  l   g3     Ô3     Ý3     æ3  t  û3  ?   p5  g  °5      7  K   97  <   7  r   Â7  S   58  H   8    Ò8    _;  ³   v<  %   *=  1   P=  y   =     ü=  ³   >  ?   Ê>     
?     ?  º  ¶?     qB  [   B  :   ãB  &   C  h   EC  ×  ®C    E  v   F    G  £   I     »I     ÈI  R  ^J  ò   ±L  -  ¤M  $   ÒO     ÷O  g   P  û   ýP  /   ùQ      )R    JR  !   ÊS  A   ìS  M   .T  :  |T  i  ·U    !X  V   AZ    Z    ]  û   $^      _  g  ®_  ¿   a  #  Öa    úd    f  »  g  n  Çh  -   6l  #  dl  "   m     «m  ¤   Cn     èn     ro     p     0p     ±p     ºp  #   Ãp   Add Simple Graphics Add some nicer graphics / images. (Hint: check out the :attr:`~kivy.graphics.instructions.VertexInstruction.source` property on the graphics instructions like :attr:`~kivy.graphics.Line.circle` or :class:`~kivy.graphics.Rectangle`, to set an image as the texture.) Add the Ball Adding Ball Animation Adding Players and reacting to touch input After that, we begin defining rules that are applied to all ``PongGame`` instances:: And here is the kv rule used to draw the ball as a white circle: And here it is in context. Pretty much done: At this point everything is hooked up for the ball to bounce around. If you're coding along as we go, you might be wondering why the ball isn't moving anywhere.  The ball's velocity is set to 0 on both x and y. In the code listing below, a ``serve_ball`` method is added to the ``PongGame`` class and called in the app's ``build`` method. It sets a random x and y velocity for the ball, and also resets the position, so we can use it later to reset the ball when a player has scored a point. Before going on to the next step, you might want to take a closer look at the contents of the kv file we just created and figure out what is going on. If you understand what's happening, you can probably skip ahead to the next step. COMMON ERROR: The name of the kv file, e.g. pong.kv, must match the name of the app, e.g. PongApp (the part before the App ending). Check the ``on_touch_move`` handler:: Connect Input Events Cool, so now we have a ball, and it even has a ``move`` function... but it's not moving yet. Let's fix that. Creation of pong.kv Don't forget to hook it up in the kv file, by giving the child widget an id and setting the PongGame's ``ball`` ObjectProperty to that id: Explaining the Kv File Syntax Fix the simplistic collision check so hitting the ball with an end of the paddle results in a more realistic bounce. Getting Started Go ahead and run the application. It should just show a black window at this point. What we've done is create a very simple Kivy :class:`~kivy.app.App`, which creates an instance of our ``PongGame`` Widget class and returns it as the root element for the applications UI, which you should imagine at this point as a hierarchical tree of Widgets. Kivy places this widget-tree in the default Window. In the next step, we will draw the Pong background and scores by defining how the ``PongGame widget`` looks. Have some fun Here is a check list before starting this tutorial: Here is the Python code for the PongBall class:: Here is the entire code for this step: Here is the entire updated python code and kv file for this step: However, that still doesn't change the fact that we don't have a reference to the ``PongBall`` child widget created by the kv rule.  To fix this, we can add an :class:`ObjectProperty <kivy.properties.ObjectProperty>` to the PongGame class, and hook it up to the widget created in the kv rule. Once that's done, we can easily reference the ball property inside the ``update`` method and even make it bounce off the edges:: If you have read the programming guide, and understand both basic Widget concepts (:doc:`/tutorials/firstwidget`) and basic concepts of the kv language (:doc:`/guide/lang`), you can probably skip the first 2 steps and go straight to step 3. If you run the app now, you should see a vertical bar in the middle, and two zeros where the player scores will be displayed. In Kivy, a widget can react to input by implementing the :meth:`on_touch_down <kivy.uix.widget.Widget.on_touch_down>`, the :meth:`on_touch_move <kivy.uix.widget.Widget.on_touch_move>` and the :meth:`on_touch_up <kivy.uix.widget.Widget.on_touch_up>` methods. By default, the Widget class implements these methods by just calling the corresponding method on all its child widgets to pass on the event until one of the children returns ``True``. Inside a rule section, you can add various blocks to define the style and contents of the widgets they will be applied to. You can: Introduction Let's start by getting a really simple Kivy app up and running. Create a directory for the game and a file named *main.py* Like Python, kv files use indentation to define nested blocks. A block defined with a class name inside the ``<`` and ``>`` characters is a :class:`~kivy.uix.widget.Widget` rule. It will be applied to any instance of the named class. If you replaced ``PongGame`` with ``Widget`` in our example, all Widget instances would have the vertical line and the two Label widgets inside them because it would define these rules for all Widget instances. Make it a 4 player Pong Game.  Most tablets have Multi-Touch support, so wouldn't it be cool to have a player on each side and have four people play at the same time? Make the game end after a certain score. Maybe once a player has 10 points, you can display a large "PLAYER 1 WINS" label and/or add a main menu to start, pause and reset the game. (Hint: check out the :class:`~kivy.uix.button.Button` and :class:`~kivy.uix.label.Label` classes, and figure out how to use their `add_widget` and `remove_widget` functions to add or remove widgets dynamically. Making the ball move Note that not only a `<PongBall>` widget rule has been added, but also a child widget `PongBall` in the `<PongGame>` widget rule. Object Properties/References Ok, so we have a basic pong arena to play in, but we still need the players and a ball to hit around.  Let's start with the ball.  We'll add a new `PongBall` class to create a widget that will be our ball and make it bounce around. On the very first line we have:: Pong Game Tutorial Pong is pretty simple. The rackets just need to move up and down. In fact it's so simple, we don't even really need to have the player widgets handle the events themselves. We'll just implement the ``on_touch_move`` function for the ``PongGame`` class and have it set the position of the left or right player based on whether the touch occurred on the left or right side of the screen. PongBall Class Ready? Sweet, let's get started! Scheduling Functions on the Clock Since we're going to have to do more than just move the ball (e.g. bounce it off the walls and later the players racket), we'll probably need an ``update`` method for our ``PongGame`` class anyway. Furthermore, given that we have a reference to the game object already, we can easily schedule its new ``update`` method when the application gets built:: So this canvas block says that the ``PongGame`` widget should draw some graphics primitives. In this case, we add a rectangle to the canvas. We set the pos of the rectangle to be 5 pixels left of the horizontal center of the widget, and 0 for y. The size of the rectangle is set to 10 pixels in width, and the widget's height in height. The nice thing about defining the graphics like this, is that the rendered rectangle will be automatically updated when the properties of any widgets used in the value expression change. Sweet, our ball is bouncing around. The only things missing now are the movable player rackets and keeping track of the score.  We won't go over all the details of creating the class and kv rules again, since those concepts were already covered in the previous steps. Instead, let's focus on how to move the Player widgets in response to user input. You can get the whole code and kv rules for the ``PongPaddle`` class at the end of this section. The first block inside the ``<PongGame>`` rule we have is a `canvas` block: The last two sections we add look pretty similar. Each of them adds a Label widget as a child widget to the ``PongGame`` widget. For now, the text on both of them is just set to *"0"*. We'll hook that up to the actual score once we have the logic implemented, but the labels already look good since we set a bigger font_size, and positioned them relatively to the root widget. The ``root`` keyword can be used inside the child block to refer back to the parent/root widget the rule applies to (``PongGame`` in this case): This algorithm for ball bouncing is very simple, but will have strange behavior if the ball hits the paddle from the side or bottom...this is something you could try to fix yourself if you like. This first line is required in every kv file. It should start with ``#:kivy`` followed by a space and the Kivy version it is intended for (so Kivy can make sure you have at least the required version, or handle backwards compatibility later on). This line for example, would cause the ``update`` function of the game object to be called once every 60th of a second (60 times per second). This tutorial will teach you how to write pong using Kivy. We'll start with a basic application like the one described in the :ref:`quickstart` and turn it into a playable pong game, describing each step along the way. To make it all work, you also have to add the imports for the :doc:`/api-kivy.properties` Property classes used and the :class:`~kivy.vector.Vector`. Try to resize the application window and notice what happens. That's right, the entire UI resizes automatically. The standard behaviour of the Window is to resize an element based on its property `size_hint`. The default widget size_hint is (1,1), meaning it will be stretched 100% in both x-direction and y-direction and hence fill the available space. Since the pos and size of the rectangle and center_x and top of the score labels were defined within the context of the ``PongGame`` class, these properties will automatically update when the corresponding widget properties change. Using the Kv language gives you automatic property binding. :) We have another problem though.  We'd like to make sure the PongBall has its ``move`` function called regularly, but in our code we don't have any references to the ball object since we just added it via the kv file inside the kv rule for the ``PongGame`` class. The only reference to our game is the one we return in the applications build method. We need the ``move`` method of our ball to be called regularly. Luckily, Kivy makes this pretty easy by letting us schedule any function we want using the :class:`~kivy.clock.Clock` and specifying the interval:: We will use a .kv file to define the look and feel of the ``PongGame`` class. Since our :class:`~kivy.app.App` class is called ``PongApp``, we can simply create a file called ``pong.kv`` in the same directory that will be automatically loaded when the application is run. So create a new file called *``pong.kv``* and add the following contents. We'll keep the score for each player in a :class:`~kivy.properties.NumericProperty`. The score labels of the ``PongGame`` are kept updated by changing the NumericProperty ``score``, which in turn updates the ``PongGame`` child labels text property. This binding occurs because Kivy :mod:`~kivy.properties` automatically bind to any references in their corresponding kv files. When the ball escapes out of the sides, we'll update the score and serve the ball again by changing the ``update`` method in the ``PongGame`` class. The ``PongPaddle`` class also implements a ``bounce_ball method``, so that the ball bounces differently based on where it hits the racket. Here is the code for the `PongPaddle` class:: Welcome to the Pong tutorial Well, the pong game is pretty much complete. If you understood all of the things that are covered in this tutorial, give yourself a pat on the back and think about how you could improve the game. Here are a few ideas of things you could do: Where To Go Now? You can find the entire source code and source code files for each step in the Kivy examples directory under tutorials/pong/ You can find the entire source code, and source code files for each step in the Kivy examples directory under `tutorials/pong/` You have a working Kivy installation. See the :doc:`/installation/installation` section for detailed descriptions You know how to run a basic Kivy application. See :ref:`quickstart` if you don't. add child widgets define a `canvas` section in which you can add Graphics instructions that define how the widget is rendered. main.py: pong.kv: set property values, Project-Id-Version: Kivy 1.9.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-02 17:46+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 Add Simple Graphics(ã·ã³ãã«ãªã°ã©ãã£ãã¯ã®è¿½å ) ããã°ã©ãã£ãã¯ã¹/ç»åãããã¤ãè¿½å ãã¾ãã ï¼ãã³ãï¼ç»åããã¯ã¹ãã£ã¨ãã¦è¨­å®ããã«ã¯ã :attr:`~kivy.graphics.Line.circle` ã :class:`~kivy.graphics.Rectangle` ã®ãããªã°ã©ãã£ãã¯ã¹å½ä»¤ã® :attr:`~kivy.graphics.instructions.VertexInstruction.source` propertyããã§ãã¯ãã¦ãã ããã Add the Ball(ãã¼ã«ãè¿½å ) Adding Ball Animationï¼ãã¼ã«ã®ã¢ãã¡ã¼ã·ã§ã³ãè¿½å ããï¼ ãã¬ã¤ã¤ã¼ãè¿½å ãã¦ã¿ããå¥åã«åå¿ãã ãã®å¾ããã¹ã¦ã®ãPongGameãã¤ã³ã¹ã¿ã³ã¹ã«é©ç¨ãããã«ã¼ã«ã®å®ç¾©ãéå§ãã¾ãã" ããã¦ãããã«ãã¼ã«ã¨ãã¦ç½ãåãæãkvã«ã¼ã«ãããã¾ã ããã¯ã³ã³ãã­ã¹ãã«ããã¾ããå¤§ä½çµããã¾ããï¼ ãã®æç¹ã§ããã¼ã«ãè·³ã­è¿ãããã«ãã¹ã¦ãæ¥ç¶ããã¾ããããã¾ã§ã³ã¼ãã£ã³ã°ãã¦ãããªãããã¼ã«ãã©ãã«ãåãã¦ããªãã®ãä¸æè­°ã«æãããããã¾ããããã¼ã«ã®éåº¦ã¯ãxyã®ä¸¡æ¹ã§0ã«è¨­å®ããã¾ããä»¥ä¸ã®ã³ã¼ããªã¹ãã§ã¯ããserve_ballãã¡ã½ããããPongGameãã¯ã©ã¹ã«è¿½å ãããã¢ããªã±ã¼ã·ã§ã³ã®ãbuildãã¡ã½ããã§å¼ã³åºããã¾ãããã¼ã«ã®xã¨yã®ã©ã³ãã ãªéåº¦ãè¨­å®ããä½ç½®ããªã»ããããã®ã§ãå¾ã§ãã¼ã«ããªã»ãããã¦ãã¤ã³ããç²å¾ãããã¨ãã§ãã¾ãã æ¬¡ã®ã¹ãããã«é²ãåã«ãä½æããkvãã¡ã¤ã«ã®åå®¹ãè©³ããè¦ã¦ãä½ãèµ·ãã£ã¦ããã®ãçè§£ãããã¨æã£ã¦ããããããã¾ãããä½ãèµ·ãã¦ããã®ããçè§£ãã¦ãããªãã°æ¬¡ã®ã¹ãããã«é²ãã¾ãã¾ãã ããããééãï¼kvãã¡ã¤ã«ã®ååã¯pong.kvã®ããã«ã¢ããªã®ååã¨ä¸è´ããå¿è¦ãããã¾ãï¼ä¾ï¼ PongAppï¼Appã®çµããã®åã®é¨åï¼ã Check the ``on_touch_move`` handler:: Connect Input Events(å¥åã¤ãã³ãã®æ¥ç¶) ç¾å¨ã¯ãã¼ã«ããããmoveãé¢æ°ãããã¾ãããã¾ã åä½ãã¦ã¾ããããããä¿®æ­£ãããã pong.kvãã¤ããã¾ã å­ã®widgetã«idãä¸ããPongGameã®ãballãObjectPropertyããã®idã«è¨­å®ãããã¨ã«ãã£ã¦ãkvãã¡ã¤ã«ã«æ¥ç¶ãããã¨ãå¿ããªãã§ãã ããï¼ Explaining the Kv File Syntax(Kvãã¡ã¤ã«ã®æ§æã®èª¬æ) åç´ãªè¡çªãã§ãã¯ãä¿®æ­£ãã¦ãããã«ã®çµããã§ãã¼ã«ãæã¤ã¨ãããç¾å®çãªè·³ã­ãåããå¾ããã¾ãã Getting Started(éå§) ã¢ããªã±ã¼ã·ã§ã³ãå®è¡ãã¦ãã ããããã®æç¹ã§ã¯é»ãç»é¢ãè¡¨ç¤ºããã¾ããç§ãã¡ããã£ããã¨ã¯ãéå¸¸ã«ã·ã³ãã«ãªKivyã¯ã©ã¹ã®:class: `~kivy.app.App`ãä½æãããã¨ã§ããããã¯ã``PongGame``Widgetã¯ã©ã¹ãä½æãã¤ã³ã¹ã¿ã³ã¹ãä½æãã¾ãããããã¢ããªã±ã¼ã·ã§ã³UIã®ã«ã¼ãè¦ç´ ã¨ãã¦è¿ãã¾ããã¾ãããã®æç¹ã§ã¦ã£ã¸ã§ããã®éå±¤ããªã¼ã¨ãã¦æ³åãã¦ãã ãããKivyã¯ãã®ã¦ã£ã¸ã§ããããªã¼ãããã©ã«ãã®ç»é¢ã«éç½®ãã¾ããæ¬¡ã®ã¹ãããã§ã¯ãPongGameã¦ã£ã¸ã§ããã®å¤è¦³ãå®ç¾©ãèæ¯ã¨ã¹ã³ã¢ãæç»ãã¾ãã æ¥½ããã§ãã¦ã­ ã¾ãããã¥ã¼ããªã¢ã«ãéå§ããåã«ä»¥ä¸ããã§ãã¯ãã¦ãã ãã: PongBallã¯ã©ã¹ã®Pythonã³ã¼ãã¯ä»¥ä¸ã®ã¨ãã:: Here is the entire code for this step: ãã®ã¹ãããã®ããã®æ´æ°ãããpythonã³ã¼ãã¨kvãã¡ã¤ã«ãä»¥ä¸ã«ããã¾ãï¼ ããããããã§ãkvã«ã¼ã«ã§ä½æãããPongBallãã®å­widgetã¸ã®åç§ããªãã¨ããäºå®ã¯å¤ããã¾ããããããä¿®æ­£ããããã«ãPongGameã¯ã©ã¹ã«:class:`ObjectProperty<kivy.properties.ObjectProperty>`  ãè¿½å ããkvã«ã¼ã«ã§ä½æãããwidgetã«æ¥ç¶ã§ãã¾ãããããçµãã£ãããupdateã¡ã½ããåã§ballãã­ããã£ãç°¡åã«åç§ã§ãã¦ãã¨ãã¸ããã¯ã­è¿ããã¨ãã§ãã¾ãï¼ ãã­ã°ã©ãã³ã°ã¬ã¤ããèª­ãã§ãWidgetã®åºæ¬æ¦å¿µï¼(:doc:`/tutorials/firstwidget`)ã¨kv Languageã®åºæ¬æ¦å¿µ(:doc:`/guide/lang`)ã®ä¸¡æ¹ãçè§£ãã¦ãããªãã°ãæåã®2ã¹ããããã¹ã­ãããã¦ãã¹ããã3ã«é²ãã§ãã ããã ã¢ããªãèµ·åããã¨ãçãä¸­ã«ç¸¦æ£ãè¡¨ç¤ºããã¦ãã¬ã¼ã¤ã¼ã®å¾ç¹ã2ã¤è¡¨ç¤ºããã¾ãã Kivyã®widgetã¯ã:meth:`on_touch_down <kivy.uix.widget.Widget.on_touch_down>` ã:meth:`on_touch_move <kivy.uix.widget.Widget.on_touch_move>`  ã:meth:`on_touch_up <kivy.uix.widget.Widget.on_touch_up>` ã®åã¡ã½ãããå®è£ãããã¨ã§å¥åã«åå¿ã§ãã¾ããããã©ã«ãã§ã¯ãWidgetã¯ã©ã¹ã¯ããããã®å­ããTrueããè¿ãã¾ã§ã¤ãã³ããæ¸¡ãããããã¹ã¦ã®å­ã®widgetã§å¯¾å¿ããã¡ã½ãããå¼ã³åºãã ãã§ãããã®ã¡ã½ãããå®è£ãã¾ãã ã«ã¼ã«ã»ã¯ã·ã§ã³ã®ä¸­ã§ãã¾ãã¾ãªãã­ãã¯ãè¿½å ãã¦é©ç¨ãããwidgetã®ã¹ã¿ã¤ã«ã¨åå®¹ãå®ç¾©ãã¾ãããããå¯è½ã§ã: Introduction ã·ã³ãã«ãªKivyã¢ããªãæºåãã¦èµ·åãã¾ããããã²ã¼ã ç¨ã®ãã£ã¬ã¯ããªã¨ã*main.py* ãã¡ã¤ã«ãä½æãã¾ãã Pythonã¨åæ§ã«ãkvãã¡ã¤ã«ã¯ã¤ã³ãã³ããä½¿ç¨ãã¦ãã¹ãããããã­ãã¯ãå®ç¾©ãã¾ãã ã<ãã¨ã>ãæå­ã®åé¨ã«ã¯ã©ã¹åã§å®ç¾©ããããã­ãã¯ã¯ã:class:`~kivy.uix.widget.Widget`ã«ã¼ã«ã§ããæå®ãããã¯ã©ã¹ã®ã¤ã³ã¹ã¿ã³ã¹ã«é©ç¨ããã¾ããä»åã®ä¾ã§ã¯ãPongGameãããWidgetãã«ç½®ãæããå ´åããã¹ã¦ã®Widgetã¤ã³ã¹ã¿ã³ã¹ã¯ããããã®ã«ã¼ã«ããã¹ã¦ã®Widgetã¤ã³ã¹ã¿ã³ã¹ã«å¯¾ãã¦å®ç¾©ãããããä¸­ã«ç¸¦ç·ã¨2ã¤ã®Labelã¦ã£ã¸ã§ãããæã¡ã¾ãã 4äººãã¬ã¼ã®Pong Gameã«ãã¦ãã ãããã»ã¨ãã©ã®ã¿ãã¬ããã«ã¯ãã«ãã¿ããããµãã¼ãããã¦ãããããä¸¡é¢ã«ãã¬ã¤ã¤ã¼ãç½®ãã¦4äººåæã«éã¶ã®ã¯ã¯ã¼ã«ã§ã¯ãªãã§ããããï¼ ç¹å®ã®ã¹ã³ã¢ã®å¾ã«ã²ã¼ã ãçµäºããã¾ãããã¬ã¤ã¤ã¼ã10ãã¤ã³ããç²å¾ãããããPLAYER 1 WINSãã©ãã«ãå¤§ããè¡¨ç¤ºããããã¡ã¤ã³ã¡ãã¥ã¼ãè¿½å ãã¦ã²ã¼ã ãéå§ãä¸æåæ­¢ããªã»ããã§ããããã«ãã¾ãã ï¼ãã³ãï¼ class:`~kivy.uix.button.Button` ã¯ã©ã¹ã¨ :class:`~kivy.uix.label.Label` ã¯ã©ã¹ããã§ãã¯ã¢ã¦ããããadd_widgetãã¨ãremove_widgetãé¢æ°ãä½¿ã£ã¦ã¦ã£ã¸ã§ãããåçã«è¿½å ã¾ãã¯åé¤ããæ¹æ³ãè§£èª¬ãã¾ãã ãã¼ã«ã®åããä½æãã¾ã ã<PongBall>ãwidgetã®ã«ã¼ã«ã®è¿½å ã ãã§ãªããã<PongGame>ãwidgetã«ã¼ã«ã®å­widgetã§ãããPongBallããè¿½å ããã¦ãã¾ãã Object Properties/Referencesï¼ãªãã¸ã§ã¯ãã®ãã­ããã£ã¨ãªãã¡ã¬ã³ã¹ï¼åç§ï¼ï¼ ã¾ã ãã¬ã¤ã¤ã¼ã¨ãã¼ã«ãè¿½å ããå¿è¦ãããã¾ãããã¼ã«ããå§ãã¾ããããæ°ãã«ãPongBallãã¯ã©ã¹ãè¿½å ãã¦ãç§ãã¡ã®ãã¼ã«ã¨ãªãwidgetãä½æãããããè·³ã­åãããã«ãã¾ãã æåã®è¡ã«ã¯æ¬¡ã®ãã®ãããã¾ã:: Pong Game Tutorial(ç¿»è¨³æ¸ã¿) Pongã¯ããªãã·ã³ãã«ã§ããã©ã±ããã¯ä¸ä¸ã«åããã ãã§ããå®éã¨ã¦ãã·ã³ãã«ãªã®ã§ããã¬ã¼ã¤ã¼widgetãã¤ãã³ãèªä½ãå¦çããå¿è¦ã¯ããã¾ããã PongGameã¯ã©ã¹ã®ãon_touch_moveãé¢æ°ãå®è£ãã¦ç»é¢ã®å·¦å³ã«ã¿ãããçºçãããã©ããããå·¦å³ã®ãã¬ã¼ã¤ã¼ã®ä½ç½®ãè¨­å®ãã¾ãã PongBall Class(PongBallã¯ã©ã¹) æºåã¯ããã§ããï¼ ãã¦ããã§ã¯å§ãã¾ããã! Scheduling Functions on the Clockï¼Clockã®ã¹ã±ã¸ã¥ã¼ãªã³ã°é¢æ°ï¼ ãã¼ã«ãç§»åããã ãã§ã¯ãªãããPongGameãã¯ã©ã¹ã®ãupdateãã¡ã½ãããå¿è¦ã«ãªãã§ããããããã«ãã²ã¼ã ãªãã¸ã§ã¯ãã¸ã®åç§ã¯æ¢ã«ããã®ã§ãã¢ããªã±ã¼ã·ã§ã³ã®æ§ç¯æã«æ°ããupdateã¡ã½ãããç°¡åã«ã¹ã±ã¸ã¥ã¼ã«ã§ãã¾ãã ãã®ã­ã£ã³ãã¹ãã­ãã¯ã¯ããPongGameãwidgetãããã¤ãã®graphicsã®åæå¤ãæãã¹ãã§ãããã®å ´åãã­ã£ã³ãã¹ã«rectangle(é·æ¹å½¢)ãè¿½å ãã¾ããrectangleã®pos(ä½ç½®)ã¯ãwidgetã®æ¨ªæ¹åã®ä¸­å¿ãã5ãã¯ã»ã«å·¦ã«è¨­å®ããyã¯0ã«è¨­å®ãã¾ããé·æ¹å½¢ã®ãµã¤ãºã¯å¹ã10ãã¯ã»ã«ãwidgetã®é«ãã¯widgetèªèº«ã®é«ãã«è¨­å®ããã¾ãããã®ããã«graphicsãå®ç¾©ããã®ã¯ãå¼ã§ä½¿ç¨ãããwidgetã®ãpropertyãå¤æ´ãããã¨ãã«ã¬ã³ããªã³ã°ãããé·æ¹å½¢ãèªåçã«æ´æ°ããããã§ãã ç´ æµã§ãããã¼ã«ã¯ãã¦ã³ããã¦ãã¾ããä»è¶³ããªãæ©è½ã¯å¯åå¼ã®ãã¬ã¼ã¤ã¼ã©ã±ããã¨ã¹ã³ã¢ã®è¨é²ã§ãããããã®æ¦å¿µã¯ãã§ã«åã®ã¹ãããã§ã«ãã¼ããã¦ããã®ã§ãã¯ã©ã¹ã¨kvã®ã«ã¼ã«ãä½æããè©³ç´°ã®å¨ã¦ã¯èª¬æãã¾ãããä»£ããã«ãã¦ã¼ã¶ã®å¥åã«å¿ãã¦Player widgetãç§»åããæ¹æ³ã«ç¦ç¹ãå½ã¦ã¾ãããããã®ã»ã¯ã·ã§ã³ã®æå¾ã«ãPongPaddleã¯ã©ã¹ã®å¨ã³ã¼ãã¨kvã«ã¼ã«ãå¾ããã¨ãã§ãã¾ãã ã<PongGame>ãã«ã¼ã«åã®æåã®ãã­ãã¯ã¯ `canvas` ãã­ãã¯ã§ãï¼ æå¾ã®2ã¤ã®ã»ã¯ã·ã§ã³ã¯ããªãé¡ä¼¼ãã¦ã¾ããããããããPongGameãã«å­widgetã¨ãã¦ãLabel widgetããè¿½å ãã¾ããä»ã®ã¨ãããä¸¡æ¹ã®ãã­ã¹ãã«ã¯ ã0ããè¨­å®ããã¦ãã¾ããã­ã¸ãã¯ãå®è£ãããããå®éã®ã¹ã³ã¢ã«è¨­å®ãã¾ãããfont_sizeãå¤§ããè¨­å®ãã¦ããã®ã§Labelã¯ãã§ã«å¤§ããè¦ãã¦ãã¦ãroot widgetã«å¯¾ãã¦ç¸å¯¾çã«éç½®ããã¦ãã¾ãããrootãã­ã¼ã¯ã¼ãã¯ãã«ã¼ã«ãé©ç¨ãããè¦ª/root widgetï¼ãã®å ´åã¯ãPongGameãï¼ãåç§ããããã«ãå­ãã­ãã¯åã§ä½¿ç¨ã§ãã¾ãã ãã¼ã«ãè·³ã­ãã¢ã«ã´ãªãºã ã¯éå¸¸ã«ç°¡åã§ããããã¼ã«ããµã¤ãã¾ãã¯ããã ããããã«ã«å½ãã£ãå ´åãããããªãªåä½ããã¾ã...ããã¯ããªããå¥½ããªã¨ãã«èªèº«ã§ä¿®æ­£ããä½å°ãããã¾ã ãã®æåã®è¡ã¯ãã¹ã¦ã®kvãã¡ã¤ã«ã«å¿è¦ã§ãããï¼ï¼kivyãã®å¾ãã«ã¹ãã¼ã¹ã¨Kivyã®ãã¼ã¸ã§ã³ãããã¯ãã§ããï¼Kivyã§å¿è¦ãªãã¼ã¸ã§ã³ãç¢ºèªããããå¾ã§å¾æ¹äºææ§ãæ±ãã¾ãï¼ã This line for example, would cause the ``update`` function of the game object to be called once every 60th of a second (60 times per second). ãã®ãã¥ã¼ããªã¢ã«ã§ã¯ãKivyãä½¿ã£ã¦ãã³ã²ã¼ã ãä½æããæ¹æ³ãæãã¾ããç§ãã¡ã¯ãã¢ããªã±ã¼ã·ã§ã³ãä½æã§èª¬æãããããªã¢ããªã±ã¼ã·ã§ã³ã®åºç¤(:ref:`quickstart`)ããå§ãã¾ããããããã¦ããã¬ã¤ãããã¨ãå¯è½ãªãã³ã²ã¼ã ãåå·¥ç¨ã«æ²¿ã£ã¦èª¬æãã¾ãã ãã¹ã¦ã®æ©è½ãæå¹ã«ããã«ã¯ä½¿ç¨ããã :doc:`/api-kivy.properties` Propertyã¯ã©ã¹ã¨:class:`~kivy.vector.Vector`ã®ã¤ã³ãã¼ããè¿½å ããå¿è¦ãããã¾ãã ã¢ããªã±ã¼ã·ã§ã³ã¦ã£ã³ãã¦ã®ãµã¤ãºãå¤æ´ãã¦ä½ãèµ·ããããç¢ºèªãã¦ãã ãããUIå¨ä½ãèªåçã«ãªãµã¤ãºããã¾ãã Windowã®æ¨æºçãªåä½ã¯ããsize_hintãpropertyã«åºã¥ãã¦è¦ç´ ã®ãµã¤ãºãå¤æ´ãããã¨ã§ããããã©ã«ãwidgetã®size_hintã¯ï¼1,1ï¼ã§ããã¤ã¾ãxyæ¹åã®ä¸¡æ¹ã«100ï¼ä¼¸å¼µãããå©ç¨å¯è½ãªã¹ãã¼ã¹ãåãããã¨ãæå³ãã¾ããé·æ¹å½¢ã¨center_xã®é ç¹ã¨ãµã¤ãºã¨ã¹ã³ã¢ã©ãã«ã®ä¸é¨ã¯ãPongGameãã¯ã©ã¹ã®ã³ã³ãã­ã¹ãåã§å®ç¾©ããã¦ããã®ã§ãå¯¾å¿ããwidgetã®propertyãå¤æ´ãããã¨ããããã®propertyã¯èªåçã«æ´æ°ããã¾ãã Kv languageãä½¿ç¨ããã¨ãèªåçã«propertyããã¤ã³ãããã¾ãã :) å¥ã®åé¡ãããã¾ãã PongBallã«ã¯å®æçã«å¼ã³åºããããmoveãé¢æ°ããããã¨ãç¢ºèªãããããåç§ãè¿½å ãã¦ããã®ã§ãã²ã¼ã ã¸ã®å¯ä¸ã®åç§ã¯ãã¢ããªã±ã¼ã·ã§ã³æ§ç¯ã¡ã½ããã§è¿ããã®ã§ãã ãã¼ã«ã®ãç§»åãæ¹æ³ãå®æçã«ã³ã¼ã«ããå¿è¦ãããã¾ããå¹¸ããªãã¨ã«Kivyã§ã¯ã:class:`~kivy.clock.Clock` ãä½¿ç¨ãã¦å¿è¦ãªæ©è½ãééãæå®ãã¦ã¹ã±ã¸ã¥ã¼ã«ãããã¨ã§ç°¡åã«å®è¡ã§ãã¾ãã .kvãã¡ã¤ã«ãä½¿ç¨ãã¦``PongGame``ã¯ã©ã¹ã®ã«ãã¯ï¼ãã£ã¼ã«ï¼è¦ããã»æãï¼ãå®ç¾©ãã¾ãã:class:ã®`~Kivy.app.App`ã¯`PongApp`ã¨ããååãªã®ã§ãåããã£ã¬ã¯ããªåã«``pong.kv``ãä½ããã¨ã§ãã¢ããªã±ã¼ã·ã§ã³ãå®è¡ãããã¨ãã«èªåçã«èª­ã¿è¾¼ã¾ãã¾ããã*``pong.kv``* ã¨ããååã®ãã¡ã¤ã«ãä½æãã¦ä»¥ä¸ã®åå®¹ãè¿½å ãã¦ãã ããã :class:`~kivy.properties.NumericProperty` ã§ã¯ãåãã¬ã¤ã¤ã¼ã®ã¹ã³ã¢ãä¿æãã¾ãã ãPongGameãã®ã¹ã³ã¢ã©ãã«ã¯NumericPropertyã¹ã³ã¢ãå¤æ´ãããã¨ã§æ´æ°ããããPongGameãã®å­ã©ãã«ã®text propertyãæ´æ°ããã¾ãããã®ãã¤ã³ãã£ã³ã°ã¯ãKivyã :mod:`~kivy.properties` ãå¯¾å¿ããkvãã¡ã¤ã«åã®ä»»æã®åç§ã«èªåçã«ãã¤ã³ããããããã«çºçãã¾ãããã¼ã«ãä¸¡ãµã¤ãããé£ã³åºããããPongGameãã¯ã©ã¹ã®æ´æ°ã¡ã½ãããå¤æ´ãã¦ã¹ã³ã¢ãæ´æ°ãããã¼ã«ãåã³æä¾ãã¾ããã¾ãããPongPaddleãã¯ã©ã¹ã¯ãbounce_ballãã¡ã½ãããå®è£ãã¦ããããããã¼ã«ãã©ã±ããã«å½ããå ´æã«å¿ãã¦ãã¼ã«ã¯éãè·³ã­æ¹ããã¾ãã ãPongPaddleãã¯ã©ã¹ã®ã³ã¼ãã¯ä»¥ä¸ã®ã¨ããã§ãã ãããããã³ã®ãã¥ã¼ããªã¢ã«ã¸ ãã¦ããã³ã²ã¼ã ã¯å¤§ä½å®æãã¾ããããã¥ã¼ããªã¢ã«ã§åãä¸ãã¦ããåå®¹ããã¹ã¦çè§£ãã¦ãããªãã°ãä»åº¦ã¯ã²ã¼ã ãæ¹åããæ¹æ³ã«ã¤ãã¦èãã¦ã¿ã¦ãã ãããæ¹åããã«ã¯ããã¤ãã®ã¢ã¤ãã¢ãããã¾ãï¼ Where To Go Now?(ã©ãã«è¡ã?) åã¹ãããã®ã½ã¼ã¹ã³ã¼ãã¨ãã¡ã¤ã«å¨ä½ã®ã½ã¼ã¹ã³ã¼ãã¯Kivyã®examplesãã£ã¬ã¯ããªã®tutorials / pong / ã«ããã¾ã Kivyã®examplesãã£ã¬ã¯ããªéä¸ã® `tutorials/pong/`  ã«åã¹ãããã®ã½ã¼ã¹ã³ã¼ãã¨å¨ä½ã®ã½ã¼ã¹ã³ã¼ãã®ãã¡ã¤ã«ãããã¾ãã Kivyãã¤ã³ã¹ãã¼ã«ãã¦ãã¾ããï¼ è©³ç´°ãªèª¬æã¯ :doc:`/installation/installation`  ã®é ãåç§ãã¦ãã ããã åºæ¬çãªKivyã®ã¢ããªã±ã¼ã·ã§ã³ã®å®è¡æ¹æ³ããã¦ãã¾ããï¼ ããããªãå ´åã¯ã:ref:`quickstart` ãåç§ãã¦ãã ããã widgetã®å­ãè¿½å ãã¾ã widgetã®ã¬ã³ããªã³ã°æ¹æ³ãå®ç¾©ããGraphicså½ä»¤ãè¿½å ã§ãããcanvasãã»ã¯ã·ã§ã³ãå®ç¾©ãã¾ãã main.py: pong.kv: propertyã®å¤ãã»ãããã¾ã 