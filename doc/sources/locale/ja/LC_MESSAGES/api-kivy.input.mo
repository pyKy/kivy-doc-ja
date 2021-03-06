��    ,      |              �  C   �  �   !  E   �     �  ,        =  8   R  *   �     �  %   �  )   �  �               *   %  '   P  �   x  "        +  a   :  $   �  /   �  )   �  k     @   �  [   �  C   $	  \   h	  3   �	     �	  �   
     �
     �
  !   �
  \   �
  �   :  -   �        	   -  3   7     k  ,   �  ?   �  u  �  C   k  �   �  E   =     �  ,   �     �  8   �  *        D  %   Y  )     �   �     �     �  *   �  '   �  �     "   �     �  a   �  $   *  /   O  )     k   �  @     [   V  C   �  \   �  3   S     �  �   �     1     D  !   I  \   k  �   �  -   �     �  	   �  3   �     �  ,     ?   C   Abstract class that represents an input event (touch or non-touch). All the input management is configurable in the Kivy :mod:`~kivy.config`. You can easily use many multitouch devices in one Kivy application. Apply a transformation on x, y, z, px, py, pz, ox, oy, oz, dx, dy, dz Base class for a provider. Copy some attribute to another touch object. Decreasing jittering Decreasing the inaccuracy of touch on "bad" DIY hardware Depack `args` into attributes of the class Double tap detection Get a list of all available providers Get a provider class from the provider id Grab this motion event. You can grab a touch if you want to receive subsequent :meth:`~kivy.uix.widget.Widget.on_touch_move` and :meth:`~kivy.uix.widget.Widget.on_touch_up` events, even if the touch is not dispatched by the parent: Ignoring regions Input management Linux multitouch events (kernel and mtdev) Linux wacom drivers (pencil and finger) MotionEvent factory is a class that registers all availables input factories. If you create a new input factory, you need to register it here:: Move the touch to another position OS X touchpads Our input system is wide and simple at the same time. We are currently able to natively support : Pop attributes values from the stack Push attribute values in `attrs` onto the stack Register a input provider in the database Return delta between last position and current position, in the screen coordinate system (self.dx, self.dy) Return the distance between the current touch and another touch. Return the initial position of the touch in the screen coordinate system (self.ox, self.oy) Return the position in the 0-1 coordinate system (self.sx, self.sy) Return the previous position of the touch in the screen coordinate system (self.px, self.py) Returns True if the touch is a mousewheel scrolling Scale position for the screen Start the provider. This method is automatically called when the application is started and if the configuration uses the current provider. Stop the provider. TUIO Ungrab a previously grabbed touch Update the provider and dispatch all the new touch events though the `dispatch_fn` argument. When the events have been read from the devices, they are dispatched through a post processing module before being sent to your application. We also have several default modules for : Windows multitouch events (pencil and finger) `args`: list `id`: str list of parameters, passed to the depack() function unique ID of the MotionEvent ベースクラス: :class:`builtins.object` ベースクラス: :class:`kivy.input.motionevent.MotionEvent` Project-Id-Version: Kivy 1.10.0
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
 Abstract class that represents an input event (touch or non-touch). All the input management is configurable in the Kivy :mod:`~kivy.config`. You can easily use many multitouch devices in one Kivy application. Apply a transformation on x, y, z, px, py, pz, ox, oy, oz, dx, dy, dz Base class for a provider. Copy some attribute to another touch object. Decreasing jittering Decreasing the inaccuracy of touch on "bad" DIY hardware Depack `args` into attributes of the class Double tap detection Get a list of all available providers Get a provider class from the provider id Grab this motion event. You can grab a touch if you want to receive subsequent :meth:`~kivy.uix.widget.Widget.on_touch_move` and :meth:`~kivy.uix.widget.Widget.on_touch_up` events, even if the touch is not dispatched by the parent: Ignoring regions Input management Linux multitouch events (kernel and mtdev) Linux wacom drivers (pencil and finger) MotionEvent factory is a class that registers all availables input factories. If you create a new input factory, you need to register it here:: Move the touch to another position OS X touchpads Our input system is wide and simple at the same time. We are currently able to natively support : Pop attributes values from the stack Push attribute values in `attrs` onto the stack Register a input provider in the database Return delta between last position and current position, in the screen coordinate system (self.dx, self.dy) Return the distance between the current touch and another touch. Return the initial position of the touch in the screen coordinate system (self.ox, self.oy) Return the position in the 0-1 coordinate system (self.sx, self.sy) Return the previous position of the touch in the screen coordinate system (self.px, self.py) Returns True if the touch is a mousewheel scrolling Scale position for the screen Start the provider. This method is automatically called when the application is started and if the configuration uses the current provider. Stop the provider. TUIO Ungrab a previously grabbed touch Update the provider and dispatch all the new touch events though the `dispatch_fn` argument. When the events have been read from the devices, they are dispatched through a post processing module before being sent to your application. We also have several default modules for : Windows multitouch events (pencil and finger) `args`: list `id`: str list of parameters, passed to the depack() function unique ID of the MotionEvent ベースクラス: :class:`builtins.object` ベースクラス: :class:`kivy.input.motionevent.MotionEvent` 