��          �               �  y   �  U   '  i   }  Y   �  ]   A  N   �  <   �  D   +  �   p  �     	   �  Z   �  �     �   �     �  =   �         	  F   -	  6   t	  -   �	  G   �	  5   !
  3   W
  u  �
  y     U   {  i   �  Y   ;  ]   �  N   �  <   B  D     �   �  �   b  	   �  Z     �   _  �   P       =       X     f  F   �  6   �  -   �  G   -  5   u  3   �   :attr:`dropdown_cls` is an :class:`~kivy.properties.ObjectProperty` and defaults to :class:`~kivy.uix.dropdown.DropDown`. :attr:`is_open` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`option_cls` is an :class:`~kivy.properties.ObjectProperty` and defaults to :class:`SpinnerOption`. :attr:`sync_height` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`text_autoupdate` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`values` is a :class:`~kivy.properties.ListProperty` and defaults to []. By default, the spinner is not open. Set to True to open it. Class used to display the dropdown list when the Spinner is pressed. Class used to display the options within the dropdown list displayed under the Spinner. The `text` property of the class will be used to represent the value. Each element in a dropdown list uses a default/user-supplied height. Set to True to propagate the Spinner's height value to each dropdown list element. Example:: If you set a string, the :class:`~kivy.factory.Factory` will be used to resolve the class. Indicates if the spinner's :attr:`text` should be automatically updated with the first value of the :attr:`values` property. Setting it to True will cause the spinner to update its :attr:`text` property every time attr:`values` are changed. Special button used in the :class:`Spinner` dropdown list. By default, this is just a :class:`~kivy.uix.button.Button` with a size_hint_y of None and a height of :meth:`48dp <kivy.metrics.dp>`. Spinner Spinner class, see module documentation for more information. Spinner is a widget that provides a quick way to select one value from a set. In the default state, a spinner shows its currently selected value. Touching the spinner displays a dropdown menu with all the other available values from which the user can select a new one. The option class requires: Values that can be selected by the user. It must be a list of strings. a :attr:`~kivy.uix.widget.Widget.size_hint_y` of None. a `text` property, used to display the value. an `on_release` event, used to trigger the option when pressed/touched. the :attr:`~kivy.uix.widget.Widget.height` to be set. ベースクラス: :class:`kivy.uix.button.Button` Project-Id-Version: Kivy 1.10.0
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
 :attr:`dropdown_cls` is an :class:`~kivy.properties.ObjectProperty` and defaults to :class:`~kivy.uix.dropdown.DropDown`. :attr:`is_open` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`option_cls` is an :class:`~kivy.properties.ObjectProperty` and defaults to :class:`SpinnerOption`. :attr:`sync_height` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`text_autoupdate` is a :class:`~kivy.properties.BooleanProperty` and defaults to False. :attr:`values` is a :class:`~kivy.properties.ListProperty` and defaults to []. By default, the spinner is not open. Set to True to open it. Class used to display the dropdown list when the Spinner is pressed. Class used to display the options within the dropdown list displayed under the Spinner. The `text` property of the class will be used to represent the value. Each element in a dropdown list uses a default/user-supplied height. Set to True to propagate the Spinner's height value to each dropdown list element. Example:: If you set a string, the :class:`~kivy.factory.Factory` will be used to resolve the class. Indicates if the spinner's :attr:`text` should be automatically updated with the first value of the :attr:`values` property. Setting it to True will cause the spinner to update its :attr:`text` property every time attr:`values` are changed. Special button used in the :class:`Spinner` dropdown list. By default, this is just a :class:`~kivy.uix.button.Button` with a size_hint_y of None and a height of :meth:`48dp <kivy.metrics.dp>`. Spinner Spinner class, see module documentation for more information. Spinner is a widget that provides a quick way to select one value from a set. In the default state, a spinner shows its currently selected value. Touching the spinner displays a dropdown menu with all the other available values from which the user can select a new one. The option class requires: Values that can be selected by the user. It must be a list of strings. a :attr:`~kivy.uix.widget.Widget.size_hint_y` of None. a `text` property, used to display the value. an `on_release` event, used to trigger the option when pressed/touched. the :attr:`~kivy.uix.widget.Widget.height` to be set. ベースクラス: :class:`kivy.uix.button.Button` 