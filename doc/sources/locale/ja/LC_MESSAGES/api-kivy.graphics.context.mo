��          �               �   �   �   d   �     �  ~   �  �   }  .   C  p   r  �   �     �  $   �  (   �  ,     u  9  �   �  d   H     �  ~   �  �   ?  .   	  p   4	  �   �	     f
  $   �
  (   �
  ,   �
   (internal) Add a callback to be called after the whole graphics context has been reloaded. This is where you can reupload your custom data into the GPU. (internal) Remove a callback from the observer list previously added by :meth:`add_reload_observer`. Context management If True, the callback will be executed before all the reloading processes. Use it if you want to clear your cache for example. The Context class manages groups of graphics instructions. It can also be used to manage observer callbacks. See :meth:`add_reload_observer` and :meth:`remove_reload_observer` for more information. The first parameter will be the context itself This class manages a registry of all created graphics instructions. It has the ability to flush and delete them. You can read more about Kivy graphics contexts in the :doc:`api-kivy.graphics` module documentation. These are based on `OpenGL graphics contexts <http://www.opengl.org/wiki/OpenGL_Context>`_. `before` parameter added. `before`: boolean, defaults to False `callback`: func(context) -> return None ベースクラス: :class:`builtins.object` Project-Id-Version: Kivy 1.10.0
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
 (internal) Add a callback to be called after the whole graphics context has been reloaded. This is where you can reupload your custom data into the GPU. (internal) Remove a callback from the observer list previously added by :meth:`add_reload_observer`. Context management If True, the callback will be executed before all the reloading processes. Use it if you want to clear your cache for example. The Context class manages groups of graphics instructions. It can also be used to manage observer callbacks. See :meth:`add_reload_observer` and :meth:`remove_reload_observer` for more information. The first parameter will be the context itself This class manages a registry of all created graphics instructions. It has the ability to flush and delete them. You can read more about Kivy graphics contexts in the :doc:`api-kivy.graphics` module documentation. These are based on `OpenGL graphics contexts <http://www.opengl.org/wiki/OpenGL_Context>`_. `before` parameter added. `before`: boolean, defaults to False `callback`: func(context) -> return None ベースクラス: :class:`builtins.object` 