��          �               ,  �   -  2     -   7  7   e  �   �  -   H  %   v     �     �     �     �          .     I     d  8   �  u  �  �   3  2   
  -   =  7   k  �   �  -   N  %   |     �     �     �     �     	     4	     O	     j	  8   �	   For example, on the Asus T101M, the touchscreen reports a range from 0-4095 for the X and Y values, but the real values are in a range from 0-32768. To correct this, you can add the following to the configuration:: Native support for HID input from the linux kernel Support starts from 2.6.32-ubuntu, or 2.6.34. To configure HIDInput, add this to your configuration:: You can use a custom range for the X, Y and pressure values. For some drivers, the range reported is invalid. To fix that, you can add these options to the argument line: You must have read access to the input event. `rotation` configuration token added. invert_x : 1 to invert X axis invert_y : 1 to invert Y axis max_position_x : X maximum max_position_y : Y maximum max_pressure : pressure maximum min_position_x : X minimum min_position_y : Y minimum min_pressure : pressure minimum rotation : rotate the input coordinate (0, 90, 180, 270) Project-Id-Version: Kivy 1.10.0
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
 For example, on the Asus T101M, the touchscreen reports a range from 0-4095 for the X and Y values, but the real values are in a range from 0-32768. To correct this, you can add the following to the configuration:: Native support for HID input from the linux kernel Support starts from 2.6.32-ubuntu, or 2.6.34. To configure HIDInput, add this to your configuration:: You can use a custom range for the X, Y and pressure values. For some drivers, the range reported is invalid. To fix that, you can add these options to the argument line: You must have read access to the input event. `rotation` configuration token added. invert_x : 1 to invert X axis invert_y : 1 to invert Y axis max_position_x : X maximum max_position_y : Y maximum max_pressure : pressure maximum min_position_x : X minimum min_position_y : Y minimum min_pressure : pressure minimum rotation : rotate the input coordinate (0, 90, 180, 270) 