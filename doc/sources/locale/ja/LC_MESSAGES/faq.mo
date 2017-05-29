Þ    :      ì              ¼     ½  ~   É  P  H  
    é  ¤  +   
  Ê  º
  ?     ¯  Å     u       >   ª     é  9   í    '  t  9     ®     ½     Ñ  h   î  @  W  Å     n   ^    Í  "   Ý        3     :   ¸     ó  J        W    ÷  n   y  W   è     @  	  L  !   V      x   y          !  Z   !  F   ê!  J   1"  À   |"  S  =#  D   $  %   Ö$     ü$     %  u  6&  z   ¬'     '(  C   E(  "   (  0   ¬(     Ý(  +   ý(  Í  ))  $   ÷*     +  l  µ+  ·  ".    Ú2  l   á5  µ  N6     9  Á  9  D   ]<  R   ¢<     õ<     |=  9   =  Û  É=  #  ¥@     ÉD     áD  U   þD  Ö   TE  ä  +F  X  H  Ì   iI    6J  "   DL  ¼   gL     $M  H   ¤M  -   íM     N  S  ©N  Â  ýO  µ   ÀV  §   vW  /   X  =  NX  W   Y  (   äY     Z  Õ   Z     h[  ^   ð[  ~   O\  Ø   Î\  ò  §]     _  O   "`    r`  ð   xa  4  ib  	  d  M   ¨e  C   öe  "   :f  ,   ]f  2   f  )   ½f   Android FAQ Basically, you need to root the device, remove the SystemUI package, add some lines to the xml configuration, and you're done. Be patient! Especially on IRC. We will try to get to you if we're available. If not, send an email and just wait. Most questions are already answered in the docs or somewhere else and can be found with some research. If your questions don't reflect that you've actually thought through what you're asking, it might not be well received. But what about speed? If you compare execution speeds of implementations for a certain set of algorithms (esp. number crunching) you will find that Python is a lot slower than say, C++. Now you may be even more convinced that it's not a good idea in our case to use Python. Drawing sophisticated graphics (and we are not talking about your grandmother's OpenGL here) is computationally quite expensive and given that we often want to do that for rich user experiences, that would be a fair argument. **But**, in virtually every case your application ends up spending most of the time (by far) executing the same part of the code. In Kivy, for example, these parts are event dispatching and graphics drawing. Now Python allows you to do something to make these parts much faster. By using Cython, you can compile your code down to the C level, and from there your usual C compiler optimizes things. This is a pretty pain free process and if you add some hints to your code, the result becomes even faster. We are talking about a speed up in performance by a factor of anything between 1x and up to more than 1000x (greatly depends on your code). In Kivy, we did this for you and implemented the portions of our code, where efficiency really is critical, on the C level. Crash on touch interaction on Android 2.3.x Despite having the same name, Kivy's python-for-android is not related to the python-for-android project from SL4A, Py4A, or android-python27. They are distinctly different projects with different goals. You may be able to use Py4A with Kivy, but no code or effort has been made to do so. The Kivy team feels that our python-for-android is the best solution for us going forward, and attempts to integrate with and support Py4A is not a good use of our time. Discuss that proposal with us in a timely manner. Get feedback. Do some research **yourself**. GSoC is not about us teaching you something and you getting paid for that. It is about you trying to achieve agreed upon goals by yourself with our support. The main driving force in this should be, obviously, yourself.  Many students come up and ask what they should do. Well, we don't know because we know neither your interests nor your skills. Show us you're serious about it and take initiative. Do you accept patches? Does Kivy support Python 3.x? Does the Kivy project participate in Google's Summer of Code ? FAQ Fatal Python error: (pygame parachute) Segmentation Fault For graphics drawing, we also leverage today's GPUs which are, for some tasks such as graphics rasterization, much more efficient than a CPU. Kivy does as much as is reasonable on the GPU to maximize performance. If you use our Canvas API to do the drawing, there is even a compiler that we invented which optimizes your drawing code automatically. If you keep your drawing mostly on the GPU, much of your program's execution speed is not determined by the programming language used, but by the graphics hardware you throw at it. Furthermore, since some of our core developers decided to drop their full-time jobs and turn to this project completely, it was decided that a more professional foundation had to be laid. Kivy is that foundation. It is supposed to be a stable and professional product. Technically, Kivy is not really a successor to PyMT because there is no easy migration path between them. However, the goal is the same: Producing high-quality applications for novel user interfaces. This is why we encourage everyone to base new projects on Kivy instead of PyMT. Active development of PyMT has stalled. Maintenance patches are still accepted. Good luck! :-) Here's a checklist: How is Kivy related to PyMT? However, be aware that while Kivy will run in Python 3.3+, our iOS build tools still require Python 2.7. If not, please report a detailed issue on github by following the instructions in the :ref:`reporting_issues` section of the :doc:`contribute` documentation. This is very important for us because that kind of error can be very hard to debug. Give us all the information you can give about your environment and execution. If not, this means you have probably triggered some OpenGL code without an available OpenGL context. If you are loading images, atlases, using graphics instructions, you must spawn a Window first:: If you use Kivy from our development version, you must compile it before using it. In the kivy directory, do:: If you want to participate as a student and want to maximize your chances of being accepted, start talking to us today and try fixing some smaller (or larger, if you can ;-) problems to get used to our workflow. If we know you can work well with us, that'd be a big plus. ImportError: No module named event In the case of the "USB Mass Storage" mode error, and if you don't want to keep unplugging the device, set the usb option to Power. Is it possible to have a kiosk app on android 3.0 ? Let us try to give a thorough answer; please bear with us. Look at the source code. Make sure to read through the website and at least skim the documentation. Most of time, this issue is due to the usage of old graphics drivers. Install the latest graphics driver available for your graphics card, and it should be ok. Our developers are professionals and are pretty savvy in their area of expertise. However, before Kivy came around there was (and still is) a project named PyMT that was led by our core developers. We learned a great deal from that project during the time that we developed it. In the more than two years of research and development we found many interesting ways to improve the design of our framework. We have performed numerous benchmarks and as it turns out, to achieve the great speed and flexibility that Kivy has, we had to rewrite quite a big portion of the codebase, making this a backwards-incompatible but future-proof decision. Most notable are the performance increases, which are just incredible. Kivy starts and operates just so much faster, due to these heavy optimizations. We also had the opportunity to work with businesses and associations using PyMT. We were able to test our product on a large diversity of setups and made PyMT work on all of them. Writing a system such as Kivy or PyMT is one thing. Making it work under all these different conditions is another. We have a good background here, and brought our knowledge to Kivy. Pick an idea that you think is interesting from the ideas list (see link above) or come up with your own idea. Potential students ask whether we participate in GSoC. The clear answer is: Indeed. :-) Project FAQ Python is a very agile language that allows you to do many things in a (by comparison) short time. For many development scenarios, we strongly prefer writing our application quickly in a high-level language such as Python, testing it, then optionally optimizing it. Read our contribution guidelines. Technical FAQ There are a number of questions that repeatedly need to be answered. The following document tries to answer some of them. There have been reports of crashes on Adreno 200/205 based devices. Apps otherwise run fine but crash when interacted with/through the screen. These reports also mentioned the issue being resolved when moving to an ICS or higher ROM. This error message can occur under various circumstances. Ensure that: Thomas Hansen have wrote a detailed answer on the kivy-users mailing list: Trust us when we say that we have given this very careful thought. We have performed many different benchmarks and come up with some clever optimizations to make your application run smoothly. We believe that these (and other) optimizations that Kivy does for you already make most applications fast enough by far. Often you will even want to limit the speed of the application in order not to waste resources. But even if this is not sufficient, you still have the option of using Cython for your own code to *greatly* speed it up. What's the difference between python-for-android from Kivy and SL4A? Why do you use Python? Isn't it slow? Write a draft proposal about what you want to do. Include what you understand the current state is (very roughly), what you would like to improve and how, etc. Yes! As of version 1.8.0 Kivy supports both Python >= 2.7 and Python >= 3.3 with the same codebase. Python 3 is also now supported by python-for-android. Yes, we love patches. In order to ensure a smooth integration of your precious changes however, please make sure to read our contribution guidelines. Obviously we don't accept every patch. Your patch has to be consistent with our styleguide and, more importantly, make sense. It does make sense to talk to us before you come up with bigger changes, especially new features. You graphics card or its drivers might be too old. Update your graphics drivers to the latest available version and retry. could not extract public data https://groups.google.com/d/msg/kivy-users/QKoCekAR1c0/yV-85Y_iAwoJ undefined symbol: glGenerateMipmap you are not currently in "USB Mass Storage" mode you have a phone with an sdcard you have permissions to write to the sdcard Project-Id-Version: Kivy 1.10.0
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
 Android FAQ (Androidã«é¢ããFAQ) åºæ¬çã«ã¯ãããã¤ã¹ãã«ã¼ãåããSystemUIããã±ã¼ã¸ãåé¤ããxmlè¨­å®ã«æ°è¡ãæ¸ãå ããã°ãäºã¯æãã¾ãã è¾æ±å¼·ããã£ã¦ãã ãããç¹ã«IRC (Internet Relay Chat) ã®å ´åã¯ããã§ããæãã¯é½åã®ã¤ããããã¨ãã«ããªãã¸ã®é£çµ¡ãè©¦ã¿ã¾ããããé£çµ¡ãç¡ãå ´åã¯ã¡ã¼ã«ããã ãããããã¦å¾ã£ã¦ãã¦ãã ãããã»ã¨ãã©ã®è³ªåã¯ããã­ã¥ã¡ã³ãã¼ã·ã§ã³ãä½ãã§æ¢ã«ç­ãããã¦ãããã®ã§ããããªãµã¼ãã«ãã£ã¦è¦ã¤ãããã®ã§ããããããªãã®è³ªåããããªããæ¬å½ã«ããã­ãããã¨ãåæ ãã¦ããªãã®ã§ããã°ãæãã¯ããããã¾ãåãåããªãããããã¾ããã ãããå®è¡éåº¦ã¨ãªãã¨ã©ãã§ãããã? ãããããã¤ãã®ã¢ã«ã´ãªãºã  (ç¹ã«è¤éãªè¨ç®ãªã©) ãå®è£ããå®è¡éåº¦ãæ¯è¼ããã¨ããã¨ãPythonã¯ããã¨ãã° C++ ãªã©ããããããã¦éããã¨ããããã§ãããããããæ¬¡ã®ä¾ãåºãã°ãã¢ããªãä½ãã®ã«Pythonãä½¿ãã®ãè¯ãã¢ã¤ãã£ã¢ã§ã¯ãªãã¨ãããã¨ã«ãããä¸å±¤ç´å¾ãã¦ãã¾ãããããã¾ãããããã¯ã°ã©ãã£ãã¯ã®æç»ã§ããæ´ç·´ãããã°ã©ãã£ãã¯ãæç»ããã®ã¯"ã¨ã¦ãéããè¨ç®ã§ãã (2ä¸ä»£åãªã©ã®å¤ãOpenGLã®è©±ããã¦ããã®ã§ã¯ããã¾ãã)ãã¦ã¼ã¶ã¼ã¨ã¯ã¹ããªã¨ã³ã¹ã®åä¸ã®ããã«ãã°ãã°è¡ããããªãã¾ãã®ã§ãå¬å¹³ãªæ ¹æ ã§ããã¾ãããã" **ããã** è¦ãç®ã«ã¯ããã¹ã¦ã®å ´åãã¢ããªã¯ã³ã¼ãã®åãé¨åãå®è¡ãããã¨ã«ãã»ã¨ãã©ã®æéãè²»ããã¦çµããã¾ããKivyã«ããã¦ã¯ãããã¯ã¤ãã³ããã£ã¹ããããã°ã©ãã£ãã¯ã®æç»ã§ããPythonã§ã¯ããããã£ãé¨åãéãèµ°ãããããã®ã³ã¼ããæ¸ããã¨ãã§ãã¾ãã" Cythonãä½¿ããã¨ã§ãã³ã¼ããCã®ã¬ãã«ã«ã¾ã§ã³ã³ãã¤ã«ãããã¨ãã§ãã¾ããããã¦ããã«ãç¹å¥ã§ãªãä¸è¬ã®Cã³ã³ãã¤ã©ããè«¸ããæé©åãã¦ãããã®ã§ããããã¯ã¾ã£ããçã¿ãä¼´ããªããã­ã»ã¹ã§ãããããªããã³ã¼ãã«ä½ãããã®ãã³ããå ããã°ãã¢ããªã¯ããé«éã«åããã¨ã«ãªãã§ããããæãã¯å°ãªãã¨ã1åä»¥ä¸ãæå¤§ã§1000åãè¶ããããã©ã¼ãã³ã¹ã®é«éåã«ã¤ãã¦è©±ãã¦ãã¾ããããã®åº¦åã¯ããªãã®ã³ã¼ãã«å¤§ããä¾å­ãã¾ããKivyã§ã¯ãæããããªãã®ä»£ããã«ãããè¡ãã¾ããæãã¯ãå¹çæ§ããããã¦éè¦ãªã³ã¼ãã®ä¸é¨ãCã§æ¸ãã¦ãã¾ãã Crash on touch interaction on Android 2.3.x (Android 2.3.x ä¸ã®ãã¿ããæä½ã«ããã¯ã©ãã·ã¥) åãååãæã¤ã«ãããããããKivyã®python-for-androidã¯SL4A, Py4A ãããã¯ android-python27 ã® python-for-android ãã­ã¸ã§ã¯ãã¨é¢ä¿ã¯ããã¾ããããããã¯ç¸ç°ãªãç®çãæã£ããã¾ã£ããå¥ã®ãã­ã¸ã§ã¯ããªã®ã§ããPy4AãKivyã§ä½¿ããã¨ã¯ã§ããããããã¾ãããããã®ããã®ã³ã¼ãã®éçºãããã¯åªåã¯ãããã¾ã§ãªããããã¨ãããã¾ãããKivyãã¼ã ã¨ãã¦ã¯æãã®python-for-androidãããåã«é²ãããã®æè¯è§£ã§ãããPy4Aãçµã¿è¾¼ãã ããµãã¼ããããããããã®è©¦ã¿ã¯ãæå¹ãªæéã®ä½¿ãæ¹ã§ã¯ãªãã¨æãã¦ãã¾ãã ãã®èæ¡ã«ã¤ãã¦é©å½ãªã¨ãã«æãã¨ãã£ã¹ã«ãã·ã§ã³ããã¾ããããããã§ãã£ã¼ãããã¯ãå¾ã¦ãã ããã **èªåã§** ç ç©¶ã«åãçµãã§ã¿ã¦ãã ãããGSoCã¯ï¼æããåè¬çã§ããããªãã«ä½ããæããããã«å¯¾ãã¦ããªããå¯¾ä¾¡ãæ¯æãå ´ã§ã¯ããã¾ãããããªãèªèº«ããæãã®ãµãã¼ããå¾ã¦ãããªãã®ç®æ¨ãæãéããå ´ãªã®ã§ãããã®åååã¯ããã¡ããããªãèªèº«ã§ããå¤ãã®åè¬çããã£ã¦æ¥ã¦ã¯ä½ãããã°ããã®ããå°ã­ã¦ãã¾ãããããªã®ã¯ç¥ã£ããã¨ã§ã¯ããã¾ããããªããªãæãã¯ãããªãã®èå³ãã¹ã­ã«ãç¥ããªãããã§ããããªããçå£ã§ãã¤ãã·ã¢ãããã¨ã£ã¦åé¡è§£æ±ºã«æãã¨ãããè¦ãã¦ãã ããã Do you accept patches? (ãããã¯åãä»ãã¦ããã¾ãã?) Does Kivy support Python 3.x? (Kivyã¯Python3.xããµãã¼ããã¦ãã¾ãã?) Does the Kivy project participate in Google's Summer of Code? (Kivyãã­ã¸ã§ã¯ãã¯ Google Summer of Code ã«åå ãã¾ãã?) FAQ (ç¿»è¨³æ¸ã¿) Fatal Python error: (pygame parachute) Segmentation Fault ã°ã©ãã£ãã¯ã®æç»ã«é¢ãã¦ãæãã¯ä»æ¥ã®GPUããããã«æ´»ç¨ãã¦ãã¾ããã©ã¹ã¿ã©ã¤ãºã®ãããªã¿ã¹ã¯ã«ã¤ãã¦ã¯ãGPUã¯CPUããã¯ããã«å¹çãè¯ãã®ã§ããKivyã¯GPUã®ããã©ã¼ãã³ã¹ããã»ã¨ãã©æå¤§éã«æ´»ç¨ãã¾ãããã Canvas API ãä½¿ã£ã¦æç»ããã®ã§ããã°ãæç»ã«é¢ããã³ã¼ããèªåçã«æé©åãã¦ãããã³ã³ãã¤ã© (æããéçºãã¾ãã) ãæ­è¼ãã¦ãã¾ããããæç»ãã»ã¨ãã©GPUã®ä¸ã§ã­ã¼ãããã®ã§ããã°ããã­ã°ã©ã ã®å®è¡éåº¦ã®å¤§é¨åã¯ããã­ã°ã©ãã³ã°è¨èªã§ã¯ãªããã°ã©ãã£ãã¯ã®ãã¼ãã¦ã§ã¢ç°å¢ã«ãã£ã¦æ±ºã¾ãã¾ãã ããã«ãä¸­æ ¸ãæãéçºèãã¡ã®ãã¡ä½äººãã¯ãå¸¸å¤ã§åãã¦ããä»äºãè¾ãããã®ãã­ã¸ã§ã¯ãã«å®å¨ã«æºããã¨ããæ±ºæ­ããã¾ããããã®ããããããã­ãã§ãã·ã§ãã«ãªè²¡å£ãè¨­ç«ããå¿è¦ãçãã¾ãããKivyãããã®è²¡å£ãªã®ã§ããKivyã¯å®å®ãã¦åä½ãããã­ãã§ãã·ã§ãã«ãªè£½åã§ãããã¨ãæå¾ããã¦ãã¾ããæè¡çã«ã¯ãKivy ã¯ PyMT ã®å¾ç¶ã§ã¯ããã¾ããããªããªãä¸¡èãå®¹æã«ç§»æ¤ããææ®µãå­å¨ããªãããã§ããããããã®ç®çã¨ããã¨ããã¯åãã§ã: ããã¯æ°ããã¦ã¼ã¶ã¼ã¤ã³ã¿ã¼ãã§ã¼ã¹ãè¨­è¨ããããã®ãé«åè³ªãªã¢ããªã±ã¼ã·ã§ã³ã®ãã­ãã¥ã¼ã¹ã§ããä»¥ä¸ãããªãPyMTã§ã¯ãªãKivyãä½¿ã£ã¦ãã­ã¸ã§ã¯ãéçºãè¡ããã¨ãäººã«å§ããã®ãããã®çç±ã¨ãªãã¾ããPyMTã®ç©æ¥µçãªéçºã¯è¡ããªããªãã¾ããããã¡ã³ããã³ã¹ã»ãããã¯ä»ã§ãåãä»ãã¦ãã¾ãã ã°ããã©ãã¯! :-) ãã§ãã¯ãªã¹ãã§ã: How is Kivy related to PyMT? (Kivyã¯PyMTã¨ã©ã®ãããªé¢ä¿ã«ããã¾ãã?) ãããããã£ã¦ããã¦ãããããã®ã¯ãKivy ã¯ Python 3.3+ ã§ãèµ°ãã¾ãããæãã®æä¾ãã iOSç¨ã®ãã«ããã¼ã«ã«ã¯ãªã Python 2.7 ãå¿è¦ã§ããã¨ãããã¨ã§ãã ããã§ããªããã¾ããããªãã®ã§ããã°ã :doc:`contribute` ãã¼ã¸ã® :ref:`reporting_issues` ã»ã¯ã·ã§ã³ã«ããæé ã«ãããã£ã¦ãåé¡ã®è©³ç´°ã github ä¸ã§å ±åãã¦ãã ããããã®æã®ã¨ã©ã¼ã¯ãããã°ããã®ãã¨ã¦ãå¤§å¤ãªã®ã§ãè©³ç´°ãªã¬ãã¼ãã¯æãã«ã¨ã£ã¦ã¨ã¦ãéè¦ã§ããããªãã®ç°å¢ãå®è¡ã«é¢ãã¦ãæä¾å¯è½ãªãã¹ã¦ã®æå ±ãæãã¦ããã ããã°å¹¸ãã§ãã ãããã¾ããããªãå ´åã¯ãã²ãã£ã¨ããã¨å©ç¨å¯è½ãª OpenGL ã³ã³ãã­ã¹ãç¡ãã«ãOpenGL ã®å½ä»¤ãå¼ã³åºããã¨ããã®ã§ã¯ãªãã§ããããããã graphics instruction ãä½¿ã£ã¦ç»åãã¢ãã©ã¹ãèª­ã¿è¾¼ããã¨ããã®ã§ããã°ãã¾ã Window ãã¹ãã¼ã³ãã¦ãã ãã:: ãã Kivy ã®éçºç (development version) ãä½¿ãã®ã§ããã°ãä½¿ç¨åã«ã³ã³ãã¤ã«ããå¿è¦ãããã¾ããkivy ã®ãã£ã¬ã¯ããªã«è¡ããä»¥ä¸ãå®è¡ãã¦ãã ãã:: ããåè¬èã¨ãã¦ã®åå ãæãã§ãã¦ããã¤ã¢ã¯ã»ããã®å¯è½æ§ãé«ãããã®ã§ããã°ãä»ããã«ã§ãæãã¨ã³ã³ã¿ã¯ããåããæãã®ã¯ã¼ã¯ãã­ã¼ã«æ£ããããã«ãããã¤ãã®å°ããªåé¡ã®è§£æ±ºã«åãçµãã§ã¿ã¦ãã ããã(å¯è½ãªãå¤§ããªåé¡ã§ãæ§ãã¾ãããã) ãããããªãã¯æãã¨ãã¾ãããããã ã¨ãããã¨ãæããç¥ãã°ãããã¯ããªãã«ã¨ã£ã¦å¤§ããªãã©ã¹ã«ãªãã§ãããã ImportError: No module named event "USB Mass Storage" ã¢ã¼ãã«é¢ããã¨ã©ã¼ã®å ´åã§ãããããã¤ã¹ãã¤ãªãã ã¾ã¾ã«ãããå ´åã¯ãUSBãªãã·ã§ã³ã Power ã«ã»ãããã¦ãã ããã Is it possible to have a kiosk app on android 3.0 ? (Android 3.0 ä¸ã§ã­ãªã¹ã¯ã¢ããªãä½ããã¨ã¯ã§ãã¾ãã?) å¾¹åºçã«åç­ãã¾ããããå°ããä»ãåããã ããã ã½ã¼ã¹ã³ã¼ããçºãã¦ãã ããã ã¦ã§ããµã¤ããèª­ã¿éãã¦ãã ãããå°ãªãã¨ãããã­ã¥ã¡ã³ãã¼ã·ã§ã³ã¯ç®ãéãã¦ããã¦ãã ããã ã»ã¨ãã©ã®å ´åããã®åé¡ãçºçããã®ã¯å¤ãã°ã©ãã£ãã¯ãã©ã¤ãã¼ãä½¿ç¨ãã¦ãããã¨ãåå ã§ããããªãã®ã°ã©ãã£ãã¯ã«ã¼ãã§å©ç¨å¯è½ãªãã©ã¤ãã¼ã®ãã¡ãææ°ã®ãã®ãã¤ã³ã¹ãã¼ã«ãã¦ãã ãããããããã°ãã¾ãããã«éãããã¾ããã æãã®éçºèã¯ãã­ãã§ãã·ã§ãã«ã§ãå°éé åã®ç¥è­ãæè¡ã«ã¨ã¦ãç²¾éãã¦ãã¾ãããããKivyã®åã«ã¯ãPyMTã¨ãããã­ã¸ã§ã¯ããããã¾ããã(ä»ãããã¾ããã)ãã®PyMTã¯ãæãã®éçºèã®ãã¡ãä¸­æ ¸ãæãèãã¡ã«ãã£ã¦é²ãããã¦ãã¾ãããéçºä¸­ãæãã¯ãã® PyMT ãã­ã¸ã§ã¯ãããéå¸¸ã«å¤ãã®ãã¨ãå­¦ã³ã¾ããã2å¹´ä»¥ä¸ã«ããã£ã¦ç ç©¶ã¨éçºãè¡ãã¾ãããããã¬ã¼ã ã¯ã¼ã¯ã®ãã¶ã¤ã³ãæ¹åããããã®èå³æ·±ãææ³ãæ°å¤ãçºè¦ãã¾ãããæ°å¤ãã®ãã³ããã¼ã¯ãã¹ããè¡ã£ãçµæã(ç¾å¨Kivyãå®ç¾ãã¦ãããããª) ã¹ãã¼ãã¨æè»æ§ãéæããã«ã¯ãã³ã¼ããã¼ã¹ã®å¤§é¨åãæ¸ãæããªããã°ãªããªããªãã¾ãããããã«ããPyMTã¯ä¸ä½éäºæã¨ãªãã¾ãããããããå°æ¥æ§ã®ããæ±ºå®ã§ãããã£ã¨ãç¹ç­ãã¹ããã¨ã¯ããã©ã¼ãã³ã¹ã®åä¸ã§ï¼ããã¯ä¿¡ããããªããããªãã®ã§ããä¸ã§è¿°ã¹ããããªæ°ãã®æé©åã«ãããKivyã¯å§åçã«éãèµ·åãããªãã¬ã¼ã·ã§ã³ãè¡ãã¾ããæãã«ã¯ PyMT ãä½¿ã£ã¦ãã¸ãã¹ãå£ä½ã¨ã®ä»äºã«å¾äºããæ©ä¼ãããã¾ãããéå¸¸ã«æ§ããªè¦æ±ã®ä¸ã§è£½åãè©¦ããã¨ãã§ãã¾ãããããããã®ãã¹ã¦ã«å¯¾ãã¦ PyMT ãåããã¦ãã¾ãããKivy ã PyMT ã§ã·ã¹ãã ãæ¸ããã¨ã¨ããã¹ã¦ã®ç°ãªãç°å¢ä¸ã§åãããã«ãããã¨ã¯ã¾ãå¥ã®è©±ã§ããæãã«ã¯ãã®ãããªç´ æ´ãããèæ¯ããããããã§å¾ãããç¥è­ã Kivy ã«æã¡è¾¼ãã§ããã®ã§ãã ã¢ã¤ãã£ã¢ãªã¹ã (ä¸ã®ãªã³ã¯ããã©ã£ã¦ãã ãã) ããé¢ç½ãã¨æã£ããã®ãæ¾ããããããã¯èªåã§ã¢ã¤ãã£ã¢ãèãã¦ãã ããã GSoC ã¸ã®åå ãæ¤è¨ãã¦ããäººãã¡ãããæããåå ãããã©ãããå°ã­ããã¾ããã¯ã£ããç­ãã¾ããããã¤ã¨ã¹ã§ãã:-) Project FAQ (ãã­ã¸ã§ã¯ãã«é¢ããFAQ) Python ã¯ã¨ã¦ãæ©æãªè¨èªã§ããæ¯è¼çç­ãæéã§ãããããã®ãã®ãæ¸ããã¨ãã§ãã¾ããå¤ãã®éçºã®ç¾å ´ã§ã¯ãPython ã®ãããªé«ç´è¨èªãä½¿ã£ã¦ããã£ã¨ã¢ããªãæ¸ãããã¹ãããæ¡ä»¶ã«ãã£ã¦ã¯æé©åãããã¨ãå¼·ãå¥½ã¾ãã¾ãã ã³ã³ããªãã¥ã¼ã·ã§ã³ã«é¢ããã¬ã¤ãã©ã¤ã³ãèª­ãã§ãã ããã Techincal FAQ (æè¡é¢ã«é¢ããFAQ) åããããªè³ªåãä½åº¦ãåãããã¨ãããã®ã§ãããããã§ã¯ãã®ä¸é¨ã«å¯¾ããåç­ãè¡ãã¾ãã Adreno 200/205 ãç¨ããããã¤ã¹ã§ã®ã¯ã©ãã·ã¥ãå ±åããã¦ãã¾ãããã¾ãåãã¢ããªã§ããã¹ã¯ãªã¼ã³ãéããã¤ã³ã¿ã©ã¯ã·ã§ã³ã«ãã£ã¦ã¯ã©ãã·ã¥ãã¾ãã ãããã®å ±åã§ã¯ãICSãé«åº¦ãªROMã«å¤ãããã¨ã§åé¡ãè§£æ±ºãããã¨ã«ã¤ãã¦ãè§¦ãããã¦ãã¾ãã ãã®ã¨ã©ã¼ã¯æ§ããªç¶æ³ä¸ã§çºçãå¾ã¾ããä»¥ä¸ãç¢ºèªãã¦ãã ãã: ãã¼ãã¹ã»ãã³ã»ã³ (Thomas Hansen) ã kivy-users ã¡ã¼ãªã³ã°ãªã¹ãä¸ã§è©³ããåç­ãå¯ãã¦ãã¾ã: æããä¿¡ãã¦ãã ãããæãã¯å¤ãã®ãã³ããã¼ã¯ãã¹ããè¡ããããªãã®ã¢ããªãåæ»ã«åããããã®ãããã¤ãã®ã¯ã¬ãã¼ãªæé©åã«ãã©ãã¤ããã®ã§ãã Kivyãè¡ãæé©åã ãããã£ã¦ãã¦ããã¢ããªã¯ååé«éã«åããã®ã¨ä¿¡ãã¦ãã¾ããè³æºãæµªè²»ããªãããã«ãã¢ããªã®å®è¡éåº¦ãå¶éããããªãããããã¾ãããããããå¶éããçµæãå®è¡éåº¦ãååãªãã®ã§ãªããªã£ãã¨ãã¦ããã¾ã Cython ã¨ããé¸æè¢ãããã¾ããããªãèªèº«ã®ã³ã¼ãã« Cython ãé©ç¨ãããã¨ã§ã *å¤§å¹ãª* ã¹ãã¼ãã¢ãããè¦è¾¼ããã§ãããã What's the difference between python-for-android from Kivy and SL4A? (python-for-android ã¯ãkivyã¨SL4Aã®éã§ä½ãéãã®ã?) Why do you use Python? Isn't it slow? (ãªãPythonãªã®ã? éããªãã?) ããªãããããããã¨ã«é¢ããèæ¡ãä½ã£ã¦ãã ãããç¾å¨ã®ç¶æ³ã«ã¤ãã¦ä½ãçè§£ãã¦ããã (ã¨ã¦ãå¤§éæã§ããã¾ãã¾ãã)ãä½ããã©ãæ¹åãããã®ããªã©ãå«ããããã«ãã¦ãã ããã ãã¡ããã§ã! ãã¼ã¸ã§ã³1.8.0ã®æç¹ã§ãKivy ã¯åãã³ã¼ããã¼ã¹ã§ Python >= 2.7 ã¨ Python >= 3.3 ããµãã¼ããã¦ãã¾ããPython 3 ã¯ã¾ããpython-for-androidã§ãç¾å¨ãµãã¼ãããã¦ãã¾ãã ã¯ããåãã§ããã ããããªãã®è²´éãªä¿®æ­£ãåæ»ã«çµã¿è¾¼ããããã«ãã³ã³ããªãã¥ã¼ã·ã§ã³ã«é¢ããã¬ã¤ãã©ã¤ã³ãå¿ãèª­ãã§ããã¦ãã ããããã¡ãããããããªãä½ã§ãããã§ãåãåãããã§ã¯ããã¾ããããããã¯æãã®ã¹ã¿ã¤ã«ã¬ã¤ãã¨èª¿åãã¦ããªããã°ãªãã¾ããããããéè¦ãªã®ã¯ãææç¾©ãªãããã§ããã¨ãããã¨ã§ããå¤§ããªå¤æ´ãã¨ãããæ°ããç¹å¾´ãæãã¤ãããæãã«é£çµ¡ããã ããã ããªãã®ã°ã©ãã£ãã¯ã«ã¼ãããããã¯ãã®ãã©ã¤ãã¼ããã¾ãã«å¤ããã¨ã«èµ·å ãã¾ãããã©ã¤ãã¼ããå©ç¨å¯è½ãªãã®ã®ãã¡ææ°ã®ãã®ã«ã¢ãããã¼ãããä¸ã§ããã1åº¦è©¦ãã¦ã¿ã¦ãã ããã could not extract public data (ãããªãã¯ãã¼ã¿ãèª­ã¿è¾¼ããªã) https://groups.google.com/d/msg/kivy-users/QKoCekAR1c0/yV-85Y_iAwoJ undefined symbol: glGenerateMipmap ç¾å¨ "USB Mass Storage" ã¢ã¼ãã«ãªã æºå¸¯é»è©±ã«SDã«ã¼ããæ¿å¥ããã¦ãã SDã«ã¼ãã¸ã®æ¸è¾¼ã¿æ¨©éããã 