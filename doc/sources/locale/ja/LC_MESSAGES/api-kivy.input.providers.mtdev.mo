��          �               \  ?   ]  +   �  �   �  �   L  �   �  -   �     �     �     �             %   @  &   f     �     �     �  %   �  %   	  $   /  u  T  ?   �  +   
  �   6  �   �  �   C  -   �     	     9	     W	     r	     �	  %   �	  &   �	     �	     
     0
  %   P
  %   v
  $   �
   Native support for Multitouch devices on Linux, using libmtdev. Otherwise, add this to your configuration:: The Mtdev project is a part of the Ubuntu Maverick multitouch architecture. You can read more on http://wiki.ubuntu.com/Multitouch To configure MTDev, it's preferable to use probesysfs providers. Check :py:class:`~kivy.input.providers.probesysfs` for more information. You can use a custom range for the X, Y and pressure values. On some drivers, the range reported is invalid. To fix that, you can add these options to the argument line: You must have read access to the input event. invert_x : 1 to invert X axis invert_y : 1 to invert Y axis max_position_x : X maximum max_position_y : Y maximum max_pressure : pressure maximum max_touch_major : width shape maximum max_touch_minor : height shape maximum min_position_x : X minimum min_position_y : Y minimum min_pressure : pressure minimum min_touch_major : width shape minimum min_touch_minor : width shape minimum rotation : 0,90,180 or 270 to rotate Project-Id-Version: Kivy 1.10.0
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
 Native support for Multitouch devices on Linux, using libmtdev. Otherwise, add this to your configuration:: The Mtdev project is a part of the Ubuntu Maverick multitouch architecture. You can read more on http://wiki.ubuntu.com/Multitouch To configure MTDev, it's preferable to use probesysfs providers. Check :py:class:`~kivy.input.providers.probesysfs` for more information. You can use a custom range for the X, Y and pressure values. On some drivers, the range reported is invalid. To fix that, you can add these options to the argument line: You must have read access to the input event. invert_x : 1 to invert X axis invert_y : 1 to invert Y axis max_position_x : X maximum max_position_y : Y maximum max_pressure : pressure maximum max_touch_major : width shape maximum max_touch_minor : height shape maximum min_position_x : X minimum min_position_y : Y minimum min_pressure : pressure minimum min_touch_major : width shape minimum min_touch_minor : width shape minimum rotation : 0,90,180 or 270 to rotate 