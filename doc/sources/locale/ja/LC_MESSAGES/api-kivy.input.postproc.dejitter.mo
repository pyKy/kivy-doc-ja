��    
      l               �   }   �      ;  }  Q     �  %   �     �          /  ,   O  u  |  }   �     p  }  �       %        3     K     d  ,   �   A comma-separated list of device identifiers that should not be processed by dejitter (because they're very precise already). A float in range 0-1. A problem that is often faced (esp. in optical MT setups) is that of jitterish BLOBs caused by bad camera characteristics. With this module you can get rid of that jitter. You just define a threshold `jitter_distance` in your config, and all touch movements that move the touch by less than the jitter distance are considered 'bad' movements caused by jitter and will be discarded. Dejitter Get rid of jitterish BLOBs. Example:: Prevent blob jittering. `jitter_distance`: float `jitter_ignore_devices`: string ベースクラス: :class:`builtins.object` Project-Id-Version: Kivy 1.10.0
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
 A comma-separated list of device identifiers that should not be processed by dejitter (because they're very precise already). A float in range 0-1. A problem that is often faced (esp. in optical MT setups) is that of jitterish BLOBs caused by bad camera characteristics. With this module you can get rid of that jitter. You just define a threshold `jitter_distance` in your config, and all touch movements that move the touch by less than the jitter distance are considered 'bad' movements caused by jitter and will be discarded. Dejitter Get rid of jitterish BLOBs. Example:: Prevent blob jittering. `jitter_distance`: float `jitter_ignore_devices`: string ベースクラス: :class:`builtins.object` 