Þ    #      4              L  Æ   M  ¼        Ñ  ¥   à  2     ú   ¹  Õ   ´  î        y              	     ¦	     º	     À	     K
  è   S
     <  Ã   Õ  q    (     Ý   4  ú          D       ä  y   e     ß  É   ò    ¼  `  Ë  E   ,  ê  r  n   ]  Í  Ì        ¢  )   Â  &  ì  _     8  s    ¬  F  ¿      "  ô   ¡"  :  #     Ñ$  1   ï$     !%  »   '%     ã%  7  ë%  »   #'  º   ß'  å  (  s   *  5  ô*  T  *,     -  ?  .  §   L/     ô/  (   0    ¼0  a  È1    *3  Q   µ4  Â  5  ¥   Ê7   A current technical limitation is that the Android build tools compile only ARM APKs, which will not run on Android devices with x86 processors (these are currently rare). This should be added soon. Although Kivy is a Python framework, the Kivy project maintains tools to easily use the normal java APIs, for everything from vibration to sensors to sending messages through SMS or email. Android module As Kivy works fine on most devices, the list of supported phones/tablets has been retired - all Android devices are likely to work if they meet the conditions above. Debugging your application on the Android platform Follow the instructions below to learn how to :ref:`package your app for Android <package_for_android>`, :ref:`debug your code on the device <debug_android>`, and :ref:`use Android APIs <using_android_apis>` such as for vibration and reading sensors. For instance, the following code would make your Android device vibrate, or raise a NotImplementedError that you can handle appropriately on other platforms such as desktops that don't have appropriate hardware::: For new users, we recommend using :ref:`Plyer`. For more advanced access or for APIs not currently wrapped, you can use :ref:`Pyjnius` directly. Kivy also supplies an :ref:`android module <android_module>` for basic Android functionality. Here is a simple example showing Pyjnius' ability to access the normal Android vibration API, the same result of the plyer code above:: If you packaged your app with Buildozer, the `adb` tool may not be in your :code:`$PATH` and the above command may not work. You can instead run:: Kivy APKs are normal Android apps that you can distribute like any other, including on stores like the Play store. They behave properly when paused or restarted, may utilise Android services and have access to most of the normal java API as described below. Kivy on Android Package for Android Plyer Plyer's list of supported APIs is growing quite quickly, you can see the full list in the Plyer `README <https://github.com/kivy/plyer>`_. Pyjnius Pyjnius also has powerful abilities to implement java interfaces, which is important for wrapping some APIs, but these are not documented here - you can see Pyjnius' `own documentation <http://pyjnius.readthedocs.org/en/latest/>`__. Pyjnius can be obtained from `github <https://github.com/kivy/pyjnius>`_, and has its `own documentation <http://pyjnius.readthedocs.org/en/latest/>`__. Pyjnius is a Python module that lets you access java classes directly from Python, automatically converting arguments to the right type, and letting you easily convert the java results to Python. Python-for-android includes a python module (actually cython wrapping java) to access a limited set of Android APIs. This has been largely superseded by the more flexible Pyjnius and Plyer as above, but may still occasionally be useful. The available functions are given in the `python-for-android documentation <http://python-for-android.readthedocs.org/en/latest/>`_. Status of the Project and Tested Devices The Android tools are now quite stable, and should work with practically any device; our minimum requirements are OpenGL ES 2.0 and Android 2.2. These are very common now - Kivy has even been run on an Android smartwatch! The Kivy project provides all the necessary tools to package your app on Android, including building your own standalone APK that may be distributed on a market like the Play store. This is covered fully in the :ref:`packaging_android` documentation. These sections previously described the existence of Kivy's Android build tools, with their limitations and some devices that were known to work. This code directly follows the java API functions to call the vibrator, with Pyjnius automatically translating the api to Python code and our calls back to the equivalent java. It is much more verbose and java-like than Plyer's version, for no benefit in this case, though Plyer does not wrap every API available to Pyjnius. This includes code for billing/IAP and creating/accessing Android services, which is not yet available in the other tools above. User contributed Android code and examples are available on the `Kivy wiki <https://github.com/kivy/kivy/wiki#mobiles>`_. Using Android APIs You can also run and debug your application using the `Kivy Launcher`_. If you run your application this way, you will find log files inside the "/.kivy/logs" sub-folder within your application folder. You can run Kivy applications on Android, on (more or less) any device with OpenGL ES 2.0 (Android 2.2 minimum). This is standard on modern devices; Google reports the requirement is met by `99.9% of devices <https://developer.android.com/about/dashboards/index.html>`_. You can view the normal output of your code (stdout, stderr), as well as the normal Kivy logs, through the Android logcat stream. This is accessed through adb, provided by the `Android SDK <http://developer.android.com/sdk/index.html>`_. You may need to enable adb in your device's developer options, then connect your device to your computer and run:: You'll see all the logs including your stdout/stderr and Kivy logger. `Plyer <https://github.com/kivy/plyer>`__ is a pythonic, platform-independent API to use features commonly found on various platforms, particularly mobile ones. The idea is that your app can call simply call a Plyer function, such as to present a notification to the user, and Plyer will take care of doing so in the right way regardless of the platform or operating system. Internally, Plyer uses Pyjnius (on Android), Pyobjus (on iOS) and some platform specific APIs on desktop platforms. to run the version installed by Buildozer, or find the SDK tools at :code:`$HOME/.buildozer/android/platform`. Project-Id-Version: Kivy 1.10.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2017-05-15 14:44+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: JUN OKAZAKI <okazakijun54392@gmail.com>, 2017
Language: ja
Language-Team: Japanese (Japan) (https://www.transifex.com/python_kivy_doc_ja/teams/74810/ja_JP/)
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 ç¾å¨ã®æè¡çãªå¶éã¯ãAndroidãã«ããã¼ã«ã¯ãARMçã®APKãã³ã³ãã¤ã«ã®ã¿ã§x86ãã­ã»ããµï¼ç¾å¨ã¯ç¨ï¼ãæ­è¼ããAndroidããã¤ã¹ä¸ã§å®è¡ãããªããã¨ã§ããããã¯ãããã«è¿½å ãããã¹ãã§ãã "Kivyã¯ãPythonã®ãã¬ã¼ã ã¯ã¼ã¯ã§ãããKivyãã­ã¸ã§ã¯ãã¯ãã»ã³ãµããæ¯åãããã¨ããSMSã¾ãã¯é»å­ã¡ã¼ã«ãä»ãã¦ã¡ãã»ã¼ã¸ãéä¿¡ãããªã©ã¨ãã£ããéå¸¸ã®Java APIãä½¿ç¨ããããã®ãã¼ã«ãä¿æãã¦ãã¾ãã Android module(Androidã®ã¢ã¸ã¥ã¼ã«) Kivyã¯ãã»ã¨ãã©ã®ããã¤ã¹ä¸ã§åä½ããããã«ãªãããã®çµæãµãã¼ãããã¦ããæºå¸¯é»è©±/ã¿ãã¬ããã®ãªã¹ãã¯å»æ­¢ããã¾ãã - ä¸è¨ã®æ¡ä»¶ãæºããã¦ããã°ããã¹ã¦ã®Androidããã¤ã¹ã§åä½ããå¯è½æ§ãããã¾ãã Debugging your application on the Android platform(Androidä¸ã§ã¢ããªããããã°ãã) å­¦ç¿ã®éã¯ä»¥ä¸ã®æé ã«å¾ã£ã¦ãã ããã:ref:`package your app for Android <package_for_android>`ã :ref:`debug your code on the device <debug_android>`ã ãããã¦æ¯åãèª­ã¿åãã»ã³ãµç¨ãä½¿ç¨ããã«ã¯:ref:`use Android APIs <using_android_apis>` ãåç§ãã¦ã ããã ãã¨ãã°ãæ¬¡ã®ã³ã¼ãã§ã¯ãAndroidããã¤ã¹ãæ¯åããããããã®ãããªé©åãªãã¼ãã¦ã§ã¢ãæã£ã¦ããªããã¹ã¯ããããªã©ä»ã®ãã©ãããã©ã¼ã ä¸ã§ã¯NotImplementedErrorãçºçããé©åã«å¦çãã§ãã¾ã:: æ°è¦ã¦ã¼ã¶ã¼ã®ããã«ã:ref:`Plyer`ã®ä½¿ç¨ããå§ããã¾ããããé«åº¦ãªã¢ã¯ã»ã¹ã®ãããã¾ãã¯ç¾å¨ã©ããã¼ããã¦ããªãAPIã«ã¤ãã¦ã¯ãPyjniusãç´æ¥ä½¿ç¨ã§ãã¾ããKivyã¯åºæ¬çãªAndroidã®æ©è½ã®ããã«:ref:`android module <android_module>`ãæä¾ãã¾ãã ããã§ã¯éå¸¸ã®Androidã®æ¯åAPIã«ã¢ã¯ã»ã¹ããPyjniusã®è½åã¨plyerã®ã³ã¼ããç¨ãã¦åãçµæã«ãªããç°¡åãªä¾ã§ãï¼ Buildozerã§ã¢ããªãããã±ã¼ã¸åããå ´åããADBããã¼ã«ã¯ã:code:`$PATH` ã«ã¯ãªããä¸è¨ã®ã³ãã³ããæ©è½ããªãå ´åãããã¾ãããã®å ´åã¯ã³ãã³ãã«ã¤ã³ãµã¼ããã¦å®è¡ã§ãã¾ã:: Kivy APKãä½¿ç¨ããã¨Play storeãä»ã®ã¹ãã¢ã§éå¸ã§ããæ¨æºã®Android appãéçºåºæ¥ã¾ããä¸æåæ­¢ã¾ãã¯åèµ·åããã¨ãã«æ­£ããåä½ããAndroidã®ãµã¼ãã¹ãå©ç¨ããä»¥ä¸ã«èª¬æããããã«ãéå¸¸ã®Java APIã®ã»ã¨ãã©ã«ã¢ã¯ã»ã¹ã§ãã¾ãã Kivy on Android(ç¿»è¨³æ¸ã¿) Package for Android(Androidç¨ã«ããã±ã¼ã¸) Plyer ãµãã¼ãããã¦ããAPIã®Plyerã®ãªã¹ãã¯éå¸¸ã«æ¥éã«æé·ãã¦ãã¾ããPlyer `README <https://github.com/kivy/plyer>`_ã§å®å¨ãªãªã¹ããåç§ã§ãã¾ãã Pyjnius Pyjniusã¯ã¾ããããã¤ãã®APIãã©ããã¼ããããã«éè¦ãªãJavaã¤ã³ã¿ãã§ã¼ã¹ãå®è£ããããã®å¼·åãªè½åãæã£ã¦ãã¾ãããããã§ã¯è¨è¼ãã¦ã¾ãããPyjniusã®`ãã­ã¥ã¡ã³ã  <http://pyjnius.readthedocs.org/en/latest/>`ãåç§ãã¦ãã ããã ãµãã¼ãããã¦ããAPIã®Plyerã®ãªã¹ãã¯éå¸¸ã«æ¥éã«æé·ãã¦ãã¾ããPlyer `README <https://github.com/kivy/plyer>`_ã§å®å¨ãªãªã¹ããåç§ã§ãã¾ãã Pyjniusã¯èªåçã«æ­£ããåã«å¼æ°ãå¤æãã¦Pythonããç´æ¥Javaã¯ã©ã¹ã«ã¢ã¯ã»ã¹ãPythonã«Javaã®çµæãç°¡åã«å¤æã§ããPythonã¢ã¸ã¥ã¼ã«ã§ãã Python-for-androidã¯ãAndroidã®APIã®å¶éãããè¨­å®ã«ã¢ã¯ã»ã¹ããããã®Pythonã¢ã¸ã¥ã¼ã«ï¼å®éã«ã¯cythonãã©ããã¼ããjavaï¼ãå«ã¾ãã¦ãã¾ãã ããã¯ä¸»ã«ä¸è¨ã®ããã«ãããæè»ãªPyjniusã¨Plyerã«åã£ã¦ä»£ãããã¦ãã¾ãããããã§ãææã¯æç¨ã§ãã å©ç¨å¯è½ãªæ©è½ã¯`python-for-android ã®ãã­ã¥ã¡ã³ã <http://python-for-android.readthedocs.org/en/latest/>"ã«è¨è¼ããã¦ãã¾ãã Status of the Project and Tested Devicesï¼ãã­ã¸ã§ã¯ãã¨ãã¹ããããããã¤ã¹ã®ã¹ãã¼ã¿ã¹ï¼ "Androidã®ãã¼ã«ã¯ç¾å¨ã¯éå¸¸ã«å®å®ãã¦ãããå®è³ªçã«ä»»æã®ããã¤ã¹ã§åä½ããã¯ãã§ããç§ãã¡ã®æå°è¦ä»¶ã¯ãOpenGL ES 2.0ã¨Android 2.2ã§ãã ãããã¯ç¾å¨ã¯éå¸¸ã«ä¸è¬çã§ã- Androidã®ã¹ãã¼ãã¦ã©ããä¸ã§ãå®è¡ããã¦ãã¾ãï¼ Kivyãã­ã¸ã§ã¯ãã¯ãPlay storeã®ãããªå¸å ´ã«æµéã§ããç¬èªã®ã¹ã¿ã³ãã¢ã­ã³ã®APKãæ§ç¯ãããªã©ãAndroidä¸ã®ã¢ããªãããã±ã¼ã¸åããããã«å¿è¦ãªãã¹ã¦ã®ãã¼ã«ãæä¾ãã¦ãã¾ãã ããã¯ã:ref:`packaging_android`ã®ãã­ã¥ã¡ã³ãã«ã«ãã¼ããã¦ãã¾ãã ããã§ã¯ãä»¥åããã®éçã¨åä½ãã¦ããããã¤ã¹ã§ã®Kivyã®Androidãã«ããã¼ã«ã®ç¶æãèª¬æãã¾ããã ãã®ã³ã¼ãã¯ãç´æ¥Pyjniusããã¤ãã¬ã¼ã¿ãå¼ã³åºãããã®Java APIé¢æ°ã¨åç­ã®ãPythonã³ã¼ãããJavaã¸èªåçã«å¤æãã¦ãã¾ããPlyerã¯Pyjniusã«å©ç¨å¯è½ãªãã¹ã¦ã®APIãã©ããã¼ãã¾ããããã¯ããã«åé·ã§Javaã©ã¤ã¯ãªPlyerãããæçã§ãã Androidãµã¼ãã¹ã®èª²éã¨IAPã¨ã¢ã¯ã»ã¹ãã/ä½æããããã®ã³ã¼ããå«ã¾ããä¸è¨ã®ä»ã®ãã¼ã«ã§ã¯ã¾ã å©ç¨ããã¦ãã¾ããã ã¦ã¼ã¶ã¼ã¯ãä¾ã¨ãã¦ã¯ãä¸ã§ä½¿ç¨å¯è½ãª`Kivy ã®wiki <https://github.com/kivy/kivy/wiki#mobiles>`ã§Androidã®ã³ã¼ããè²¢ç®ãã¾ãã Using Android APIs(Android APIãä½¿ç¨) `Kivy Launcher`_ãä½¿ç¨ããã¢ããªã±ã¼ã·ã§ã³ãå®è¡ãã¦ãããã°ã§ãã¾ãããã®å ´åã¯ã¢ããªã±ã¼ã·ã§ã³ã§å®è¡ããå ´åã¯ãã¢ããªã±ã¼ã·ã§ã³ãã©ã«ãåã®ã/.kivy/logsãåã®ã­ã°ãã¡ã¤ã«ãæ¤ç´¢ãã¾ãã Androidä¸ã§OpenGL ES 2.0ï¼ã¢ã³ãã­ã¤ã2.2ä»¥ä¸ï¼ãæã¤ï¼å¤ããå°ãªããï¼ä»»æã®ããã¤ã¹ã§Kivyã¢ããªã±ã¼ã·ã§ã³ãå®è¡ã§ãã¾ããGoogleã®è¦ä»¶ãæºãããã¦ããå ±åãã`ããã¤ã¹ã®99.9ï¼ ã§<https://developer.android.com/about/dashboards/index.html>`_ ç¾ä»£ã®ããã¤ã¹ä¸ã®æ¨æºã§ãã Androidã®logcatã¹ããªã¼ã ããã³ã¼ãã®æ­£å¸¸ãªåºåï¼stdoutãstderrï¼ããªãã³ã«æ­£å¸¸Kivyã­ã°ãè¡¨ç¤ºã§ãã¾ãã`Android SDK <http://developer.android.com/sdk/index.html>`_ã®ADBãä»ãã¦ã¢ã¯ã»ã¹ãã¾ã ã ã³ã³ãã¥ã¼ã¿ããã¤ã¹ãæ¥ç¶ãã¦å®è¡å¾ãããã¤ã¹ã®éçºèåããªãã·ã§ã³ã§ADBãæå¹ã«ããå¿è¦ãããã¾ãï¼ stdout/stderr ã¨Kivyã­ã¬ã¼ãå«ããã¹ã¦ã®ã­ã°ãè¡¨ç¤ºããã¾ãã `Plyer <https://github.com/kivy/plyer>`__ã¯ãä¸è¬çã«ãæ§ããªãã©ãããã©ã¼ã ä¸ã§è¦ãããæ©è½ãç¹ã«ã¢ãã¤ã«ã®ãã®ãä½¿ç¨ããPythonããã©ãããã©ã¼ã ã«ä¾å­ããªãAPIã§ããã¢ã¤ãã¢ã¯ãã¦ã¼ã¶ã«éç¥ãæç¤ºãããªã©ãPlyeré¢æ°ãå¼ã³åºãã¦ã¢ããªãç°¡åã«å¼ã³åºãéã«ãPlyerã¯é¢ä¿ãªãããã©ãããã©ã¼ã ããªãã¬ã¼ãã£ã³ã°ã·ã¹ãã ã§æ­£ããæ¹æ³ã§å®è¡ããä¸è©±ãããã¨ãããã¨ã§ããåé¨çã«ã¯ãPlyerã¯Pyjniusï¼Androidï¼ãPyobjus(iOS)ã¨ãã¹ã¯ããããã©ãããã©ã¼ã ä¸ã§ããã¤ãã®ãã©ãããã©ã¼ã åºæã®APIãä½¿ç¨ãã¦ãã¾ãã Buildozerã«ãã£ã¦ã¤ã³ã¹ãã¼ã«ããããã¼ã¸ã§ã³ãå®è¡ãããã:code:`$HOME/.buildozer/android/platform` ã§SDKã®ãã¼ã«ãè¦ã¤ãã¾ãã 