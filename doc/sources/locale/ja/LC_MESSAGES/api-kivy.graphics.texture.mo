��    |      �              �  	   �     �  �     �  �    P
  �   \  �   �  j  �  �   ?     �  -   �           @  �   U  �   �  #   �     �  )   �     �  '   �  %   %  �   K  +     �   A     �  !   �  f     +     '   �  1   �  1     +   7  O   c  r   �  ;   &  P   b  �   �  U   \  M  �  2      [   3  :   �  �   �  3   Q  k   �  �   �  
   �  �  �     G     L     Y     \     j  �   n  	   1      ;  	   \     f  Z   |  (   �  9      �   :  5   �  /   �  3   $  9   X  8   �  ,   �  '   �  +       b   L   &  �   !   �!     �!  +   "  	   9"     C"     K"     Y"  /   h"  �   �"  M   5#  3   �#  G   �#  �   �#  d   �$  �   K%  w   �%  �  b&  V   �'  	   V(  Z   `(  �   �(  v   �)  %   /*  )   U*  (   *  "   �*  #   �*  5   �*  +   %+  "   Q+  !   t+  q   �+  Y   ,      b,  %   �,  '   �,  ,   �,     �,     -     -     (-     >-     N-     V-     l-     �-  �   �-  �   ^.     �.  ,   /  :   >/  u  y/  	   �0     �0  �   1  �  �1    b3  �   n4  �   �4  j  �5  �   Q7     �7  -   8     28     R8  �   g8  �   9  #   �9     �9  )   �9     :  '   :  %   7:  �   ]:  +   ';  �   S;     �;  !   <  f   *<  +   �<  '   �<  1   �<  1   =  +   I=  O   u=  r   �=  ;   8>  P   t>  �   �>  U   n?  M  �?  2   A  [   EA  :   �A  �   �A  3   cB  k   �B  �   C  
   �C  �  �C     YE     ^E     kE     nE     |E  �   �E  	   CF      MF  	   nF     xF  Z   �F  (   �F  9   G  �   LG  5   �G  /   H  3   6H  9   jH  8   �H  ,   �H  '   
I  +   2I  b   ^I  &  �I  !   �J     
K  +   K  	   KK     UK     ]K     kK  /   zK  �   �K  M   GL  3   �L  G   �L  �   M  d   �M  �   ]N  w   �N  �  tO  V   Q  	   hQ  Z   rQ  �   �Q  v   �R  %   AS  )   gS  (   �S  "   �S  #   �S  5   T  +   7T  "   cT  !   �T  q   �T  Y   U      tU  %   �U  '   �U  ,   �U     V     V     %V     :V     PV     `V     hV     ~V     �V  �   �V  �   pW     X  ,   #X  :   PX   0-1 range :attr:`callback` has been added :class:`Texture` is a class that handles OpenGL textures. Depending on the hardware, some OpenGL capabilities might not be available (BGRA support, NPOT support, etc.) A buffer containing the image data. It can be either a bytes object or a instance of a class that implements the python buffer interface, e.g. `array.array`, `bytearray`, numpy arrays etc. If it's not a bytes object, the underlying buffer must be contiguous, have only one dimension and must not be readonly, even though the data is not modified, due to a cython limitation. See module description for usage details. A texture atlas is a single texture that contains many images. If you want to separate the original texture into many single ones, you don't need to. You can get a region of the original texture. That will return the original texture with custom texture coordinates:: Add a callback to be called after the whole graphics context has been reloaded. This is where you can reupload your custom data into the GPU. Added support for paletted texture on OES: 'palette4_rgb8', 'palette4_rgba8', 'palette4_r5_g6_b5', 'palette4_rgba4', 'palette4_rgb5_a1', 'palette8_rgb8', 'palette8_rgba8', 'palette8_r5_g6_b5', 'palette8_rgba4' and 'palette8_rgb5_a1'. As the OpenGL documentation says, a texture must be power-of-two sized. That means your width and height can be one of 64, 32, 256... but not 3, 68, 42. NPOT means non-power-of-two. OpenGL ES 2 supports NPOT textures natively but with some drawbacks. Another type of NPOT texture is called a rectangle texture. POT, NPOT and textures all have their own pro/cons. As the table in previous section said, if your texture is NPOT, we create the nearest POT texture and generate a mipmap from it. This might change in the future. BGR/BGRA support Bind the texture to the current opengl state. Blit a buffer into the texture. Blitting custom data Check the opengl documentation for more information about the behavior of these values : http://www.khronos.org/opengles/sdk/docs/man/xhtml/glTexParameter.xml. Color format of the texture. Can be 'rgba' or 'rgb', 'luminance' or 'luminance_alpha'. On desktop, additional values are available: 'red', 'rg'. Continuing with the example above:: Create a texture based on size. Create a texture from an ImageData class. Features Flip tex_coords for horizontal display. Flip tex_coords for vertical display. For all text rendering with our core text renderer, the texture is generated but we already bind a method to redo the text rendering and reupload the text to the texture. You don't have to do anything. For example, to blit immutable bytes data:: From the OpenGL Wiki : "So a 64x16 2D texture can have 5 mip-maps: 32x8, 16x4, 8x2, 4x1, 2x1, and 1x1". Check http://www.opengl.org/wiki/Texture for more information. GL_TEXTURE_2D GL_TEXTURE_RECTANGLE_(NV|ARB|EXT) Get the pixels texture, in RGBA format only, unsigned byte. The origin of the image is at bottom left. Get/set the UV position inside the texture. Get/set the UV size inside the texture. Get/set the mag filter texture. Available values: Get/set the min filter texture. Available values: Get/set the wrap texture. Available values: Handle a region of a Texture class. Useful for non power-of-2 texture handling. Handle an OpenGL texture. This class can be used to create simple textures or complex textures based on ImageData. If True, it will automatically generate the mipmap texture. If a function is provided, it will be called when data is needed in the texture. If the OpenGL context is lost, the Texture must be reloaded. Textures that have a source are automatically reloaded but generated textures must be reloaded by the user. If the extension is not found, the conversion to RGB / RGBA will be done in software. If you create a NPOT texture, we first check whether your hardware supports it by checking the extensions GL_ARB_texture_non_power_of_two or OES_texture_npot. If none of these are available, we create the nearest POT texture that can contain your NPOT texture. The :meth:`Texture.create` will return a :class:`TextureRegion` instead. If your hardware supports NPOT, no POT is created. Image format, can be one of 'rgb', 'rgba', 'bgr', 'bgra', 'luminance' or 'luminance_alpha'. Indicate if we need to regenerate the mipmap from level 0. Indicate that the content of the texture should be updated and the callback function needs to be called when the texture will be used. Indicate which mipmap level we are going to update. Internal buffer format of the texture. Can be 'ubyte', 'ushort', 'uint', 'bute', 'short', 'int' or 'float'. Internal format storage of the texture. Can be 'rgba' or 'rgb', 'luminance' or 'luminance_alpha'. On desktop, additional values are available: 'r8', 'rg8', 'rgba8'. Mipmapping Mipmapping is an OpenGL technique for enhancing the rendering of large textures to small surfaces. Without mipmapping, you might see pixelation when you render to small surfaces. The idea is to precalculate the subtexture and apply some image filter as a linear filter. Then, when you render a small surface, instead of using the biggest texture, it will use a lower filtered texture. The result can look better this way. NPOT NPOT texture No OpenGL Target POT Parameter `flipped` added, defaults to True. All the OpenGL Texture are readed from bottom / left, it need to be flipped before saving. If you don't want to flip the image, set flipped to False. Partially Position to blit in the texture. Rectangle Reloading the Texture Remove a callback from the observer list, previously added by :meth:`add_reload_observer`. Replace a whole texture with image data. Return True if the texture has mipmap enabled (readonly). Return a part of the texture defined by the rectangular arguments (x, y, width, height). Returns a :class:`TextureRegion` instance. Return the (width, height) of the texture (readonly). Return the OpenGL ID of the texture (readonly). Return the OpenGL target of the texture (readonly). Return the buffer format used in this texture (readonly). Return the color format used in this texture (readonly). Return the height of the texture (readonly). Return the list of tex_coords (opengl). Return the width of the texture (readonly). Save the texture content to a file. Check :meth:`kivy.core.image.Image.save` for more information. Since 1.9.0, you can blit data stored in a instance that implements the python buffer interface, or a memoryview thereof, such as numpy arrays, python `array.array`, a `bytearray`, or a cython array. This is beneficial if you expect to blit similar data, with perhaps a few changes in the data. Size of the image (width, height) Size of the texture. So, if you want to create an RGBA texture:: Supported Texture Texture atlas Texture coords The first parameter will be the context itself. The first time you try to create a BGR or BGRA texture, we check whether your hardware supports BGR / BGRA textures by checking the extension 'GL_EXT_bgra'. The flipped parameter flips the saved image vertically, and defaults to True. The size can be negative if the texture is flipped. This way, you can use the same method for initialization and reloading. To make that happen, you need to specify mipmap=True when you create a texture. Some widgets already give you the ability to create mipmapped textures, such as the :class:`~kivy.uix.label.Label` and :class:`~kivy.uix.image.Image`. Type of the data buffer, can be one of 'ubyte', 'ushort', 'uint', 'byte', 'short', 'int' or 'float'. Unless the canvas will be updated due to other changes, :meth:`~kivy.graphics.instructions.Canvas.ask_update` should be called in order to update the texture. Use the :meth:`Texture.add_reload_observer` to add a reloading function that will be automatically called when needed:: When using a bytes representation of the data, for every change you have to regenerate the bytes instance, from perhaps a list, which is very inefficient. When using a buffer object, you can simply edit parts of the original data. Similarly, unless starting with a bytes object, converting to bytes requires a full copy, however, when using a buffer instance, no memory is copied, except to upload it to the GPU. When you create a texture, you should be aware of the default color and buffer format: Wrap mode You can create your own data and blit it to the texture using :meth:`Texture.blit_buffer`. You can use your texture in almost all vertex instructions with the :attr:`kivy.graphics.VertexIntruction.texture` parameter. If you want to use your texture in kv lang, you can save it in an :class:`~kivy.properties.ObjectProperty` inside your widget. You cannot instantiate this class yourself. You must use the function :meth:`Texture.create` to create a new texture:: `bufferfmt`: str, defaults to 'ubyte' `callback`: callable(), defaults to False `callback`: func(context) -> return None `colorfmt`: str, defaults to 'rgb' `colorfmt`: str, defaults to 'rgba' `icolorfmt`: str, defaults to the value of `colorfmt` `mipmap_generation`: bool, defaults to True `mipmap_level`: int, defaults to 0 `mipmap`: bool, defaults to False `pbuffer` can now be any class instance that implements the python buffer interface and / or memoryviews thereof. `pbuffer`: bytes, or a class that implements the buffer interface (including memoryview). `pos`: tuple, defaults to (0, 0) `size`: tuple, defaults to (128, 128) `size`: tuple, defaults to texture size added `mipmap_level` and `mipmap_generation` clamp_to_edge linear linear_mipmap_linear linear_mipmap_nearest mirrored_repeat nearest nearest_mipmap_linear nearest_mipmap_nearest repeat the buffer format determines how a color component is stored into memory. This can be one of 'ubyte', 'ushort', 'uint', 'byte', 'short', 'int' or 'float'. The default value and the most commonly used is 'ubyte'. the color/pixel format (:attr:`Texture.colorfmt`) that can be one of 'rgb', 'rgba', 'luminance', 'luminance_alpha', 'bgr' or 'bgra'. The default value is 'rgb' width-height range ベースクラス: :class:`builtins.object` ベースクラス: :class:`kivy.graphics.texture.Texture` Project-Id-Version: Kivy 1.10.0
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
 0-1 range :attr:`callback` has been added :class:`Texture` is a class that handles OpenGL textures. Depending on the hardware, some OpenGL capabilities might not be available (BGRA support, NPOT support, etc.) A buffer containing the image data. It can be either a bytes object or a instance of a class that implements the python buffer interface, e.g. `array.array`, `bytearray`, numpy arrays etc. If it's not a bytes object, the underlying buffer must be contiguous, have only one dimension and must not be readonly, even though the data is not modified, due to a cython limitation. See module description for usage details. A texture atlas is a single texture that contains many images. If you want to separate the original texture into many single ones, you don't need to. You can get a region of the original texture. That will return the original texture with custom texture coordinates:: Add a callback to be called after the whole graphics context has been reloaded. This is where you can reupload your custom data into the GPU. Added support for paletted texture on OES: 'palette4_rgb8', 'palette4_rgba8', 'palette4_r5_g6_b5', 'palette4_rgba4', 'palette4_rgb5_a1', 'palette8_rgb8', 'palette8_rgba8', 'palette8_r5_g6_b5', 'palette8_rgba4' and 'palette8_rgb5_a1'. As the OpenGL documentation says, a texture must be power-of-two sized. That means your width and height can be one of 64, 32, 256... but not 3, 68, 42. NPOT means non-power-of-two. OpenGL ES 2 supports NPOT textures natively but with some drawbacks. Another type of NPOT texture is called a rectangle texture. POT, NPOT and textures all have their own pro/cons. As the table in previous section said, if your texture is NPOT, we create the nearest POT texture and generate a mipmap from it. This might change in the future. BGR/BGRA support Bind the texture to the current opengl state. Blit a buffer into the texture. Blitting custom data Check the opengl documentation for more information about the behavior of these values : http://www.khronos.org/opengles/sdk/docs/man/xhtml/glTexParameter.xml. Color format of the texture. Can be 'rgba' or 'rgb', 'luminance' or 'luminance_alpha'. On desktop, additional values are available: 'red', 'rg'. Continuing with the example above:: Create a texture based on size. Create a texture from an ImageData class. Features Flip tex_coords for horizontal display. Flip tex_coords for vertical display. For all text rendering with our core text renderer, the texture is generated but we already bind a method to redo the text rendering and reupload the text to the texture. You don't have to do anything. For example, to blit immutable bytes data:: From the OpenGL Wiki : "So a 64x16 2D texture can have 5 mip-maps: 32x8, 16x4, 8x2, 4x1, 2x1, and 1x1". Check http://www.opengl.org/wiki/Texture for more information. GL_TEXTURE_2D GL_TEXTURE_RECTANGLE_(NV|ARB|EXT) Get the pixels texture, in RGBA format only, unsigned byte. The origin of the image is at bottom left. Get/set the UV position inside the texture. Get/set the UV size inside the texture. Get/set the mag filter texture. Available values: Get/set the min filter texture. Available values: Get/set the wrap texture. Available values: Handle a region of a Texture class. Useful for non power-of-2 texture handling. Handle an OpenGL texture. This class can be used to create simple textures or complex textures based on ImageData. If True, it will automatically generate the mipmap texture. If a function is provided, it will be called when data is needed in the texture. If the OpenGL context is lost, the Texture must be reloaded. Textures that have a source are automatically reloaded but generated textures must be reloaded by the user. If the extension is not found, the conversion to RGB / RGBA will be done in software. If you create a NPOT texture, we first check whether your hardware supports it by checking the extensions GL_ARB_texture_non_power_of_two or OES_texture_npot. If none of these are available, we create the nearest POT texture that can contain your NPOT texture. The :meth:`Texture.create` will return a :class:`TextureRegion` instead. If your hardware supports NPOT, no POT is created. Image format, can be one of 'rgb', 'rgba', 'bgr', 'bgra', 'luminance' or 'luminance_alpha'. Indicate if we need to regenerate the mipmap from level 0. Indicate that the content of the texture should be updated and the callback function needs to be called when the texture will be used. Indicate which mipmap level we are going to update. Internal buffer format of the texture. Can be 'ubyte', 'ushort', 'uint', 'bute', 'short', 'int' or 'float'. Internal format storage of the texture. Can be 'rgba' or 'rgb', 'luminance' or 'luminance_alpha'. On desktop, additional values are available: 'r8', 'rg8', 'rgba8'. Mipmapping Mipmapping is an OpenGL technique for enhancing the rendering of large textures to small surfaces. Without mipmapping, you might see pixelation when you render to small surfaces. The idea is to precalculate the subtexture and apply some image filter as a linear filter. Then, when you render a small surface, instead of using the biggest texture, it will use a lower filtered texture. The result can look better this way. NPOT NPOT texture No OpenGL Target POT Parameter `flipped` added, defaults to True. All the OpenGL Texture are readed from bottom / left, it need to be flipped before saving. If you don't want to flip the image, set flipped to False. Partially Position to blit in the texture. Rectangle Reloading the Texture Remove a callback from the observer list, previously added by :meth:`add_reload_observer`. Replace a whole texture with image data. Return True if the texture has mipmap enabled (readonly). Return a part of the texture defined by the rectangular arguments (x, y, width, height). Returns a :class:`TextureRegion` instance. Return the (width, height) of the texture (readonly). Return the OpenGL ID of the texture (readonly). Return the OpenGL target of the texture (readonly). Return the buffer format used in this texture (readonly). Return the color format used in this texture (readonly). Return the height of the texture (readonly). Return the list of tex_coords (opengl). Return the width of the texture (readonly). Save the texture content to a file. Check :meth:`kivy.core.image.Image.save` for more information. Since 1.9.0, you can blit data stored in a instance that implements the python buffer interface, or a memoryview thereof, such as numpy arrays, python `array.array`, a `bytearray`, or a cython array. This is beneficial if you expect to blit similar data, with perhaps a few changes in the data. Size of the image (width, height) Size of the texture. So, if you want to create an RGBA texture:: Supported Texture Texture atlas Texture coords The first parameter will be the context itself. The first time you try to create a BGR or BGRA texture, we check whether your hardware supports BGR / BGRA textures by checking the extension 'GL_EXT_bgra'. The flipped parameter flips the saved image vertically, and defaults to True. The size can be negative if the texture is flipped. This way, you can use the same method for initialization and reloading. To make that happen, you need to specify mipmap=True when you create a texture. Some widgets already give you the ability to create mipmapped textures, such as the :class:`~kivy.uix.label.Label` and :class:`~kivy.uix.image.Image`. Type of the data buffer, can be one of 'ubyte', 'ushort', 'uint', 'byte', 'short', 'int' or 'float'. Unless the canvas will be updated due to other changes, :meth:`~kivy.graphics.instructions.Canvas.ask_update` should be called in order to update the texture. Use the :meth:`Texture.add_reload_observer` to add a reloading function that will be automatically called when needed:: When using a bytes representation of the data, for every change you have to regenerate the bytes instance, from perhaps a list, which is very inefficient. When using a buffer object, you can simply edit parts of the original data. Similarly, unless starting with a bytes object, converting to bytes requires a full copy, however, when using a buffer instance, no memory is copied, except to upload it to the GPU. When you create a texture, you should be aware of the default color and buffer format: Wrap mode You can create your own data and blit it to the texture using :meth:`Texture.blit_buffer`. You can use your texture in almost all vertex instructions with the :attr:`kivy.graphics.VertexIntruction.texture` parameter. If you want to use your texture in kv lang, you can save it in an :class:`~kivy.properties.ObjectProperty` inside your widget. You cannot instantiate this class yourself. You must use the function :meth:`Texture.create` to create a new texture:: `bufferfmt`: str, defaults to 'ubyte' `callback`: callable(), defaults to False `callback`: func(context) -> return None `colorfmt`: str, defaults to 'rgb' `colorfmt`: str, defaults to 'rgba' `icolorfmt`: str, defaults to the value of `colorfmt` `mipmap_generation`: bool, defaults to True `mipmap_level`: int, defaults to 0 `mipmap`: bool, defaults to False `pbuffer` can now be any class instance that implements the python buffer interface and / or memoryviews thereof. `pbuffer`: bytes, or a class that implements the buffer interface (including memoryview). `pos`: tuple, defaults to (0, 0) `size`: tuple, defaults to (128, 128) `size`: tuple, defaults to texture size added `mipmap_level` and `mipmap_generation` clamp_to_edge linear linear_mipmap_linear linear_mipmap_nearest mirrored_repeat nearest nearest_mipmap_linear nearest_mipmap_nearest repeat the buffer format determines how a color component is stored into memory. This can be one of 'ubyte', 'ushort', 'uint', 'byte', 'short', 'int' or 'float'. The default value and the most commonly used is 'ubyte'. the color/pixel format (:attr:`Texture.colorfmt`) that can be one of 'rgb', 'rgba', 'luminance', 'luminance_alpha', 'bgr' or 'bgra'. The default value is 'rgb' width-height range ベースクラス: :class:`builtins.object` ベースクラス: :class:`kivy.graphics.texture.Texture` 