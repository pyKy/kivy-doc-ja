Touch Tracer Line Drawing Demonstration
=======================================

.. |pic26| image:: /images/examples/demo__touchtracer__main__py.png
   :width: 50%
   :align: middle

|pic26|

This demonstrates tracking each touch registered to a device. You should see a
basic background image. When you press and hold the mouse, you should see
cross-hairs with the coordinates written next to them. As you drag, it leaves a
trail. Additional information, like pressure, will be shown if they are in your
device's touch.profile.

.. note::

   A function `calculate_points` handling the points which will be drawn
   has by default implemented a delay of 5 steps. To get more precise visual
   results lower the value of the optional keyword argument `steps`.

This program specifies an icon, the file :ref:`icon.png
<demo_touchtracer_icon.png>`, in its App subclass. It also uses the
particle.png file as the source for drawing the trails which are white on
transparent. The file :ref:`touchtracer.kv <demo_touchtracer_touchtracer.kv>`
describes the application.

The file :ref:`android.txt <demo_touchtracer_android.txt>` is used to package
the application for use with the Kivy Launcher Android application. For Android
devices, you can copy/paste this directory into /sdcard/kivy/touchtracer on
your Android device.



.. _`demo_touchtracer_main.py`:

File **demo/touchtracer/main.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/touchtracer/main.py
    :code:

.. _`demo_touchtracer_icon.png`:

Image **demo/touchtracer/icon.png**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../../examples/demo/touchtracer/icon.png
    :align:  center

.. _`demo_touchtracer_touchtracer.kv`:

File **demo/touchtracer/touchtracer.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/demo/touchtracer/touchtracer.kv
    :code:

.. _`demo_touchtracer_android.txt`:

File **demo/touchtracer/android.txt**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: none
    :linenothreshold: 3

.. include:: ../../../examples/demo/touchtracer/android.txt
    :code:
