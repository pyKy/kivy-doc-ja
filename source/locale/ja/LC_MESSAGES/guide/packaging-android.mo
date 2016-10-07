Þ    (      \                     <   ª  	   ç     ñ  .  {  ç   ª          £  .   À  å   ï  p   Õ     F  «   Ý  u        ÿ  ¨   	  ¢   Á	  |   d
  ä   á
  Ü   Æ  !   £  0   Å  <   ö     3  `   I     ª  %   +     Q  ê   c  Ð   N  %        E  à   Î  d   ¯  Þ       ó  ë    A   |  <   ¾  t  û     p  [   }  	   Ù  ­   ã      '  0  $   X  *   }  =   ¨  "  æ     	  Ô     Ï   b     2   2   Ë   '  þ   µ   &"  ¡   Ü"  Z  ~#    Ù$  N   ö%  f   E&  \   ¬&  5   	'  v   ?'     ¶'  9   U(  2   (  R  Â(  5  *  D   K+  ´   +     E,     F-  F  ß-  È   &0    ï0  O   3  W   Þ3   /sdcard/kivy :code:`<yourapplication>` should be a directory containing:: Buildozer Buildozer currently works only in Linux, and is an alpha release, but it already works well and can significantly simplify the apk build. Buildozer has many available options and tools to help you, the steps above are just the simplest way to build and run your APK. The full documentation is available `here <http://buildozer.readthedocs.org/en/latest/>`_. You can also check the Buildozer README at `<https://github.com/kivy/buildozer>`_. Buildozer is a tool that automates the entire build process. It downloads and sets up all the prequisites for python-for-android, including the android SDK and NDK, then builds an apk that can be automatically pushed to the device. Click on Install Create a package for Android Finally, plug in your android device and run:: For new users, we recommend using :ref:`Buildozer` as the easiest way to make a full APK. You can also run your Kivy app without a compilation step with the :ref:`Kivy Launcher <Packaging your application for Kivy launcher>` app. Go to the `Kivy Launcher page <https://market.android.com/details?id=org.kivy.pygame>`_ on the Google Play Store If you don't have access to the Google Play Store on your phone/tablet, you can download and install the APK manually from  http://kivy.org/#download. If you have built your own APK with Buildozer or with python-for-android, you can create a release version that may be released on the Play store or other Android markets. Install buildozer's `dependencies <https://buildozer.readthedocs.io/en/latest/installation.html#targeting-android>`_. Installation of Examples It is possible to target specific Android features, both directly and in a (somewhat) cross-platform way. See the `Using Android APIs` section of the  for more details. Kivy applications can be :ref:`released on an Android market <release_on_the_market>` such as the Play store, with a few extra steps to create a fully signed APK. Kivy comes with many examples, and these can be a great place to start trying the Kivy launcher. You can run them as below:: Kivy is designed to operate identically across platforms and as a result, makes some clear design decisions. It includes its own set of widgets and by default, builds an APK with all the required core dependencies and libraries. Once the Kivy launcher is installed, you can put your Kivy applications in the Kivy directory in your external storage directory (often available at :code:`/sdcard` even in devices where this memory is internal), e.g. :: Packaging with python-for-android Packaging your application for the Kivy Launcher Python 3 support on Android is now available experimentally. Release on the market Run the launcher and select one of the Pictures, Showcase, Touchtracer, Cymunk or other demos... See the `python-for-android documentation <https://python-for-android.readthedocs.io/en/latest/quickstart/>`__ for full details. Select your phone... And you're done! Targeting Android The Kivy project includes tools for accessing Android APIs to accomplish vibration, sensor access, texting etc. These, along with information on debugging on the device, are documented at the :doc:`main Android page </guide/android>`. The `Kivy launcher <https://play.google.com/store/apps/details?id=org.kivy.pygame&hl=en>`_ is an Android application that runs any Kivy examples stored on your SD Card. To install the Kivy launcher, you must: The file `android.txt` must contain:: These options are just a very basic configuration. If you create your own APK using the tools above, you can choose many other settings. This creates a `buildozer.spec` file controlling your build configuration. You should edit it appropriately with your app name etc. You can set variables to control most or all of the parameters passed to python-for-android. This will install buildozer in your system. Afterwards, navigate to your project directory and run:: To do this, you must run Buildozer with the :code:`release` parameter (e.g. :code:`buildozer android release`), or if using python-for-android use the :code:`--release` option to build.py. This creates a release APK in the :code:`bin` directory, which you must properly sign and zipalign. The procedure for doing this is described in the Android documentation at http://developer.android.com/guide/publishing/app-signing.html - all the necessary tools come with the Android SDK. You can also package directly with python-for-android, which can give you more control but requires you to manually download parts of the Android toolchain. You can create a package for android using the `python-for-android <https://github.com/kivy/python-for-android>`_ project. This page explains how to download and use it directly on your own machine (see :ref:`Packaging your application into APK`), use the prebuilt :ref:`Kivy Android VM <kivy_android_vm>` image, or use the :ref:`buildozer` tool to automate the entire process. You can also see :ref:`Packaging your application for Kivy Launcher` to run kivy programs without compiling them. You can get buildozer at `<https://github.com/kivy/buildozer>`_:: to build, push and automatically run the apk on your device. Project-Id-Version: Kivy 1.9.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-10-02 21:03+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 /sdcard/kivy :code:`<yourapplication>` ãå«ãã¢ããªã±ã¼ã·ã§ã³ã§ãªããã°ãªãã¾ãã:: Buildozer Buildozerã¯ç¾å¨ãLinuxä¸ã§ããåä½ãããã¢ã«ãã¡ãªãªã¼ã¹ã§ããããã§ã«ååã«æ©è½ãã¦ããAPKãã«ããå¤§å¹ã«ç°¡ç¥åã§ãã¾ãã Buildozerã¯ãä¸è¨ã®ã·ã³ãã«æé ã§ãã«ããã¦APKãå®è¡ããæãç°¡åãªæ¹æ³ã®ããã«ãå¤ãã®å©ç¨å¯è½ãªãªãã·ã§ã³ã¨ããªããå©ããããã®ãã¼ã«ãæã£ã¦ã¾ãã å®å¨ãªãã­ã¥ã¡ã³ãã`ãã <http://buildozer.readthedocs.org/en/latest/>`_ ã§å©ç¨å¯è½ã§ã ã ã¾ãBuildozer READMEã§`<https://github.com/kivy/buildozer>`_.ç¢ºèªã§ãã¾ãã Buildozerã¯ããã«ããã­ã»ã¹å¨ä½ãèªååãããã¼ã«ã§ãã ããã¯androidSDKã¨NDKãå«ãpython-for-androidã®ããã®ãã¹ã¦ã®prequisitesãããã¦ã³ã­ã¼ããã¦è¨­å®ãããã®å¾ãèªåçã«ããã¤ã¹ã«ããã·ã¥ãã§ããAPKããã«ããã¾ã ã¤ã³ã¹ãã¼ã«ãã¦ãã ãã Create a package for Android(ç¿»è¨³æ¸ã¿) æå¾ã«Androidããã¤ã¹ãæ¥ç¶ãã¦å®è¡ãã¾ãã æ°è¦ã¦ã¼ã¶ã¼ã®ããã«ããã«APKãä½æããæãç°¡åãªæ¹æ³ã¨ãã¦ :ref:`Buildozer` ã®ä½¿ç¨ããå§ããã¾ãã ã¾ãã:ref:`Kivy Launcher <Packaging your application for Kivy launcher>` ã¢ããªã¯ã³ã³ãã¤ã«ä¸è¦ã§Kivyã¢ããªãå®è¡ã§ãã¾ã ã Google Play Storeã®`Kivy Launcher page <https://market.android.com/details?id=org.kivy.pygame>`_ ã«ã¢ã¯ã»ã¹ãã¦ãã ãã æºå¸¯é»è©±/ã¿ãã¬ããç«¯æ«ã§Google Play Storeã«ã¢ã¯ã»ã¹ã§ããªãå ´åã¯ãhttp://kivy.org/#download ããAPKããã¦ã³ã­ã¼ããã¦ããã¥ã¢ã«ã§ã¤ã³ã¹ãã¼ã«ãã¦ãã ããã Buildozerã¾ãã¯python-for-androidãä½¿ç¨ãã¦ç¬èªã®APKããã«ããã¦ããå ´åãGoogle Play storeã¾ãã¯ä»ã®Androidãã¼ã±ããç¨ã«ãªãªã¼ã¹ãã¼ã¸ã§ã³ãä½æã§ãã¾ãã buildozerã® `dependencies <https://buildozer.readthedocs.io/en/latest/installation.html#targeting-android>`_ ãã¤ã³ã¹ãã¼ã«ãã¦ãã ããã Installation of Examples(ã¤ã³ã¹ãã¼ã«ã®ä¾) ç´æ¥çãªæ¹æ³ãã¾ãã¯ï¼ããï¼ã¯ã­ã¹ãã©ãããã©ã¼ã ã®æ¹æ³ã®ä¸¡æ¹ã§ãç¹å®ã®Androidã®æ©è½ã®ã¿ã¼ã²ãããå¯è½ã§ããè©³ç´°ã¯`:doc:`Kivy on Android documentation </guide/android>` ã®`Using Android APIs`ã®ã»ã¯ã·ã§ã³ãåç§ãã¦ãã ããã Kivyã¢ããªã±ã¼ã·ã§ã³ã¯ãããã¤ãã®æé ããããªãç½²åãã¿ã®APKãä½æãã¦Play storeã« :ref:`released on an Android market <release_on_the_market>` ã Kivyã¯å¤ãã®ä¾ãä»å±ãã¦ããããããã¯Kivy launcherãå§ããçµ¶å¥½ã®ã¹ã¿ã¼ãå°ç¹ã§ãã ä»¥ä¸ã®ããã«ãã¦å®è¡ã§ãã¾ã:: Kivyã¯ããã©ãããã©ã¼ã éã§åä¸ã«åä½ããããã«è¨­è¨ããã¦ããããã®çµæã¨ãã¦ãããã¤ãã®æç¢ºãªè¨­è¨ä¸ã®æ±ºå®ãä¸ãã¾ããããã¯ãwidgetã®ç¬èªè¨­å®ãå«ã¾ãã¦ãããããã©ã«ãã§ã¯ããã¹ã¦ã®å¿è¦ãªã³ã¢ã®ä¾å­é¢ä¿ãã©ã¤ãã©ãªã¨APKãæ§ç¯ãã¾ãã Kivyã©ã³ãã£ã¼ãã¤ã³ã¹ãã¼ã«ãããããå¤é¨ã¹ãã¬ã¼ã¸ãã£ã¬ã¯ããªã®Kivyã®ãã£ã¬ã¯ããªã«Kivyã¢ããªã±ã¼ã·ã§ã³ãç½®ããã¨ãã§ãã¾ããï¼ããã¤ã¹åé¨ã«ããã¡ã¢ãªã§:code:`/sdcard`ã§é »ç¹ã«å©ç¨å¯è½ã§ã)ä¾ãã°: Packaging with python-for-androidï¼python-for-androidã®ããã±ã¼ã¸åï¼ Packaging your application for the Kivy Launcher(Kivy Launcherã«ããã¢ããªã®ããã±ã¼ã¸å) Androidä¸ã§Python3ã®ãµãã¼ããå®é¨çã«å©ç¨ã§ããããã«ãªãã¾ããã Release on the market(ãã¼ã±ããã«ãªãªã¼ã¹) ã©ã³ãã£ã¼ãå®è¡ãã Pictures, Showcase, Touchtracer, Cymunkã¾ãã¯ä»ã®ãã¢ã®ãããããé¸æ... å®å¨ãªè©³ç´°ã«ã¤ãã¦ã¯ `python-for-android documentation <https://python-for-android.readthedocs.io/en/latest/quickstart/>`__ ãè¦ã¦ãã ããã æºå¸¯é»è©±ãé¸æãã¦...å®è¡ãã¦ãã ããï¼ Targeting Android(Androidã®ã¿ã¼ã²ããè¨­å®) Kivyãã­ã¸ã§ã¯ãã¯æ¯åãã»ã³ãµã¼ããã­ã¹ãã¡ãã»ã¼ã¸ã¸ã®ã¢ã¯ã»ã¹ãå®ç¾ããããã«AndroidAPIã«ã¢ã¯ã»ã¹ããããã®ãã¼ã«ãå«ã¾ãã¦ãã¾ããããã®äºã¯ããã¤ã¹ã®ãããã°ã«é¢ããæå ±ã¨ã¨ãã«ã:doc:`main Android page </guide/android>` ã«è¨è¼ããã¦ã¾ãã `Kivy launcher <https://play.google.com/store/apps/details?id=org.kivy.pygame&hl=en>`_ ã¯ãSDã«ã¼ãã«ä¿å­ããã¦ããä»»æã®Kivyã«ãããã­ã°ã©ã ãå®è¡ããAndroidã¢ããªã±ã¼ã·ã§ã³ã§ããKivyã©ã³ãã£ã¼ãã¤ã³ã¹ãã¼ã«ããã«ã¯ãä»¥ä¸ãå®è¡ãã¦ãã ãã: android.txtãã¡ã¤ã«ãå«ã¾ãã¦ããå¿è¦ãããã¾ãï¼ ãã®ãªãã·ã§ã³ã¯ãéå¸¸ã«åºæ¬çãªæ§æã§ããä¸è¨ã®ãã¼ã«ãä½¿ç¨ãã¦ç¬èªã®APKãä½æããå ´åã¯ãä»ã®å¤ãã®è¨­å®ãé¸æã§ãã¾ãã ããã¯ãã«ãæ§æãå¶å¾¡ãã `buildozer.spec` ãã¡ã¤ã«ãä½æãã¾ãã ã¢ããªåãªã©ãé©åã«ç·¨éãã¦ãã ãããpython-for-androidã«æ¸¡ãããã»ã¼å¨ã¦ã®å¶å¾¡ç¨ã®ãã©ã¡ã¿âã«å¤æ°ãè¨­å®ã§ãã¾ãã ããã¯ã·ã¹ãã ã«buildozerãã¤ã³ã¹ãã¼ã«ãã¾ãããã®å¾ããã­ã¸ã§ã¯ããã£ã¬ã¯ããªã¨å®è¡ãããã²ã¼ããã¾ã:: Buildozerã®:code:`release`ãã©ã¡ã¼ã¿ï¼ä¾ãã°buildozer android release ï¼ãã¾ãã¯ python-for-androidã®build.pyã®ãªãã·ã§ã³ã® :code:`--release` ãä½¿ç¨ãã¦å®è¡ããå¿è¦ãããã¾ããããã§ãªãªã¼ã¹ããAPKã®:code:`bin` ãã£ã¬ã¯ããªãä½æããã¾ãããç½²åã¨zipalignãè¡ãå¿è¦ãããã¾ãããã­ãã¥ã¼ã¹ããæé ã¯Androidã®ãã­ã¥ã¡ã³ãï¼http://developer.android.com/guide/publishing/app-signing.htmlï¼ã«è¨è¼ãããã -ãã¹ã¦ã®å¿è¦ãªãã¼ã«ã¯ãAndroid SDKã«ä»å±ãã¦ãã¾ãã python-for-androidãç´æ¥ããã±ã¼ã¸åã§ãã¾ããããããã®ããã«ã¯ãããå¤ãå¶å¾¡ããããã«æåã§Android toolchainããã¦ã³ã­ã¼ãããå¿è¦ãããã¾ãã python-for-android <https://github.com/kivy/python-for-android>`_ ãã­ã¸ã§ã¯ããä½¿ç¨ãã¦Androidã®ããã±ã¼ã¸åãã§ãã¾ãããã®ãã¼ã¸ã§ã¯ããã¦ã³ã­ã¼ããã¦ãèªåã®ãã·ã³ã§ç´æ¥ãã( :ref:`Packaging your application into APK` ãåç§)ãä½¿ç¨ãã¦ãäºåã«ä½æããã:ref:`Kivy Android VM <kivy_android_vm>` ã¤ã¡ã¼ã¸ãä½¿ç¨ããããã¾ãã¯ãã­ã»ã¹å¨ä½ãèªååãã :ref:`buildozer` ãã¼ã«ãä½¿ç¨ããæ¹æ³ã«ã¤ãã¦èª¬æãã¾ãã ã¾ãã¯:ref:`Packaging your application for Kivy Launcher` ãåç§ãã¦ãã¦ã³ã³ãã¤ã«ããã«kivyãã­ã°ã©ã ãå®è¡ãã¾ãã buildozer ã¯ `<https://github.com/kivy/buildozer>`_ ããå¥æã§ãã¾ã:: ãã«ããããã·ã¥ãçµã¦èªåçã«ããã¤ã¹ä¸ã§APKãå®è¡ãã¾ãã 