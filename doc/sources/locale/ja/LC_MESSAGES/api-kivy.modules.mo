��          �               �  W   �  G   %  S   m  t   �  J   6  j   �  B   �  a   /     �     �  %   �     �  j     A   r     �     �  B   �  �     Q   �  �     4  �  ?   �  g   	  t   y	     �	      
  u  
  W   �  G   �  S   2  t   �  J   �  j   F  B   �  a   �     V     r  %   �     �  j   �  A   7     y     �  B   �  �   �  Q   t  �   �  4  a  ?   �  g   �  t   >     �     �   :class:`~kivy.modules.inspector`: Examines your widget hierarchy and widget properties. :class:`~kivy.modules.joycursor`: Navigate in your app with a joystick. :class:`~kivy.modules.keybinding`: Bind some keys to actions, such as a screenshot. :class:`~kivy.modules.monitor`: Add a red topbar that indicates the FPS and a small graph indicating input activity. :class:`~kivy.modules.recorder`: Record and playback a sequence of events. :class:`~kivy.modules.screen`: Emulate the characteristics (dpi/density/ resolution) of different screens. :class:`~kivy.modules.touchring`: Draw a circle around each touch. :class:`~kivy.modules.webdebugger`: Realtime examination of your app internals via a web browser. Activate a module in Python Activate a module in the config Activate a module via the commandline Activating a module Before starting your application, preferably at the start of your import, you can do something like this:: Create a file in your `HOME/.kivy/mods`, and create 2 functions:: Create your own module Modules Modules are automatically loaded from the Kivy path and User path: Modules are classes that can be loaded when a Kivy application is starting. The loading of modules is managed by the config file. Currently, we include: Only the name of the module followed by "=" is sufficient to activate the module. Some modules, such as the screen, may require additional parameters. They will, however, print these parameters to the console when launched without them. Start/stop are functions that will be called for every window opened in Kivy. When you are starting a module, you can use these to store and manage the module state. Use the `ctx` variable as a dictionary. This context is unique for each instance/start() call of the module, and will be passed to stop() too. There are various ways in which you can activate a kivy module. To activate a module this way, you can edit your configuration file (in your `HOME/.kivy/config.ini`):: When starting your application from the commandline, you can add a *-m <modulename>* to the arguments. For example:: `HOME/.kivy/mods` `PATH_TO_KIVY/kivy/modules` Project-Id-Version: Kivy 1.10.0
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
 :class:`~kivy.modules.inspector`: Examines your widget hierarchy and widget properties. :class:`~kivy.modules.joycursor`: Navigate in your app with a joystick. :class:`~kivy.modules.keybinding`: Bind some keys to actions, such as a screenshot. :class:`~kivy.modules.monitor`: Add a red topbar that indicates the FPS and a small graph indicating input activity. :class:`~kivy.modules.recorder`: Record and playback a sequence of events. :class:`~kivy.modules.screen`: Emulate the characteristics (dpi/density/ resolution) of different screens. :class:`~kivy.modules.touchring`: Draw a circle around each touch. :class:`~kivy.modules.webdebugger`: Realtime examination of your app internals via a web browser. Activate a module in Python Activate a module in the config Activate a module via the commandline Activating a module Before starting your application, preferably at the start of your import, you can do something like this:: Create a file in your `HOME/.kivy/mods`, and create 2 functions:: Create your own module Modules Modules are automatically loaded from the Kivy path and User path: Modules are classes that can be loaded when a Kivy application is starting. The loading of modules is managed by the config file. Currently, we include: Only the name of the module followed by "=" is sufficient to activate the module. Some modules, such as the screen, may require additional parameters. They will, however, print these parameters to the console when launched without them. Start/stop are functions that will be called for every window opened in Kivy. When you are starting a module, you can use these to store and manage the module state. Use the `ctx` variable as a dictionary. This context is unique for each instance/start() call of the module, and will be passed to stop() too. There are various ways in which you can activate a kivy module. To activate a module this way, you can edit your configuration file (in your `HOME/.kivy/config.ini`):: When starting your application from the commandline, you can add a *-m <modulename>* to the arguments. For example:: `HOME/.kivy/mods` `PATH_TO_KIVY/kivy/modules` 