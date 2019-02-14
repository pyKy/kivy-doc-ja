Multitexture Example
====================

.. |pic14| image:: /images/examples/canvas__multitexture__py.png
   :width: 50%
   :align: middle

|pic14|

This example blends two textures: the image :ref:`mtexture1.png
<canvas_mtexture1.png>` of the letter K and the image :ref:`mtexture2.png
<canvas_mtexture2.png>` of an orange circle. You should see an orange K clipped
to a circle. It uses a custom shader, written in glsl (OpenGL Shading
Language), stored in a local string.

Note the image :ref:`mtexture1.png <canvas_mtexture1.png>` is a white 'K' on a
transparent background, which makes it hard to see.


.. _`canvas_multitexture.py`:

File **canvas/multitexture.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/canvas/multitexture.py
    :code:

.. _`canvas_mtexture1.png`:

Image **canvas/mtexture1.png**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../../examples/canvas/mtexture1.png
    :align:  center

.. _`canvas_mtexture2.png`:

Image **canvas/mtexture2.png**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../../examples/canvas/mtexture2.png
    :align:  center
