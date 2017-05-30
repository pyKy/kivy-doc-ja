��          �               �   Q   �   �   ?     �  *   �  2   &  �   Y  !     <   <    y  K   �  8   �  �     u  �  Q     �   X       *     2   ?  �   r  !   3	  <   U	    �	  K   �
  8   �
  �      All context instructions are checked to see if they change anything in the cache. Before rendering an :class:`~kivy.graphics.instructions.InstructionGroup`, we compile the group in order to reduce the number of instructions executed at rendering time. Graphics compiler Imagine that you have a scheme like this:: Note to any Kivy contributor / internal developer: Only the first :class:`~kivy.graphics.context_instructions.Color` and :class:`~kivy.graphics.context_instructions.BindTexture` are useful and really change the context. We can reduce them to:: Reducing the context instructions The real instructions seen by the graphics canvas would be:: This is what the compiler does in the first place, by flagging all the unused instruction with GI_IGNORE flag. As soon as a Color content changes, the whole InstructionGroup will be recompiled and a previously unused Color might be used for the next compilation. We must ensure that a context instruction is needed for our current Canvas. We must ensure that we don't depend of any other canvas. We must reset our cache if one of our children is another instruction group because we don't know whether it might do weird things or not. Project-Id-Version: Kivy 1.10.0
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
 All context instructions are checked to see if they change anything in the cache. Before rendering an :class:`~kivy.graphics.instructions.InstructionGroup`, we compile the group in order to reduce the number of instructions executed at rendering time. Graphics compiler Imagine that you have a scheme like this:: Note to any Kivy contributor / internal developer: Only the first :class:`~kivy.graphics.context_instructions.Color` and :class:`~kivy.graphics.context_instructions.BindTexture` are useful and really change the context. We can reduce them to:: Reducing the context instructions The real instructions seen by the graphics canvas would be:: This is what the compiler does in the first place, by flagging all the unused instruction with GI_IGNORE flag. As soon as a Color content changes, the whole InstructionGroup will be recompiled and a previously unused Color might be used for the next compilation. We must ensure that a context instruction is needed for our current Canvas. We must ensure that we don't depend of any other canvas. We must reset our cache if one of our children is another instruction group because we don't know whether it might do weird things or not. 