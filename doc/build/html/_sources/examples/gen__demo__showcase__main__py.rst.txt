Showcase of Kivy Features
=========================

.. |pic25| image:: /images/examples/demo__showcase__main__py.png
   :width: 50%
   :align: middle

|pic25|

This showcases many features of Kivy. You should see a menu bar across the top
with a demonstration area below. The first demonstration is the accordion
layout. You can see, but not edit, the kv language code for any screen by
pressing the bug or 'show source' icon. Scroll through the demonstrations using
the left and right icons in the top right or selecting from the menu bar.

The file :ref:`showcase.kv <demo_showcase_showcase.kv>` describes the main
container, while each demonstration pane is described in a separate .kv file in
the data/screens directory. The image :ref:`data/background.png
<demo_showcase_data/background.png>` provides the gradient background while the
icons in data/icon directory are used in the control bar. The file
data/faust_github.jpg is used in the Scatter pane. The icons are from
`http://www.gentleface.com/free_icon_set.html` and licensed as Creative Commons
- Attribution and Non-commercial Use Only; they sell a commercial license.

The file :ref:`android.txt <demo_showcase_android.txt>` is used to package the
application for use with the Kivy Launcher Android application. For Android
devices, you can copy/paste this directory into /sdcard/kivy/showcase on your
Android device.



.. _`demo_showcase_main.py`:

File **demo/showcase/main.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/showcase/main.py
    :code:

.. _`demo_showcase_showcase.kv`:

File **demo/showcase/showcase.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/demo/showcase/showcase.kv
    :code:

.. _`demo_showcase_data_background.png`:

Image **demo/showcase/data/background.png**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../../examples/demo/showcase/data/background.png
    :align:  center

.. _`demo_showcase_android.txt`:

File **demo/showcase/android.txt**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: none
    :linenothreshold: 3

.. include:: ../../../examples/demo/showcase/android.txt
    :code:
