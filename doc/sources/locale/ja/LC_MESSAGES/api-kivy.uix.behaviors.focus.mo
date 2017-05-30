��    =                    �     �  Y     ]   g  S   �  U     J   o  �   �  �   d  �     T   �  �   �    �     �	  :   �	  :   /
    j
     {     �  O  �  [   �  }   F  h  �  j  -  M   �  s  �     Z     m  I   |  �   �  �   �  �   V        1  #  S   U  �   �  �   *  F  �  >   �  &   8  =   _  V   �    �  [  �  i  X  �   �    �   �   �!  q  �"  [  $  �   z%  �   <&  �   �&    �'    �(  \   �)  G    *  X   h*  )   �*  �   �*  ,   �+  u  �+     j-  Y   �-  ]   �-  S   B.  U   �.  J   �.  �   7/  �   �/  �   �0  T   
1  �   _1    :2     V3  :   q3  :   �3    �3     �4     5  O  5  [   g6  }   �6  h  A7  j  �9  M   ;  s  c;     �=     �=  I   �=  �   C>  �   8?  �   �?      @  1  �@  S   �A  �   &B  �   �B  F  /C  >   vD  &   �D  =   �D  V   E    qE  [  yF  i  �G  �   ?I    J  �   )K  q  )L  [  �M  �   �N  �   �O  �   {P    Q    7R  \   @S  G   �S  X   �S  )   >T  �   hT  ,   DU   **Keyboard and focus behavior** :attr:`focus_next` is an :class:`~kivy.properties.ObjectProperty` and defaults to `None`. :attr:`focus_previous` is an :class:`~kivy.properties.ObjectProperty` and defaults to `None`. :attr:`focus` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`focused` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`focused` is an alias of :attr:`focus` and will be removed in 2.0.0. :attr:`input_type` is an :class:`~kivy.properties.OptionsProperty` and defaults to 'text'. Can be one of 'text', 'number', 'url', 'mail', 'datetime', 'tel' or 'address'. :attr:`is_focusable` is a :class:`~kivy.properties.BooleanProperty` and defaults to True on a desktop (i.e. `desktop` is True in :mod:`~kivy.config`), False otherwise. :attr:`keyboard_mode` is an :class:`~kivy.properties.OptionsProperty` and defaults to 'auto'. Can be one of 'auto' or 'managed'. :attr:`keyboard` is an :class:`~kivy.properties.AliasProperty` and defaults to None. :attr:`unfocus_on_touch` is a :class:`~kivy.properties.BooleanProperty` and defaults to `False` if the `keyboard_mode` in :attr:`~kivy.config.Config` is `'multi'` or `'systemandmulti'`, otherwise it defaults to `True`. A list of touches that should not be used to defocus. After on_touch_up, every touch that is not in :attr:`ignored_touch` will defocus all the focused widgets if the config keyboard mode is not multi. Touches on focusable widgets that were used to focus are automatically added here. An alias of :attr:`focus`. Convenience function to hide the keyboard in managed mode. Convenience function to show the keyboard in managed mode. Determines how the keyboard visibility should be managed. 'auto' will result in the standard behaviour of showing/hiding on focus. 'managed' requires setting the keyboard visibility manually, or calling the helper functions :meth:`show_keyboard` and :meth:`hide_keyboard`. Example usage:: Focus Behavior Focus, very different from selection, is intimately tied with the keyboard; each keyboard can focus on zero or one widgets, and each widget can only have the focus of one keyboard. However, multiple keyboards can focus simultaneously on different widgets. When escape is hit, the widget having the focus of that keyboard will de-focus. For an overview of behaviors, please refer to the :mod:`~kivy.uix.behaviors` documentation. For example, to cycle focus between :class:`~kivy.uix.button.Button` elements of a :class:`~kivy.uix.gridlayout.GridLayout`:: If more than one keyboard is available, whenever an instance gets focused a new keyboard will be requested if None. Unless the other instances lose focus (e.g. if tab was used), a new keyboard will appear. When this is undesired, the keyboard property can be used. For example, if there are two users with two keyboards, then each keyboard can be assigned to different groups of instances of FocusBehavior, ensuring that within each group, only one FocusBehavior will have focus, and will receive input from the correct keyboard. See `keyboard_mode` in :mod:`~kivy.config` for more information on the keyboard modes. If the keyboard property is set, that keyboard will be used when the instance gets focused. If widgets with different keyboards are linked through :attr:`focus_next` and :attr:`focus_previous`, then as they are tabbed through, different keyboards will become active. Therefore, typically it's undesirable to link instances which are assigned different keyboards. If you are using a :class:`~kivy.uix.popup`, you can use the 'on_open' event. In essence, focus is implemented as a doubly linked list, where each node holds a (weak) reference to the instance before it and after it, as visualized when cycling through the nodes using tab (forward) or shift+tab (backward). If a previous or next widget is not specified, :attr:`focus_next` and :attr:`focus_previous` defaults to `None`. This means that the :attr:`~kivy.uix.widget.Widget.children` list and :attr:`parents <kivy.uix.widget.Widget.parent>` are walked to find the next focusable widget, unless :attr:`focus_next` or :attr:`focus_previous` is set to the `StopIteration` class, in which case focus stops there. Initializing focus Managing focus Notice that you need to access this as a class, not an instance variable. Provides keyboard focus behavior. When combined with other FocusBehavior widgets it allows one to cycle focus among them by pressing tab. Please see the :mod:`focus behavior module documentation <kivy.uix.behaviors.focus>` for more information. Returns the next focusable widget using either :attr:`focus_next` or the :attr:`children` similar to the order when tabbing forwards with the ``tab`` key. Returns the previous focusable widget using either :attr:`focus_previous` or the :attr:`children` similar to the order when ``tab`` + ``shift`` key are triggered together. See :meth:`keyboard_on_key_down` Setting it to True will bind to and/or request the keyboard, and input will be forwarded to the instance. Setting it to False will unbind and/or release the keyboard. For a given keyboard, only one widget can have its focus, so focusing one will automatically unfocus the other instance holding its focus. Similar to other keyboard functions, it should return True if the key was consumed. The :class:`FocusBehavior` instance to acquire focus when shift+tab is pressed on this instance, if not None or `StopIteration`. The :class:`FocusBehavior` instance to acquire focus when tab is pressed and this instance has focus, if not `None` or `StopIteration`. The :class:`~kivy.uix.behaviors.FocusBehavior` `mixin <https://en.wikipedia.org/wiki/Mixin>`_ class provides keyboard focus behavior. When combined with other FocusBehavior widgets it allows one to cycle focus among them by pressing tab. In addition, upon gaining focus, the instance will automatically receive keyboard input. The keyboard to bind to (or bound to the widget) when focused. The kind of input keyboard to request. The method bound to the keyboard when the instance has focus. This code is still experimental, and its API is subject to change in a future version. When Config's `keyboard_mode` is multi, each new touch is considered a touch by a different user and will set the focus (if clicked on a focusable) with a new keyboard. Already focused elements will not lose their focus (even if an unfocusable widget is touched). When None, a keyboard is requested and released whenever the widget comes into and out of focus. If not None, it must be a keyboard, which gets bound and unbound from the widget whenever it's in or out of focus. It is useful only when more than one keyboard is available, so it is recommended to be set to None when only one keyboard is available. When a user clicks on a widget that is focus aware and shares the same keyboard as this widget (which in the case of only one keyboard, are all focus aware widgets), then as the other widgets gains focus, this widget loses focus. In addition to that, if this property is `True`, clicking on any widget other than this widget, will remove focus form this widget. When a widget has focus, setting its keyboard to None will remove its keyboard, but the widget will then immediately try to get another keyboard. In order to remove its keyboard, rather set its :attr:`focus` to False. When overwriting the method in the derived widget, super should be called to enable de-focusing on escape. If the derived widget wishes to use escape for its own purposes, it can call super after it has processed the character (if it does not wish to consume the escape). When overwriting the method in the derived widget, super should be called to enable tab cycling. If the derived widget wishes to use tab for its own purposes, it can call super after it has processed the character (if it does not wish to consume the tab). When shift+tab is pressed, focus cycles through all the :class:`FocusBehavior` widgets that are linked through :attr:`focus_previous` and are focusable. If :attr:`focus_previous` is `None`, it instead walks the children tree to find the previous focusable widget. Finally, if :attr:`focus_previous` is the `StopIteration` class, focus won't move backward, but end here. When tab is pressed, focus cycles through all the :class:`FocusBehavior` widgets that are linked through :attr:`focus_next` and are focusable. If :attr:`focus_next` is `None`, it instead walks the children lists to find the next focusable widget. Finally, if :attr:`focus_next` is the `StopIteration` class, focus won't move forward, but end here. When the instance becomes focused, this method is bound to the keyboard and will be called for every input press. The parameters are the same as :meth:`kivy.core.window.WindowBase.on_key_down`. When the instance becomes focused, this method is bound to the keyboard and will be called for every input release. The parameters are the same as :meth:`kivy.core.window.WindowBase.on_key_up`. When using a software keyboard, please refer to the :attr:`~kivy.core.window.WindowBase.softinput_mode` property to determine how the keyboard display is handled. When using a software keyboard, typical on mobile and touch devices, the keyboard display behavior is determined by the :attr:`~kivy.core.window.WindowBase.softinput_mode` property. You can use this property to ensure the focused widget is not covered or obscured by the keyboard. When using a software keyboard, typical on mobile and touch devices, the keyboard display behavior is determined by the :attr:`~kivy.core.window.WindowBase.softinput_mode` property. You can use this property to ensure the focused widget is not covered or obscured. When using the keyboard, there are some important default behaviors you should keep in mind. Whether a instance should lose focus when clicked outside the instance. Whether the instance can become focused. If focused, it'll lose focus when set to False. Whether the instance currently has focus. Widgets needs to be visible before they can receive the focus. This means that setting their *focus* property to True before they are visible will have no effect. To initialize focus, you can use the 'on_parent' event:: ベースクラス: :class:`builtins.object` Project-Id-Version: Kivy 1.10.0
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
 **Keyboard and focus behavior** :attr:`focus_next` is an :class:`~kivy.properties.ObjectProperty` and defaults to `None`. :attr:`focus_previous` is an :class:`~kivy.properties.ObjectProperty` and defaults to `None`. :attr:`focus` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`focused` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`focused` is an alias of :attr:`focus` and will be removed in 2.0.0. :attr:`input_type` is an :class:`~kivy.properties.OptionsProperty` and defaults to 'text'. Can be one of 'text', 'number', 'url', 'mail', 'datetime', 'tel' or 'address'. :attr:`is_focusable` is a :class:`~kivy.properties.BooleanProperty` and defaults to True on a desktop (i.e. `desktop` is True in :mod:`~kivy.config`), False otherwise. :attr:`keyboard_mode` is an :class:`~kivy.properties.OptionsProperty` and defaults to 'auto'. Can be one of 'auto' or 'managed'. :attr:`keyboard` is an :class:`~kivy.properties.AliasProperty` and defaults to None. :attr:`unfocus_on_touch` is a :class:`~kivy.properties.BooleanProperty` and defaults to `False` if the `keyboard_mode` in :attr:`~kivy.config.Config` is `'multi'` or `'systemandmulti'`, otherwise it defaults to `True`. A list of touches that should not be used to defocus. After on_touch_up, every touch that is not in :attr:`ignored_touch` will defocus all the focused widgets if the config keyboard mode is not multi. Touches on focusable widgets that were used to focus are automatically added here. An alias of :attr:`focus`. Convenience function to hide the keyboard in managed mode. Convenience function to show the keyboard in managed mode. Determines how the keyboard visibility should be managed. 'auto' will result in the standard behaviour of showing/hiding on focus. 'managed' requires setting the keyboard visibility manually, or calling the helper functions :meth:`show_keyboard` and :meth:`hide_keyboard`. Example usage:: Focus Behavior Focus, very different from selection, is intimately tied with the keyboard; each keyboard can focus on zero or one widgets, and each widget can only have the focus of one keyboard. However, multiple keyboards can focus simultaneously on different widgets. When escape is hit, the widget having the focus of that keyboard will de-focus. For an overview of behaviors, please refer to the :mod:`~kivy.uix.behaviors` documentation. For example, to cycle focus between :class:`~kivy.uix.button.Button` elements of a :class:`~kivy.uix.gridlayout.GridLayout`:: If more than one keyboard is available, whenever an instance gets focused a new keyboard will be requested if None. Unless the other instances lose focus (e.g. if tab was used), a new keyboard will appear. When this is undesired, the keyboard property can be used. For example, if there are two users with two keyboards, then each keyboard can be assigned to different groups of instances of FocusBehavior, ensuring that within each group, only one FocusBehavior will have focus, and will receive input from the correct keyboard. See `keyboard_mode` in :mod:`~kivy.config` for more information on the keyboard modes. If the keyboard property is set, that keyboard will be used when the instance gets focused. If widgets with different keyboards are linked through :attr:`focus_next` and :attr:`focus_previous`, then as they are tabbed through, different keyboards will become active. Therefore, typically it's undesirable to link instances which are assigned different keyboards. If you are using a :class:`~kivy.uix.popup`, you can use the 'on_open' event. In essence, focus is implemented as a doubly linked list, where each node holds a (weak) reference to the instance before it and after it, as visualized when cycling through the nodes using tab (forward) or shift+tab (backward). If a previous or next widget is not specified, :attr:`focus_next` and :attr:`focus_previous` defaults to `None`. This means that the :attr:`~kivy.uix.widget.Widget.children` list and :attr:`parents <kivy.uix.widget.Widget.parent>` are walked to find the next focusable widget, unless :attr:`focus_next` or :attr:`focus_previous` is set to the `StopIteration` class, in which case focus stops there. Initializing focus Managing focus Notice that you need to access this as a class, not an instance variable. Provides keyboard focus behavior. When combined with other FocusBehavior widgets it allows one to cycle focus among them by pressing tab. Please see the :mod:`focus behavior module documentation <kivy.uix.behaviors.focus>` for more information. Returns the next focusable widget using either :attr:`focus_next` or the :attr:`children` similar to the order when tabbing forwards with the ``tab`` key. Returns the previous focusable widget using either :attr:`focus_previous` or the :attr:`children` similar to the order when ``tab`` + ``shift`` key are triggered together. See :meth:`keyboard_on_key_down` Setting it to True will bind to and/or request the keyboard, and input will be forwarded to the instance. Setting it to False will unbind and/or release the keyboard. For a given keyboard, only one widget can have its focus, so focusing one will automatically unfocus the other instance holding its focus. Similar to other keyboard functions, it should return True if the key was consumed. The :class:`FocusBehavior` instance to acquire focus when shift+tab is pressed on this instance, if not None or `StopIteration`. The :class:`FocusBehavior` instance to acquire focus when tab is pressed and this instance has focus, if not `None` or `StopIteration`. The :class:`~kivy.uix.behaviors.FocusBehavior` `mixin <https://en.wikipedia.org/wiki/Mixin>`_ class provides keyboard focus behavior. When combined with other FocusBehavior widgets it allows one to cycle focus among them by pressing tab. In addition, upon gaining focus, the instance will automatically receive keyboard input. The keyboard to bind to (or bound to the widget) when focused. The kind of input keyboard to request. The method bound to the keyboard when the instance has focus. This code is still experimental, and its API is subject to change in a future version. When Config's `keyboard_mode` is multi, each new touch is considered a touch by a different user and will set the focus (if clicked on a focusable) with a new keyboard. Already focused elements will not lose their focus (even if an unfocusable widget is touched). When None, a keyboard is requested and released whenever the widget comes into and out of focus. If not None, it must be a keyboard, which gets bound and unbound from the widget whenever it's in or out of focus. It is useful only when more than one keyboard is available, so it is recommended to be set to None when only one keyboard is available. When a user clicks on a widget that is focus aware and shares the same keyboard as this widget (which in the case of only one keyboard, are all focus aware widgets), then as the other widgets gains focus, this widget loses focus. In addition to that, if this property is `True`, clicking on any widget other than this widget, will remove focus form this widget. When a widget has focus, setting its keyboard to None will remove its keyboard, but the widget will then immediately try to get another keyboard. In order to remove its keyboard, rather set its :attr:`focus` to False. When overwriting the method in the derived widget, super should be called to enable de-focusing on escape. If the derived widget wishes to use escape for its own purposes, it can call super after it has processed the character (if it does not wish to consume the escape). When overwriting the method in the derived widget, super should be called to enable tab cycling. If the derived widget wishes to use tab for its own purposes, it can call super after it has processed the character (if it does not wish to consume the tab). When shift+tab is pressed, focus cycles through all the :class:`FocusBehavior` widgets that are linked through :attr:`focus_previous` and are focusable. If :attr:`focus_previous` is `None`, it instead walks the children tree to find the previous focusable widget. Finally, if :attr:`focus_previous` is the `StopIteration` class, focus won't move backward, but end here. When tab is pressed, focus cycles through all the :class:`FocusBehavior` widgets that are linked through :attr:`focus_next` and are focusable. If :attr:`focus_next` is `None`, it instead walks the children lists to find the next focusable widget. Finally, if :attr:`focus_next` is the `StopIteration` class, focus won't move forward, but end here. When the instance becomes focused, this method is bound to the keyboard and will be called for every input press. The parameters are the same as :meth:`kivy.core.window.WindowBase.on_key_down`. When the instance becomes focused, this method is bound to the keyboard and will be called for every input release. The parameters are the same as :meth:`kivy.core.window.WindowBase.on_key_up`. When using a software keyboard, please refer to the :attr:`~kivy.core.window.WindowBase.softinput_mode` property to determine how the keyboard display is handled. When using a software keyboard, typical on mobile and touch devices, the keyboard display behavior is determined by the :attr:`~kivy.core.window.WindowBase.softinput_mode` property. You can use this property to ensure the focused widget is not covered or obscured by the keyboard. When using a software keyboard, typical on mobile and touch devices, the keyboard display behavior is determined by the :attr:`~kivy.core.window.WindowBase.softinput_mode` property. You can use this property to ensure the focused widget is not covered or obscured. When using the keyboard, there are some important default behaviors you should keep in mind. Whether a instance should lose focus when clicked outside the instance. Whether the instance can become focused. If focused, it'll lose focus when set to False. Whether the instance currently has focus. Widgets needs to be visible before they can receive the focus. This means that setting their *focus* property to True before they are visible will have no effect. To initialize focus, you can use the 'on_parent' event:: ベースクラス: :class:`builtins.object` 