Þ    S      ´              L     M     e     |          ¤     ½     Õ  ½   ð  #   ®     Ò     Z     h            ;   ®  T   ê  L   ?       (     -   ¾  o   ì  ø   \	  º   U
  ;     7   L  =     J   Â  <     .   J  -   y  '   §  (   Ï  '   ø  (      )   I  "   s  
        ¡     ¶     Â     Ñ     ß     è     ö  	     
             1     H     Y     f     u               §  	   µ     ¿  
   Ö     á  9   í  E   '  n   m  ?   Ü  \        y            (        Ä  \   Ñ     .  2   I  2   |  1   ¯  !   á  $     "   (  1   K  0  }     ®  k   3  "     t  Â     7     O     f     z          §     ¿     Ú  #   Û  È   ÿ     È  )   Ö  *         +  Q   H  m     W        `  3   i  B        à     }    ~  D     @   Ü  I     p   g  M   Ø  6   &  0   ]  0     9   ¿  6   ù  <   0   9   m   !   §   
   É      Ô      é      õ      !     !     !     )!  	   :!  
   D!     O!     d!     {!     !     !     ¨!     »!     Ë!     Ú!  	   è!     ò!  
   	"     "  f    "  r   "      ú"  f   #  ^   $  !   a$     $     $  (   $     Á$  y   Ý$     W%  /   o%  /   %  .   Ï%  '   þ%  !   &&     H&  .   h&  °  &  ´   H(  ¯   ý(  "   ­)   0: DISPMANX_ID_MAIN_LCD 1: DISPMANX_ID_AUX_LCD 2: DISPMANX_ID_HDMI 3: DISPMANX_ID_SDTV 4: DISPMANX_ID_FORCE_LCD 5: DISPMANX_ID_FORCE_TV 6: DISPMANX_ID_FORCE_OTHER :mod:`kivy.core` try to select the best implementation available for your platform. For testing or custom installation, you might want to restrict the selector to a specific implementation. Android: `<android app path>/.kivy` Change the default Raspberry Pi display to use. The list of available value is accessible in `vc_dispmanx_types.h`. Default value is 0: Configuration Controlling the environment Defaults to: Desktop: `<user home>/.kivy` Environment variables should be set before importing kivy:: Following is a list of the potential incompatibilities that result when set to true. For example, in order to restrict text rendering to the PIL implementation:: Graphics If set, logs will be not print to a file If set, logs will be not print to the console If set, no configuration file will be read or writen to. This also applies to the user configuration directory. If set, the SDL2 libraries and headers from this path are used when compiling kivy instead of the ones installed system-wide. To use the same libraries while running a kivy app, this path must be added at the start of the PATH environment variable. If set, the argument passed in command line will not be parsed and used by Kivy. Ie, you can safely make a script or an app with your own arguments without requiring the `--` delimiter:: If set, the value will be used for :attr:`Metrics.density`. If set, the value will be used for :attr:`Metrics.dpi`. If set, the value will be used for :attr:`Metrics.fontscale`. If this name is found in environ, Kivy will not read the user config file. If true, the number of indices in a mesh is limited to 65535 Implementation to use for clipboard management Implementation to use for creating the Window Implementation to use for playing audio Implementation to use for reading camera Implementation to use for reading image Implementation to use for rendering text Implementation to use for rendering video Implementation to use for spelling KIVY_AUDIO KIVY_BCM_DISPMANX_ID KIVY_CAMERA KIVY_CLIPBOARD KIVY_DATA_DIR KIVY_DPI KIVY_EXTS_DIR KIVY_GLES_LIMITS KIVY_HOME KIVY_IMAGE KIVY_METRICS_DENSITY KIVY_METRICS_FONTSCALE KIVY_MODULES_DIR KIVY_NO_ARGS KIVY_NO_CONFIG KIVY_NO_CONSOLELOG KIVY_NO_FILELOG KIVY_SDL2_PATH KIVY_SPELLING KIVY_TEXT KIVY_USE_DEFAULTCONFIG KIVY_VIDEO KIVY_WINDOW Location of the Kivy data, defaults to `<kivy path>/data` Location of the Kivy extensions, defaults to `<kivy path>/extensions` Location of the Kivy home. This directory is used for local configuration, and must be in a writable location. Location of the Kivy modules, defaults to `<kivy path>/modules` Many environment variables are available to control the initialization and behavior of Kivy. Mesh indices Metrics Path control Restrict core to specific implementation Texture blit This path is required for the compilation of Kivy. It is not required for program execution. Values: enchant, osxappkit Values: pygst, gstplayer, pyglet, ffpyplayer, null Values: sdl2, gstplayer, pygst, ffpyplayer, pygame Values: sdl2, pil, pygame, imageio, tex, dds, gif Values: sdl2, pil, pygame, sdlttf Values: sdl2, pygame, dummy, android Values: sdl2, pygame, x11, egl_rpi Values: videocapture, avfoundation, pygst, opencv When blitting to a texture, the data (color and buffer) format must be the same format as the one used at the texture creation. On desktop, the conversion of different color is correctly handled by the driver, while on Android, most of devices fail to do it. Ref: https://github.com/kivy/kivy/issues/1600 Whether the GLES2 restrictions are enforced (the default, or if set to 1). If set to false, Kivy will not be truly GLES2 compatible. You can control the default directories where config files, modules, extensions, and kivy data are located. iOS: `<user home>/Documents/.kivy` Project-Id-Version: Kivy 1.9.1
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
 0: DISPMANX_ID_MAIN_LCD 1: DISPMANX_ID_AUX_LCD 2: DISPMANX_ID_HDMI 3: DISPMANX_ID_SDTV 4: DISPMANX_ID_FORCE_LCD 5: DISPMANX_ID_FORCE_TV 6: DISPMANX_ID_FORCE_OTHER ä½¿ç¨ãã¦ãããã©ãããã©ã¼ã ã§:mod:`kivy.core`ã®å©ç¨å¯è½ã§æåã®å®è£ãé¸æãã¦ã¿ã¦ãã ããããã¹ãã¾ãã¯ã«ã¹ã¿ã ã¤ã³ã¹ãã¼ã«ã§ã¯ãç¹å®ã®å®è£ã«ã»ã¬ã¯ã¿ãå¶éããå ´åãããã¾ãã Android: `<android app path>/.kivy` ä½¿ç¨ããããã©ã«ãã®ã©ãºããªã¼ãã¤ã®è¡¨ç¤ºãå¤æ´ãã¾ããä½¿ç¨å¯è½ãªå¤ã®ãªã¹ãã¯ã`vc_dispmanx_types.h` ã§ã¢ã¯ã»ã¹å¯è½ã§ããããã©ã«ãå¤ã¯0ã§ãã Configuration Controlling the environment(ç¿»è¨³æ¸ã¿) ããã©ã«ãã¯ä»¥ä¸ã®éãã§ãï¼ Desktop: `<user home>/.kivy` ç°å¢å¤æ°ã¯kivyã¤ã³ãã¼ãããåã«è¨­å®ããå¿è¦ãããã¾ã : trueã«è¨­å®ããå ´åã«çããæ½å¨çãªéäºææ§ã®åé¡ã®ãªã¹ããä»¥ä¸ã«ç¤ºãã¾ãã ä¾ãã°ãPILã®ãã­ã¹ãã®ã¬ã³ããªã³ã°ã®å®è£ãå¶éããããã«ï¼ Graphics è¨­å®ããã¨ãã­ã°ãæ¸ãè¾¼ã¾ãã¾ãã è¨­å®ããã¨ãã³ã³ã½ã¼ã«ã«ã­ã°ãåºåããã¾ãã è¨­å®ããã¨ãè¨­å®ãã¡ã¤ã«ãèª­ã¿è¾¼ã¿æ¸ãè¾¼ã¿ãè¡ããã¾ãããããã¯ã¦ã¼ã¶ã¼è¨­å®ãã£ã¬ã¯ããªã«é©ç¨ããã¾ãã è¨­å®ããå ´åãã·ã¹ãã å¨ä½ã§ã¤ã³ã¹ãã¼ã«ã®ä»£ããã«kivyã³ã³ãã¤ã«ããã¨ãã« kivyã¢ããªã®å®è¡ä¸­ã«åãã©ã¤ãã©ãªãä½¿ç¨ããã«ã¯ããã¹ãPATHç°å¢å¤æ°ã®åé ­ã«è¿½å ããå¿è¦ãããã¾ãã è¨­å®ããå ´åã¯ãã³ãã³ãã©ã¤ã³ã§æ¸¡ãããå¼æ°ãè§£æãããKivyã«ãã£ã¦ä½¿ç¨ããããã¨ã¯ããã¾ãããå®å¨ã«ã¹ã¯ãªããã¾ãã¯å¿è¦ã¨ãããç¬èªã®å¼æ°ãä½¿ã£ã¦ã¢ããªãä½ããã¨ãã§ãã¾ã - åºåãæå­ï¼ è¨­å®ããã¨:attr:`Metrics.density`ã®å¤ã«ä½¿ç¨ããã¾ãã è¨­å®ããã¨:attr:`Metrics.dpi`ã®å¤ã«ä½¿ç¨ããã¾ãã è¨­å®ããã¨ã:attr:`Metrics.fontscale`ã®å¤ã«ãããããã¾ã ãã®ååãç°å¢ã§çºè¦ãããå ´åãKivyã¯ãã¦ã¼ã¶ã¼ã®è¨­å®ãã¡ã¤ã«ãèª­ã¿ã¾ããã è¨­å®ããã¨ã¡ãã·ã¥ã®ã¤ã³ããã¯ã¹ã¯65535ã«å¶éããã¾ã ã¯ãªãããã¼ãç®¡çã®å®è£ã«ä½¿ç¨ãã¾ã ã¦ã£ã³ãã¦ä½æã®å®è£ã«ä½¿ç¨ãã¾ã ãªã¼ãã£ãªåçã®å®è£ã«ä½¿ç¨ãã¾ã ã«ã¡ã©ã®ã¬ã³ããªã³ã°ã®å®è£ã«ä½¿ç¨ãã¾ã ç»åã®ã¬ã³ããªã³ã°ã®å®è£ã«ä½¿ç¨ãã¾ã ãã­ã¹ãã¬ã³ããªã³ã°ã®å®è£ã«ä½¿ç¨ãã¾ãã ãããªã®ã¬ã³ããªã³ã°ã®å®è£ã«ä½¿ç¨ãã¾ã æå­ã®å®è£ã«ä½¿ç¨ãã¾ã KIVY_AUDIO KIVY_BCM_DISPMANX_ID KIVY_CAMERA KIVY_CLIPBOARD KIVY_DATA_DIR KIVY_DPI KIVY_EXTS_DIR KIVY_GLES_LIMITS KIVY_HOME KIVY_IMAGE KIVY_METRICS_DENSITY KIVY_METRICS_FONTSCALE KIVY_MODULES_DIR KIVY_NO_ARGS KIVY_NO_CONFIG KIVY_NO_CONSOLELOG KIVY_NO_FILELOG KIVY_SDL2_PATH KIVY_SPELLING KIVY_TEXT KIVY_USE_DEFAULTCONFIG KIVY_VIDEO KIVY_WINDOW Kivyã®ãã¼ã¿ãæ ¼ç´ããã¦ããå ´æã§ããããã©ã«ãã¯ `<kivy path>/data` ã§ãã Kivyã®æ¡å¼µãã¼ã¿ãæ ¼ç´ããã¦ããå ´æã§ããããã©ã«ãã¯ `<kivy path>/extensions` ã§ãã Kivyãã¼ã ã®å ´æããã®ãã£ã¬ã¯ããªã¯ãã­ã¼ã«ã«è¨­å®ã®ããã«ä½¿ç¨ãããæ¸ãè¾¼ã¿å¯è½ãªå ´æã«ãªããã°ãªãã¾ããã Kivyã®moduleãæ ¼ç´ããã¦ããå ´æã§ããããã©ã«ãã¯ `<kivy path>/modules` ã§ãã å¤ãã®ç°å¢å¤æ°ã¯Kivyã®åæåã¨åä½ãå¶å¾¡ããããã«å©ç¨å¯è½ã§ãã ã¡ãã·ã¥ã®ã¤ã³ããã¯ã¹ Metrics Path control Restrict core to specific implementation ãã¯ã¹ãã£ã®ããã ãã®ãã¹ã¯Kivyã®ã³ã³ãã¤ã«ã«å¿è¦ã«ãªãã¾ãããã­ã°ã©ã ã®å®è¡ã§ã¯å¿è¦ã§ã¯ãªãã§ãã å¤: enchant, osxappkit å¤: pygst, gstplayer, pyglet, ffpyplayer, null å¤: sdl2, gstplayer, pygst, ffpyplayer, pygame å¤: sdl2, pil, pygame, imageio, tex, dds, gif å¤ï¼Values: sdl2, pil, pygame, sdlttf å¤: sdl2, pygame, dummy, android å¤: sdl2, pygame, x11, egl_rpi å¤: videocapture, avfoundation, pygst, opencv ãã¯ã¹ãã£ã«ããªããããã¨ããã¼ã¿ãã©ã¼ãããï¼è²ããããã¡ï¼ã¯ããã¯ã¹ãã£ã®ä½ææã«ä½¿ç¨ããããã®ã¨åãå½¢å¼ã§ãªããã°ãªãã¾ããã Androidä¸ã§ãããã¤ã¹ã®ã»ã¨ãã©ã¯å®è¡ã«å¤±æããªããããã¹ã¯ãããä¸ã«ãç°ãªãè²ã®å¤æãæ­£ããããã©ã¤ãã«ãã£ã¦å¦çããã¾ããåèï¼https://github.com/kivy/kivy/issues/1600 GLES2å¶éãé©ç¨ããããã©ããï¼ããã©ã«ããã¾ãã¯1ã«è¨­å®ããã¦ããå ´åï¼ã falseã«è¨­å®ããã¨ãKivyã¯GLES2äºææ§ããªããªãã¾ãã è¨­å®ãã¡ã¤ã«ãã¢ã¸ã¥ã¼ã«ãæ¡å¼µæ©è½ãããã³kivyãã¼ã¿ãéç½®ããã¦ããããã©ã«ãã®ãã£ã¬ã¯ããªãå¶å¾¡ãããã¨ãã§ãã¾ãã iOS: `<user home>/Documents/.kivy` 