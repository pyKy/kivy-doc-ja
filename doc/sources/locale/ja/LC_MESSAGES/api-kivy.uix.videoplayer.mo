��    F      L              |  Y   }  U   �  S   -  R   �  X   �  t   -  �   �  �   3  �   �  �   H  �   �  �   ^	  �   �	  �   z
  L   	  R   V  S   �  P   �  O   N  T   �  P   �  P   D     �    �  5   �     �  o   �  w   k  4   �  \        u  l   �     �  0     
   F  4   Q  �   �  <   b  +   �  *   �  *   �  @   !  ?   b  B   �  A   �  P   '  .   x  b   �  �   
     �     �  =   �  +    3  ;  ^   o  �   �  �   �  u   t     �       A     K   T  W   �    �  8     H   M  ;   �  ;   �  1     u  @  Y   �  U      S   f   R   �   X   !  t   f!  �   �!  �   l"  �   �"  �   �#  �   
$  �   �$  �   "%  �   �%  L   B&  R   �&  S   �&  P   6'  O   �'  T   �'  P   ,(  P   }(     �(    �(  5   �)     (*  o   4*  w   �*  4   +  \   Q+     �+  l   �+     7,  0   N,  
   ,  4   �,  �   �,  <   �-  +   �-  *   .  *   /.  @   Z.  ?   �.  B   �.  A   /  P   `/  .   �/  b   �/  �   C0     �0     �0  =   
1  +  H1  3  t2  ^   �3  �   4  �   �4  u   �5     #6     >6  A   K6  K   �6  W   �6    17  8   M8  H   �8  ;   �8  ;   9  1   G9   :attr:`allow_fullscreen` is a :class:`~kivy.properties.BooleanProperty` defaults to True. :attr:`annotations` is a :class:`~kivy.properties.StringProperty` and defaults to ''. :attr:`duration` is a :class:`~kivy.properties.NumericProperty` and defaults to -1. :attr:`duration` is a :class:`~kivy.properties.NumericProperty` and defaults to 1. :attr:`fullscreen` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`image_loading` is a :class:`~kivy.properties.StringProperty` and defaults to 'data/images/image-loading.gif'. :attr:`image_overlay_play` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/player-play-overlay'. :attr:`image_pause` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/media-playback-pause'. :attr:`image_play` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/media-playback-start'. :attr:`image_stop` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/media-playback-stop'. :attr:`image_volumehigh` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/audio-volume-high'. :attr:`image_volumelow` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/audio-volume-low'. :attr:`image_volumemedium` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/audio-volume-medium'. :attr:`image_volumemuted` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/audio-volume-muted'. :attr:`options` a :class:`~kivy.properties.DictProperty` and defaults to {}. :attr:`play` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`position` is a :class:`~kivy.properties.NumericProperty` and defaults to -1. :attr:`source` is a :class:`~kivy.properties.StringProperty` and defaults to ''. :attr:`start` is a :class:`~kivy.properties.NumericProperty` and defaults to 0. :attr:`state` is an :class:`~kivy.properties.OptionProperty` and defaults to 'stop'. :attr:`thumbnail` a :class:`~kivy.properties.StringProperty` and defaults to ''. :attr:`volume` is a :class:`~kivy.properties.NumericProperty` and defaults to 1. Additional keys are available: An annotation file is JSON-based, providing a list of label dictionary items. The key and value must match one of the :class:`VideoPlayerAnnotation` items. For example, here is a short version of a jsa file that you can find in `examples/widgets/cityCC0.jsa`:: Annotation class used for creating annotation labels. Annotations Boolean, indicates whether the video is playing or not. You can start/stop the video by setting this property:: By default, you can double-tap on the video to make it fullscreen. Set this property to False to prevent this behavior. Calling seek() before video is loaded has no effect. Change the position to a percentage of the duration. Percentage must be a value between 0-1. Duration of the annotation. Duration of the video. The duration defaults to -1 and is set to the real duration when the video is loaded. End-of-stream behavior For our cityCC0.mpg example, the result will be: Fullscreen If set, it will be used for reading annotations box. If you want to display text at a specific time and for a certain duration, consider annotations. An annotation file has a ".jsa" extension. The player will automatically load the associated annotation file if it exists. If you want to experiment with annotation files, test with:: Image filename used for the "Pause" button. Image filename used for the "Play" button. Image filename used for the "Stop" button. Image filename used for the volume icon when the volume is high. Image filename used for the volume icon when the volume is low. Image filename used for the volume icon when the volume is medium. Image filename used for the volume icon when the volume is muted. Image filename used to show a "play" overlay when the video has not yet started. Image filename used when the video is loading. Optional parameters can be passed to a :class:`~kivy.uix.video.Video` instance with this property. Position of the video between 0 and :attr:`duration`. The position defaults to -1 and is set to the real position when the video is loaded. Source of the video to read. Start time of the annotation. String, indicates whether to play, pause, or stop the video:: Switch to fullscreen view. This should be used with care. When activated, the widget will remove itself from its parent, remove all children from the window and will add itself to it. When fullscreen is unset, all the previous children are restored and the widget is restored to its previous parent. The `eos` property of the VideoBase class is a string specifying the end-of-stream behavior. This property differs from the `eos` properties of the :class:`VideoPlayer` and :class:`~kivy.uix.video.Video` classes, whose `eos` property is simply a boolean indicating that the end of the file has been reached. The re-add operation doesn't care about the index position of it's children within the parent. The video player can play the video in fullscreen, if :attr:`VideoPlayer.allow_fullscreen` is activated by a double-tap on the video. By default, if the video is smaller than the Window, it will be not stretched. The video player widget can be used to play video and let the user control the play/pausing, volume and position. The widget cannot be customized much because of the complex assembly of numerous base widgets. Thumbnail of the video to show. If None, VideoPlayer will try to find the thumbnail from the :attr:`source` + '.png'. Use :attr:`state` instead. Video player VideoPlayer class. See module documentation for more information. Volume of the video in the range 0-1. 1 means full volume and 0 means mute. You can allow stretching by passing custom options to a :class:`VideoPlayer` instance:: You can specify what happens when the video has finished playing by passing an `eos` (end of stream) directive to the underlying :class:`~kivy.core.video.VideoBase` class. `eos` can be one of 'stop', 'pause' or 'loop' and defaults to 'stop'. For example, in order to loop the video:: bgcolor: [r, g, b, a] - background color of the text box bgsource: 'filename' - background image used for the background text box border: (n, e, s, w) - border used for the background image ベースクラス: :class:`kivy.uix.gridlayout.GridLayout` ベースクラス: :class:`kivy.uix.label.Label` Project-Id-Version: Kivy 1.10.0
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
 :attr:`allow_fullscreen` is a :class:`~kivy.properties.BooleanProperty` defaults to True. :attr:`annotations` is a :class:`~kivy.properties.StringProperty` and defaults to ''. :attr:`duration` is a :class:`~kivy.properties.NumericProperty` and defaults to -1. :attr:`duration` is a :class:`~kivy.properties.NumericProperty` and defaults to 1. :attr:`fullscreen` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`image_loading` is a :class:`~kivy.properties.StringProperty` and defaults to 'data/images/image-loading.gif'. :attr:`image_overlay_play` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/player-play-overlay'. :attr:`image_pause` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/media-playback-pause'. :attr:`image_play` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/media-playback-start'. :attr:`image_stop` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/media-playback-stop'. :attr:`image_volumehigh` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/audio-volume-high'. :attr:`image_volumelow` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/audio-volume-low'. :attr:`image_volumemedium` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/audio-volume-medium'. :attr:`image_volumemuted` is a :class:`~kivy.properties.StringProperty` and defaults to 'atlas://data/images/defaulttheme/audio-volume-muted'. :attr:`options` a :class:`~kivy.properties.DictProperty` and defaults to {}. :attr:`play` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`position` is a :class:`~kivy.properties.NumericProperty` and defaults to -1. :attr:`source` is a :class:`~kivy.properties.StringProperty` and defaults to ''. :attr:`start` is a :class:`~kivy.properties.NumericProperty` and defaults to 0. :attr:`state` is an :class:`~kivy.properties.OptionProperty` and defaults to 'stop'. :attr:`thumbnail` a :class:`~kivy.properties.StringProperty` and defaults to ''. :attr:`volume` is a :class:`~kivy.properties.NumericProperty` and defaults to 1. Additional keys are available: An annotation file is JSON-based, providing a list of label dictionary items. The key and value must match one of the :class:`VideoPlayerAnnotation` items. For example, here is a short version of a jsa file that you can find in `examples/widgets/cityCC0.jsa`:: Annotation class used for creating annotation labels. Annotations Boolean, indicates whether the video is playing or not. You can start/stop the video by setting this property:: By default, you can double-tap on the video to make it fullscreen. Set this property to False to prevent this behavior. Calling seek() before video is loaded has no effect. Change the position to a percentage of the duration. Percentage must be a value between 0-1. Duration of the annotation. Duration of the video. The duration defaults to -1 and is set to the real duration when the video is loaded. End-of-stream behavior For our cityCC0.mpg example, the result will be: Fullscreen If set, it will be used for reading annotations box. If you want to display text at a specific time and for a certain duration, consider annotations. An annotation file has a ".jsa" extension. The player will automatically load the associated annotation file if it exists. If you want to experiment with annotation files, test with:: Image filename used for the "Pause" button. Image filename used for the "Play" button. Image filename used for the "Stop" button. Image filename used for the volume icon when the volume is high. Image filename used for the volume icon when the volume is low. Image filename used for the volume icon when the volume is medium. Image filename used for the volume icon when the volume is muted. Image filename used to show a "play" overlay when the video has not yet started. Image filename used when the video is loading. Optional parameters can be passed to a :class:`~kivy.uix.video.Video` instance with this property. Position of the video between 0 and :attr:`duration`. The position defaults to -1 and is set to the real position when the video is loaded. Source of the video to read. Start time of the annotation. String, indicates whether to play, pause, or stop the video:: Switch to fullscreen view. This should be used with care. When activated, the widget will remove itself from its parent, remove all children from the window and will add itself to it. When fullscreen is unset, all the previous children are restored and the widget is restored to its previous parent. The `eos` property of the VideoBase class is a string specifying the end-of-stream behavior. This property differs from the `eos` properties of the :class:`VideoPlayer` and :class:`~kivy.uix.video.Video` classes, whose `eos` property is simply a boolean indicating that the end of the file has been reached. The re-add operation doesn't care about the index position of it's children within the parent. The video player can play the video in fullscreen, if :attr:`VideoPlayer.allow_fullscreen` is activated by a double-tap on the video. By default, if the video is smaller than the Window, it will be not stretched. The video player widget can be used to play video and let the user control the play/pausing, volume and position. The widget cannot be customized much because of the complex assembly of numerous base widgets. Thumbnail of the video to show. If None, VideoPlayer will try to find the thumbnail from the :attr:`source` + '.png'. Use :attr:`state` instead. Video player VideoPlayer class. See module documentation for more information. Volume of the video in the range 0-1. 1 means full volume and 0 means mute. You can allow stretching by passing custom options to a :class:`VideoPlayer` instance:: You can specify what happens when the video has finished playing by passing an `eos` (end of stream) directive to the underlying :class:`~kivy.core.video.VideoBase` class. `eos` can be one of 'stop', 'pause' or 'loop' and defaults to 'stop'. For example, in order to loop the video:: bgcolor: [r, g, b, a] - background color of the text box bgsource: 'filename' - background image used for the background text box border: (n, e, s, w) - border used for the background image ベースクラス: :class:`kivy.uix.gridlayout.GridLayout` ベースクラス: :class:`kivy.uix.label.Label` 