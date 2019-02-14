Basic Picture Viewer
====================

.. |pic23| image:: /images/examples/demo__pictures__main__py.png
   :width: 50%
   :align: middle

|pic23|

This simple image browser demonstrates the scatter widget. You should see three
framed photographs on a background. You can click and drag the photos around,
or multi-touch to drop a red dot to scale and rotate the photos.

The photos are loaded from the local images directory, while the background
picture is from the data shipped with kivy in kivy/data/images/background.jpg.
The file :ref:`pictures.kv <demo_pictures_pictures.kv>` describes the interface
and the file :ref:`shadow32.png <demo_pictures_shadow32.png>` is the border to
make the images look like framed photographs. Finally, the file
:ref:`android.txt <demo_pictures_android.txt>` is used to package the
application for use with the Kivy Launcher Android application.

For Android devices, you can copy/paste this directory into
/sdcard/kivy/pictures on your Android device.

The images in the image directory are from the Internet Archive,
`https://archive.org/details/PublicDomainImages`, and are in the public domain.



.. _`demo_pictures_main.py`:

File **demo/pictures/main.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/pictures/main.py
    :code:

.. _`demo_pictures_pictures.kv`:

File **demo/pictures/pictures.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/demo/pictures/pictures.kv
    :code:

.. _`demo_pictures_shadow32.png`:

Image **demo/pictures/shadow32.png**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../../examples/demo/pictures/shadow32.png
    :align:  center

.. _`demo_pictures_android.txt`:

File **demo/pictures/android.txt**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: none
    :linenothreshold: 3

.. include:: ../../../examples/demo/pictures/android.txt
    :code:
