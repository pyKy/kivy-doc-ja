��          L               |   O   }     �   %   �  J       ^  u  n  O   �    4  %   T  J   z    �   Auto Create Input Provider Config Entry for Available MT Hardware (linux only). By default, ProbeSysfs module will enumerate hardware from the /sys/class/input device, and configure hardware with ABS_MT_POSITION_X capability. But for example, the wacom screen doesn't support this capability. You can prevent this behavior by putting select_all=1 in your config line. Here is an example of auto creation:: Thanks to Marc Tardif for the probing code, taken from scan-for-mt-device. The device discovery is done by this provider. However, the reading of input can be performed by other providers like: hidinput, mtdev and linuxwacom. mtdev is used prior to other providers. For more information about mtdev, check :py:class:`~kivy.input.providers.mtdev`. Project-Id-Version: Kivy 1.10.0
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
 Auto Create Input Provider Config Entry for Available MT Hardware (linux only). By default, ProbeSysfs module will enumerate hardware from the /sys/class/input device, and configure hardware with ABS_MT_POSITION_X capability. But for example, the wacom screen doesn't support this capability. You can prevent this behavior by putting select_all=1 in your config line. Here is an example of auto creation:: Thanks to Marc Tardif for the probing code, taken from scan-for-mt-device. The device discovery is done by this provider. However, the reading of input can be performed by other providers like: hidinput, mtdev and linuxwacom. mtdev is used prior to other providers. For more information about mtdev, check :py:class:`~kivy.input.providers.mtdev`. 