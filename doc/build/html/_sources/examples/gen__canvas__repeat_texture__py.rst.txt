Repeat Texture on Resize
========================

.. |pic15| image:: /images/examples/canvas__repeat_texture__py.png
   :width: 50%
   :align: middle

|pic15|

This examples repeats the letter 'K' (mtexture1.png) 64 times in a window. You
should see 8 rows and 8 columns of white K letters, along a label showing the
current size. As you resize the window, it stays an 8x8. This example includes
a label with a colored background.

Note the image :ref:`mtexture1.png <canvas_mtexture1.png>` is a white 'K' on a
transparent background, which makes it hard to see.


.. _`canvas_repeat_texture.py`:

File **canvas/repeat_texture.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/canvas/repeat_texture.py
    :code:

.. _`canvas_mtexture1.png`:

Image **canvas/mtexture1.png**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../../examples/canvas/mtexture1.png
    :align:  center
