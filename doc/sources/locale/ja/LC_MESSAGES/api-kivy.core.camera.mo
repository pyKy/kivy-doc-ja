��          �               �     �     �  v   �  l   9  .   �  E   �           <  ,   O  �   |  1   K  m   }     �          "  7   ;  �   s     &  	   3     =     J     i  7   �  u  �     0     N  v   U  l   �  .   9	  E   h	      �	     �	  ,   �	  �   
  1   �
  m        ~     �     �  7   �  �        �  	   �     �     �     �  7      Abstract Camera Widget class. Camera Concrete camera classes must implement initialization and frame capturing to a buffer that can be uploaded to the gpu. Core class for acquiring the camera and converting its input into a :class:`~kivy.graphics.texture.Texture`. Fired each time the camera texture is updated. Fired when the camera is loaded and the texture has become available. Initialise the camera (internal) Release the camera Resolution of camera capture (width, height) Resolution to try to request from the camera. Used in the gstreamer pipeline by forcing the appsink caps to this resolution. If the camera doesnt support the resolution, a negotiation error might be thrown. Return the camera texture with the latest capture Size at which the image is drawn. If no size is specified, it defaults to the resolution of the camera image. Source index of the camera Source index of the camera. Start the camera acquire The pygst and videocapture providers have been removed. There is now 2 distinct Gstreamer implementation: one using Gi/Gst working for both Python 2+3 with Gstreamer 1.0, and one using PyGST working only for Python 2 + Gstreamer 0.10. `index`: int `on_load` `on_texture` `resolution`: tuple (int, int) `size`: tuple (int, int) ベースクラス: :class:`kivy.event.EventDispatcher` Project-Id-Version: Kivy 1.10.0
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
 Abstract Camera Widget class. Camera Concrete camera classes must implement initialization and frame capturing to a buffer that can be uploaded to the gpu. Core class for acquiring the camera and converting its input into a :class:`~kivy.graphics.texture.Texture`. Fired each time the camera texture is updated. Fired when the camera is loaded and the texture has become available. Initialise the camera (internal) Release the camera Resolution of camera capture (width, height) Resolution to try to request from the camera. Used in the gstreamer pipeline by forcing the appsink caps to this resolution. If the camera doesnt support the resolution, a negotiation error might be thrown. Return the camera texture with the latest capture Size at which the image is drawn. If no size is specified, it defaults to the resolution of the camera image. Source index of the camera Source index of the camera. Start the camera acquire The pygst and videocapture providers have been removed. There is now 2 distinct Gstreamer implementation: one using Gi/Gst working for both Python 2+3 with Gstreamer 1.0, and one using PyGST working only for Python 2 + Gstreamer 0.10. `index`: int `on_load` `on_texture` `resolution`: tuple (int, int) `size`: tuple (int, int) ベースクラス: :class:`kivy.event.EventDispatcher` 