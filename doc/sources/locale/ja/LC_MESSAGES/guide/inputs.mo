��    �      D              l     m     o     x          �     �     �     �     �     �     �     �     �     �     �     �     �  �   �  r   {	  �   �	  -   }
  -   �
  +   �
       �     �     �   �  �   T  X  �  �   C  {   	  �   �     B  �   D  �      �      �   �     9     E  �   M  
   9  G   D     �  L   �  >  �  Z     Z   y  Y   �  Z   .     �  +   �     �  �   �  �   ^  �   6     �     �  O       R     e     {     �  �   �  	  �  =   �  �   �     �     �  �   �     �   �   �   t   p!     �!     �!     	"     "     +"  r   <"  *   �"     �"  �   �"  z   �#  �   $  �   %  f   �%     8&     O&     b&  �   o&     �&  
   '     '  4  '  q   I(  �   �(     �)     �)     �)  ^   �)  �   *  V  �*  o   ,  }   x,     �,     -     -     -     -     !-     (-     /-     4-     =-  	   F-     P-     Y-     b-     k-     t-     }-     �-     �-     �-  �   �-  d   !.     �.     �.     �.     �.  
   �.     �.  
   �.  u  �.     T0     V0     _0     f0     m0     t0     v0     x0     {0     }0     0     �0     �0     �0     �0     �0     �0  �   �0  r   b1  �   �1  -   d2  -   �2  +   �2     �2  �   �2  �   �3  �   �4  �   ;5  X  �5  �   *7  {   �7  �   l8     )9  �   +9  �   :  �   �:  �   t;      <     ,<  �   4<  
    =  G   +=     s=  L   y=  >  �=  Z   ?  Z   `?  Y   �?  Z   @     p@  +   �@     �@  �   �@  �   EA  �   B     �B     �B  O  �B     9D     LD     bD     rD  �   �D  	  jE  =   tF  �   �F     �G     �G  �   �G     �H  �   �H  t   WI     �I     �I     �I     J     J  r   #J  *   �J     �J  �   �J  z   �K  �   L  �   �L  f   �M     N     6N     IN  �   VN     �N  
   �N     �N  4  �N  q   0P  �   �P     �Q     �Q     �Q  ^   �Q  �   �Q  V  �R  o   �S  }   _T     �T     �T     �T     �T     U     U     U     U     U     $U  	   -U     7U     @U     IU     RU     [U     dU     mU     tU     zU  �   �U  d   V     mV     yV     �V     �V  
   �V     �V  
   �V   # (-1, -1) (0, 0) (1, 1) -32767 0 1 10 2 3 32767 4 5 6 7 8 9 :class:`~kivy.input.providers.probesysfs.ProbeSysfsHardwareProbe`: In Linux, iterate over all the hardware connected to the computer, and attaches a multitouch input provider for each multitouch device found. :class:`~kivy.input.providers.tuio.TuioMotionEventProvider`: create a UDP server and listen for TUIO/OSC messages. :class:`~kivy.input.providers.wm_touch.WM_MotionEventProvider`: use the windows API for reading multitouch information and sending it to Kivy. :meth:`~kivy.uix.widget.Widget.on_touch_down` :meth:`~kivy.uix.widget.Widget.on_touch_move` :meth:`~kivy.uix.widget.Widget.on_touch_up` A A Motion event is generated by an :mod:`Input Provider <kivy.input.providers>`. An Input Provider is responsible for reading the input event from the operating system, the network or even from another application. Several input providers exist, such as: A double tap is the action of tapping twice within a time and a distance. It's calculated by the doubletap post-processing module. You can test if the current touch is one of a double tap or not:: A joystick input represents raw values received directly from physical or virtual controllers through the SDL2 provider via these events: A profile is a string that indicates what features are available inside the motion event. Let's imagine that you are in an ``on_touch_move`` method:: A touch event is a specialized :class:`~kivy.input.motionevent.MotionEvent` where the property :attr:`~kivy.input.motionevent.MotionEvent.is_touch` evaluates to True. For all touch events, you automatically have the X and Y positions available, scaled to the Window width and height. In other words, all touch events have the ``'pos'`` profile. A triple tap is the action of tapping thrice within a time and a distance. It's calculated by the tripletap post-processing module. You can test if the current touch is one of a triple tap or not:: A variable `stickid` is an id of a controller that sent the value, `axisid` is an id of an axis to which the value belongs. After processing, the motion event is dispatched to the Window. As explained previously, not all events are dispatched to the whole widget tree: the window filters them. For a given event: B Before the newly-created Motion Event is passed to the user, Kivy applies post-processing to the input. Every motion event is analyzed to detect and correct faulty input, as well as make meaningful interpretations like: But you might want to do something in ``on_touch_up``. Say you started something in the ``on_touch_down`` event, like playing a sound, and you'd like to finish things on the ``on_touch_up`` event. Grabbing is what you need. Button events, on the other hand represent basically only a state of each button i.e. `up` and `down`, therefore no such values are present. By default, touch events are dispatched to all currently displayed widgets. This means widgets receive the touch event whether it occurs within their physical area or not. Coordinates Default Depending on your hardware and the input providers used, more information may be made available to you. For example, a touch input has an (x,y) position, but might also have pressure information, blob size, an acceleration vector, etc. Double tap Double/triple-tap detection, according to a distance and time threshold Event Every motion event has a minimum, maximum and default value which can reach: For the ``'pos'`` profile, the properties ``pos``, ``x``, and ``y`` will be available. With the ``'angle'`` profile, the property ``a`` will be available. As we said, for touch events ``'pos'`` is a mandatory profile, but not ``'angle'``. You can extend your interaction by checking if the ``'angle'`` profile exists:: Get coordinate from local space to parent space: :meth:`~kivy.uix.widget.Widget.to_parent` Get coordinate from local space to window space: :meth:`~kivy.uix.widget.Widget.to_window` Get coordinate from parent space to local space: :meth:`~kivy.uix.widget.Widget.to_local` Get coordinate from window space to local space: :meth:`~kivy.uix.widget.Widget.to_widget` Grabbing touch events Here is an example of how to use grabbing:: ID If the touch has a shape, it will be reflected in the 'shape' property. Right now, only a :class:`~kivy.input.shape.ShapeRect` can be exposed:: In order to provide the maximum flexibility, Kivy dispatches the events to all the widgets and lets them decide how to react to them. If you only want to respond to touch events inside the widget, you simply check:: In order to see how touch events are controlled and propagated between widgets, please refer to the :ref:`Widget touch event bubbling <widget-event-bubbling>` section. Input architecture Input management It's possible for the parent widget to dispatch a touch event to a child widget from within ``on_touch_down``, but not from ``on_touch_move`` or ``on_touch_up``. This can happen in certain scenarios, like when a touch movement is outside the bounding box of the parent, so the parent decides not to notify its children of the movement. Joystick debugging Joystick event basics Joystick events Joystick input Kivy is able to handle most types of input: mouse, touchscreen, accelerometer, gyroscope, etc. It handles the native multitouch protocols on the following platforms: Tuio, WM_Touch, MacMultitouchSupport, MT Protocol A/B and Android. Kivy should be able to fetch input from any device specified as `gamepad`, `joystick` or basically any other type of game controller recognized by the SDL2 provider. To make things easier, here are layouts of some common controllers together with ids for each part. Making events more accurate when the hardware is not accurate Many people mix up the profile's name and the name of the corresponding property. Just because ``'angle'`` is in the available profile doesn't mean that the touch event object will have an ``angle`` property. Maximum Minimum Mostly you'd want to debug your application with multiple controllers, or test it against _other_ types of controllers (e.g. different brands). As an alternative you might want to use some of the available controller emulators, such as |vjoy|_. Motion event profiles No-touch events: all the rest. For example, the accelerometer is a continuous event, without position. It never starts or stops. These events are not dispatched across the Widget tree. Reducing the amount of generated events if the native touch hardware is sending events with nearly the same position SDL_JOYAXISMOTION SDL_JOYBALLMOTION SDL_JOYBUTTONDOWN SDL_JOYBUTTONUP SDL_JOYHATMOTION The class of all input events is the :class:`~kivy.input.motionevent.MotionEvent`. It generates 2 kinds of events: The global architecture can be viewed as:: The print could output:: The touch coordinate is not translated to your widget space because the touch is coming directly from the Window. It's your job to convert the coordinate to your local space. Then you need to fetch the parameters specified in :class:`~kivy.core.window.Window` for each event you use, for example:: This can be counter intuitive if you have experience with other GUI toolkits. These typically divide the screen into geometric areas and only dispatch touch or mouse events to the widget if the coordinate lies within the widgets area. This requirement becomes very restrictive when working with touch input. Swipes, pinches and long presses may well originate from outside of the widget that wants to know about them and react to them. To get a joystick event, you first need to bind some function to the Window joystick event like this:: Touch Event Management Touch event basics Touch events Touch events: a motion event that contains at least an X and Y position. All the touch events are dispatched across the Widget tree. Touch shapes Triple tap Unknown Unlike touch events, joystick events are dispatched directly to the Window, which means there's only a single value passed for e.g. a specified axis, not multiple ones. This makes things harder if you want to separate input to different widgets, yet not impossible. You can use |dropexpl|_ as an inspiration. When you grab a touch, you will always receive the move and up event. But there are some limitations to grabbing: When you write an application, you don't need to create an input provider. Kivy tries to automatically detect available hardware. However, if you want to support custom hardware, you will need to configure kivy to make it work. X Xbox 360 Y You can find a list of available profiles in the :mod:`~kivy.input.motionevent` documentation. You might receive an event with a grabbed touch, but not from you: it can be because the parent has sent the touch to its children while it was in the grabbed state. You must take care of matrix transformation in your touch as soon as you use a widget with matrix transformation. Some widgets such as :class:`~kivy.uix.scatter.Scatter` have their own matrix transformation, meaning the touch must be multiplied by the scatter matrix to be able to correctly dispatch touch positions to the Scatter's children. You must use one of them to scale coordinates correctly to the context. Let's look the scatter implementation:: You will receive the event at least twice: one time from your parent (the normal event), and one time from the window (grab). and much more! axis 0 axis 1 axis 2 axis 3 axis 4 axis 5 back button 0 button 1 button 10 button 2 button 3 button 4 button 5 button 6 button 7 center hat X hat Y if it's a touch event, the (x,y) position of the touch (0-1 range) will be scaled to the Window size (width/height), and dispatched to: if it's only a motion event, it will be dispatched to :meth:`~kivy.core.window.WindowBase.on_motion` on_joy_axis on_joy_ball on_joy_button_down on_joy_button_up on_joy_hat start |xbox_ctr| Project-Id-Version: Kivy 1.10.0
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
 # (-1, -1) (0, 0) (1, 1) -32767 0 1 10 2 3 32767 4 5 6 7 8 9 :class:`~kivy.input.providers.probesysfs.ProbeSysfsHardwareProbe`: In Linux, iterate over all the hardware connected to the computer, and attaches a multitouch input provider for each multitouch device found. :class:`~kivy.input.providers.tuio.TuioMotionEventProvider`: create a UDP server and listen for TUIO/OSC messages. :class:`~kivy.input.providers.wm_touch.WM_MotionEventProvider`: use the windows API for reading multitouch information and sending it to Kivy. :meth:`~kivy.uix.widget.Widget.on_touch_down` :meth:`~kivy.uix.widget.Widget.on_touch_move` :meth:`~kivy.uix.widget.Widget.on_touch_up` A A Motion event is generated by an :mod:`Input Provider <kivy.input.providers>`. An Input Provider is responsible for reading the input event from the operating system, the network or even from another application. Several input providers exist, such as: A double tap is the action of tapping twice within a time and a distance. It's calculated by the doubletap post-processing module. You can test if the current touch is one of a double tap or not:: A joystick input represents raw values received directly from physical or virtual controllers through the SDL2 provider via these events: A profile is a string that indicates what features are available inside the motion event. Let's imagine that you are in an ``on_touch_move`` method:: A touch event is a specialized :class:`~kivy.input.motionevent.MotionEvent` where the property :attr:`~kivy.input.motionevent.MotionEvent.is_touch` evaluates to True. For all touch events, you automatically have the X and Y positions available, scaled to the Window width and height. In other words, all touch events have the ``'pos'`` profile. A triple tap is the action of tapping thrice within a time and a distance. It's calculated by the tripletap post-processing module. You can test if the current touch is one of a triple tap or not:: A variable `stickid` is an id of a controller that sent the value, `axisid` is an id of an axis to which the value belongs. After processing, the motion event is dispatched to the Window. As explained previously, not all events are dispatched to the whole widget tree: the window filters them. For a given event: B Before the newly-created Motion Event is passed to the user, Kivy applies post-processing to the input. Every motion event is analyzed to detect and correct faulty input, as well as make meaningful interpretations like: But you might want to do something in ``on_touch_up``. Say you started something in the ``on_touch_down`` event, like playing a sound, and you'd like to finish things on the ``on_touch_up`` event. Grabbing is what you need. Button events, on the other hand represent basically only a state of each button i.e. `up` and `down`, therefore no such values are present. By default, touch events are dispatched to all currently displayed widgets. This means widgets receive the touch event whether it occurs within their physical area or not. Coordinates Default Depending on your hardware and the input providers used, more information may be made available to you. For example, a touch input has an (x,y) position, but might also have pressure information, blob size, an acceleration vector, etc. Double tap Double/triple-tap detection, according to a distance and time threshold Event Every motion event has a minimum, maximum and default value which can reach: For the ``'pos'`` profile, the properties ``pos``, ``x``, and ``y`` will be available. With the ``'angle'`` profile, the property ``a`` will be available. As we said, for touch events ``'pos'`` is a mandatory profile, but not ``'angle'``. You can extend your interaction by checking if the ``'angle'`` profile exists:: Get coordinate from local space to parent space: :meth:`~kivy.uix.widget.Widget.to_parent` Get coordinate from local space to window space: :meth:`~kivy.uix.widget.Widget.to_window` Get coordinate from parent space to local space: :meth:`~kivy.uix.widget.Widget.to_local` Get coordinate from window space to local space: :meth:`~kivy.uix.widget.Widget.to_widget` Grabbing touch events Here is an example of how to use grabbing:: ID If the touch has a shape, it will be reflected in the 'shape' property. Right now, only a :class:`~kivy.input.shape.ShapeRect` can be exposed:: In order to provide the maximum flexibility, Kivy dispatches the events to all the widgets and lets them decide how to react to them. If you only want to respond to touch events inside the widget, you simply check:: In order to see how touch events are controlled and propagated between widgets, please refer to the :ref:`Widget touch event bubbling <widget-event-bubbling>` section. Input architecture Input management It's possible for the parent widget to dispatch a touch event to a child widget from within ``on_touch_down``, but not from ``on_touch_move`` or ``on_touch_up``. This can happen in certain scenarios, like when a touch movement is outside the bounding box of the parent, so the parent decides not to notify its children of the movement. Joystick debugging Joystick event basics Joystick events Joystick input Kivy is able to handle most types of input: mouse, touchscreen, accelerometer, gyroscope, etc. It handles the native multitouch protocols on the following platforms: Tuio, WM_Touch, MacMultitouchSupport, MT Protocol A/B and Android. Kivy should be able to fetch input from any device specified as `gamepad`, `joystick` or basically any other type of game controller recognized by the SDL2 provider. To make things easier, here are layouts of some common controllers together with ids for each part. Making events more accurate when the hardware is not accurate Many people mix up the profile's name and the name of the corresponding property. Just because ``'angle'`` is in the available profile doesn't mean that the touch event object will have an ``angle`` property. Maximum Minimum Mostly you'd want to debug your application with multiple controllers, or test it against _other_ types of controllers (e.g. different brands). As an alternative you might want to use some of the available controller emulators, such as |vjoy|_. Motion event profiles No-touch events: all the rest. For example, the accelerometer is a continuous event, without position. It never starts or stops. These events are not dispatched across the Widget tree. Reducing the amount of generated events if the native touch hardware is sending events with nearly the same position SDL_JOYAXISMOTION SDL_JOYBALLMOTION SDL_JOYBUTTONDOWN SDL_JOYBUTTONUP SDL_JOYHATMOTION The class of all input events is the :class:`~kivy.input.motionevent.MotionEvent`. It generates 2 kinds of events: The global architecture can be viewed as:: The print could output:: The touch coordinate is not translated to your widget space because the touch is coming directly from the Window. It's your job to convert the coordinate to your local space. Then you need to fetch the parameters specified in :class:`~kivy.core.window.Window` for each event you use, for example:: This can be counter intuitive if you have experience with other GUI toolkits. These typically divide the screen into geometric areas and only dispatch touch or mouse events to the widget if the coordinate lies within the widgets area. This requirement becomes very restrictive when working with touch input. Swipes, pinches and long presses may well originate from outside of the widget that wants to know about them and react to them. To get a joystick event, you first need to bind some function to the Window joystick event like this:: Touch Event Management Touch event basics Touch events Touch events: a motion event that contains at least an X and Y position. All the touch events are dispatched across the Widget tree. Touch shapes Triple tap Unknown Unlike touch events, joystick events are dispatched directly to the Window, which means there's only a single value passed for e.g. a specified axis, not multiple ones. This makes things harder if you want to separate input to different widgets, yet not impossible. You can use |dropexpl|_ as an inspiration. When you grab a touch, you will always receive the move and up event. But there are some limitations to grabbing: When you write an application, you don't need to create an input provider. Kivy tries to automatically detect available hardware. However, if you want to support custom hardware, you will need to configure kivy to make it work. X Xbox 360 Y You can find a list of available profiles in the :mod:`~kivy.input.motionevent` documentation. You might receive an event with a grabbed touch, but not from you: it can be because the parent has sent the touch to its children while it was in the grabbed state. You must take care of matrix transformation in your touch as soon as you use a widget with matrix transformation. Some widgets such as :class:`~kivy.uix.scatter.Scatter` have their own matrix transformation, meaning the touch must be multiplied by the scatter matrix to be able to correctly dispatch touch positions to the Scatter's children. You must use one of them to scale coordinates correctly to the context. Let's look the scatter implementation:: You will receive the event at least twice: one time from your parent (the normal event), and one time from the window (grab). and much more! axis 0 axis 1 axis 2 axis 3 axis 4 axis 5 back button 0 button 1 button 10 button 2 button 3 button 4 button 5 button 6 button 7 center hat X hat Y if it's a touch event, the (x,y) position of the touch (0-1 range) will be scaled to the Window size (width/height), and dispatched to: if it's only a motion event, it will be dispatched to :meth:`~kivy.core.window.WindowBase.on_motion` on_joy_axis on_joy_ball on_joy_button_down on_joy_button_up on_joy_hat start |xbox_ctr| 