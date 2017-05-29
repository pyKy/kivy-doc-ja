Þ    '      T                n       ü  m          b   ¡  Á         Æ     ç             1   1  e   c  	   É      Ó     t  k   x     ä  ?   t  #   ´     Ø     å  ÷   r	     j
     
  O   
      ä
  >     !   D  ¥   f       ¸   &  Ç   ß  õ   §       B   ©  ª   ì  Q     S   é  Í  =       0    ±   Ï  3     ¦   µ  ÿ   \  ;   \  M     &   æ  A     P   O           $  Ë   A          %  Õ   ´  ^     #   é       Ü   +  S    2   \       h   «  7     c   L  7   °  »   è  =   ¤  ,  â  !  !  (  1"  9   Z#  Q   #  ÷   æ#  Q   Þ$  S   0%   A directory named `<title>-ios` will be created, with an Xcode project in it. You can open the Xcode project:: All known issues with packaging for iOS are currently tracked on our `issues <https://github.com/kivy/kivy-ios/issues>`_  page. If you encounter an issue specific to packaging for iOS that isn't listed there, please feel free to file a new issue, and we will get back to you on it. All the libraries / frameworks necessary to run all the compiled recipes will be added to your Xcode project. Application quit abnormally! Before proceeding to the next step, ensure your application entry point is a file named `main.py`. By default, all the print statements to the console and files are ignored. If you have an issue when running your application, you can activate the log by commenting out this line in `main.m`:: Compile python + modules for IOS Compile the distribution Create a package for IOS Create an Xcode project Create an Xcode project and link your source code Currently, packages for iOS can only be generated with Python 2.7. Python 3.3+ support is on the way. Customize Everytime you press `Play`, your application directory will be synced to the `<title>-ios/YourApp` directory. Don't make changes in the -ios directory directly. FAQ For a more complete list, visit the `Kivy wiki <https://github.com/kivy/kivy/wiki/List-of-Kivy-Projects>`_. For more detail, see :ref:`IOS Prerequisites <packaging_ios_prerequisites>`. Just ensure that everything is ok before starting the second step! Have you already submited a Kivy application to the App store ? How can Apple accept a python app ? Known issues Let's say you want to add numpy to your project but you did not compile it prior to creating your XCode project. First, ensure it is built:: Most of the python distribution is packed into `python27.zip`. If you experience any issues, please refer to our `user group <https://groups.google.com/forum/#!forum/kivy-users>`_ or the `kivy-ios project page <https://github.com/kivy/kivy-ios>`_. Open a terminal, and type:: Prerequisites The overall process for creating a package for IOS can be explained in 4 steps: Then click on `Play`, and enjoy. Then you should see all the Kivy logging on the Xcode console. Then, update your Xcode project:: There are various ways to customize and configure your app. Please refer to the `kivy-ios <http://www.github.com/kivy/kivy-ios>`_ documentation for more information. Updating an Xcode project We managed to merge the app binary with all the libraries into a single binary, called libpython. This means all binary modules are loaded beforehand, so nothing is dynamically loaded. We provide a script that creates an initial Xcode project to start with. In the command line below, replace `test` with your project name. It must be a name without any spaces or illegal characters:: While most are too technical to be written here, one important known issue is that removing some libraries (e.g. SDL_Mixer for audio) is currently not possible because the kivy project requires it. We will fix this and others in future versions. Yes, check: You must use a fully qualified path to your application directory. You need to install some dependencies, like cython, autotools, etc. We encourage you to use `Homebrew <http://mxcl.github.com/homebrew/>`_ to install those dependencies:: `Defletouch on iTunes <http://itunes.apple.com/us/app/deflectouch/id505729681>`_, `ProcessCraft on iTunes <http://itunes.apple.com/us/app/processcraft/id526377075>`_ Project-Id-Version: Kivy 1.10.0
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
 æå®ããããã£ã¬ã¯ããª<`<title>-ios`ã®ä¸­ã«Xcodeãã­ã¸ã§ã¯ããä½æããã¾ããXcodeã®ãã­ã¸ã§ã¯ããéãã¾ã:: iOSã®ããã±ã¼ã¸ã³ã°ã«é¢ããæ¢ç¥ã®åé¡ã¯ãã¹ã¦ã`issues <https://github.com/kivy/kivy-ios/issues>`_  ãã¼ã¸ã§è¿½è·¡ããã¦ã¾ããæ²è¼ããã¦ããªãiOSç¨ã®ããã±ã¼ã¸åºæã®åé¡ãçºçããå ´åã¯ããæ°è»½ã«æ°ããissueãæåºãã¦ãã ããã ãã¹ã¦ã®ã³ã³ãã¤ã«æ¸ã¿ã®ã¬ã·ããå®è¡ããããã«å¿è¦ãªãã¹ã¦ã®ã©ã¤ãã©ãª/ãã¬ã¼ã ã¯ã¼ã¯ã¯Xcodeãã­ã¸ã§ã¯ãã«è¿½å ããã¾ãã ã¢ããªã±ã¼ã·ã§ã³ãç°å¸¸çµäºãã¾ãï¼ æ¬¡ã®ã¹ãããã«é²ãåã«ãã¢ããªã±ã¼ã·ã§ã³ã®ã¨ã³ããªãã¤ã³ãã®ãã¡ã¤ã«åããmain.pyãã§ãããã¨ãç¢ºèªãã¦ãã ããã ããã©ã«ãã§ã¯ã³ã³ã½ã¼ã«ããã¡ã¤ã«ã¸ã®ãã¹ã¦ã®printæã¯ç¡è¦ããã¾ãã ã¢ããªã±ã¼ã·ã§ã³ã®å®è¡æã«åé¡ãçºçããå ´åãmain.mã®ä»¥ä¸ã®è¡ãã³ã¡ã³ãã¢ã¦ããã¦ã­ã°ãæå¹ã«ã§ãã¾ãã IOSç¨ã«python +ã¢ã¸ã¥ã¼ã«ãã³ã³ãã¤ã«ãã¾ã Compile the distribution(ãã£ã¹ããªãã¥ã¼ã·ã§ã³ãã³ã³ãã¤ã«) Create a package for IOS(ç¿»è¨³æ¸ã¿) reate an Xcode project(Xcodeã®ãã­ã¸ã§ã¯ããä½æãã) Xcodeã®ãã­ã¸ã§ã¯ããä½æããã½ã¼ã¹ã³ã¼ãããªã³ã¯ãã¾ã ç¾å¨ãiOSç¨ã®ããã±ã¼ã¸ã®ã¿Python 2.7ã§çæãã§ãã¾ããPythonã®3.3+ãµãã¼ãã«ã¤ãã¦ã¯éä¸­ã§ãã Customize(ã«ã¹ã¿ãã¤ãº `Play`ãæ¼ããã³ã«ãã¢ããªã±ã¼ã·ã§ã³ãã£ã¬ã¯ããªã¯ã`<title>-ios/YourApp`ãã£ã¬ã¯ããªã«åæããã¾ãã ç´æ¥-iosãã£ã¬ã¯ããªãå¤æ´ããªãã§ãã ããã FAQ(ããããè³ªå) ããè©³ç´°ãªãªã¹ãã«ã¤ãã¦ã¯ `Kivy wiki <https://github.com/kivy/kivy/wiki/List-of-Kivy-Projects>`_  ãè¨ªåãã¦ãã ããã ããè©³ç´°ã«ã¤ãã¦ã¯ã :ref:`IOS ã®è©³ç´°<packaging_ios_prerequisites>`ãåç§ãã¦ãã ããã ç¬¬äºæ®µéãéå§ããåã«ããã¹ã¦ãå¤§ä¸å¤«ã§ãããã¨ãç¢ºèªãã¦ãã ããï¼ Kivyã¢ããªã±ã¼ã·ã§ã³ã§App storeã§å¬éããã¦ããã¢ããªã¯ããã¾ããï¼ How can Apple accept a python app ? Known issues(æ¢ç¥ã®åé¡) ãã­ã¸ã§ã¯ãã«numpyãè¿½å ãããã¨ãã¾ãããããããXcodeãã­ã¸ã§ã¯ããä½æããåã«ãããã³ã³ãã¤ã«ãã¾ããã§ããã ã¾ãæ§ç¯ããã¦ãããã¨ãç¢ºèªãã¾ã:: Pythonãã£ã¹ããªãã¥ã¼ã·ã§ã³ã®ã»ã¨ãã©ã¯p`python27.zip`ã«ããã¯ããã¦ãã¾ãã ä½ãåé¡ãçºçããå ´åã¯`ã¦ã¼ã¶ã¼ã°ã«ã¼ã<https://groups.google.com/forum/#!forum/kivy-users>`_
ã¾ãã¯`kivy-IOSãã­ã¸ã§ã¯ããã¼ã¸<https://github.com/kivy/kivy-ios>``_ ãåç§ãã¦ãã ããã ã ã¿ã¼ããã«ãéãå¥åãã¦ãã ãã:: Prerequisites(åææ¡ä»¶) IOSç¨ããã±ã¼ã¸ãä½æããå¨ä½çãªãã­ã»ã¹ã¯ã4ã¤ã®ã¹ãããã§èª¬æãã¾ã: `Play` ãã¯ãªãã¯ãã¦æ¥½ããã§ãã ããã ãã®å¾ãXcodeã®ã³ã³ã½ã¼ã«ä¸ã«ãã¹ã¦ã®Kivyã®ã­ã°ãè¡¨ç¤ºãããã¯ãã§ãã ãã®å¾ãXcodeãã­ã¸ã§ã¯ããæ´æ°ãã¾ã:: ã¢ããªã®ã«ã¹ã¿ãã¤ãºãè¨­å®ã«ã¯ãã¾ãã¾ãªæ¹æ³ãããã¾ããè©³ç´°ã«ã¤ãã¦ã¯ `kivy-ios <http://www.github.com/kivy/kivy-ios>`_  ãåç§ãã¦ãã ããã Updating an Xcode project(Xcodeãã­ã¸ã§ã¯ãã®æ´æ°ï¼ libpythonã¨å¼ã°ããåä¸ã®ãã¤ããªã«ãã¹ã¦ã®ã©ã¤ãã©ãªã¨ã¢ããªã±ã¼ã·ã§ã³ãã¤ããªããã¼ã¸ãã¾ãããããã¯ãã¹ã¦ã®ãã¤ããªã¢ã¸ã¥ã¼ã«ããããããã­ã¼ãããã¦ãããã¨ãæå³ããã®ã§ãåçã«ã¯ã­ã¼ãããã¾ããã ç§ãã¡ã¯ãå®è¡ããã¨Xcodeãã­ã¸ã§ã¯ããä½æããã¹ã¯ãªãããæä¾ãã¦ãã¾ããä»¥ä¸ã®ã³ãã³ãã©ã¤ã³ã§ã¯ããã­ã¸ã§ã¯ãåã«`test`ãç½®ãæãã¾ããããã¯ãä»»æã®ã¹ãã¼ã¹ãä¸æ­£ãªæå­ãå«ã¾ãªãååã«ãã¾ã:: ã»ã¨ãã©ã®å ´åãããã«æ¸ãè¾¼ãã«ã¯æè¡çãªé¢ãããã¾ãããéè¦ãªåé¡ã®1ã¤ã¯ãkivyãã­ã¸ã§ã¯ãã§å¿è¦ã¨ããã©ã¤ãã©ãªï¼SDL_Mixerãªã©ï¼ã®åé¤ã¯ç¾å¨ä¸å¯è½ã§ããå°æ¥ã®ãã¼ã¸ã§ã³ã§ããã¨ä»ã®ãã®ãä¿®æ­£ãã¾ãã ã¯ããä»¥ä¸ããã§ãã¯ãã¦ã¿ã¦ãã ããï¼ ã¢ããªã±ã¼ã·ã§ã³ãã£ã¬ã¯ããªã¸ã®çµ¶å¯¾ãã¹ãä½¿ç¨ãã¾ãã cythonãautotoolsã®ããã«ããã¤ãã®ä¾å­é¢ä¿ãã¤ã³ã¹ãã¼ã«ããå¿è¦ãããã¾ããä¾å­é¢ä¿ãã¤ã³ã¹ãã¼ã«ããã«ã¯  `Homebrew <http://mxcl.github.com/homebrew/>`_ ãä½¿ç¨ãããã¨ããå§ããã¾ã::" `Defletouch on iTunes <http://itunes.apple.com/us/app/deflectouch/id505729681>`_, `ProcessCraft on iTunes <http://itunes.apple.com/us/app/processcraft/id526377075>`_ 