Texture Wrapping and Coordinates Example
========================================

.. |pic19| image:: /images/examples/canvas__texture__py.png
   :width: 50%
   :align: middle

|pic19|

This example changes texture properties and the properties of its containing
rectangle. You should see some a multicolored texture with sliders to the left
and below and buttons at the bottom of the screen. The image
:ref:`texture_example_image.png <canvas_texture_example_image.png>` is rendered
into the rectangle. Sliders change the number of copies of the texture (the
tex_coords), the size of enclosing rectangle (the taw_height and taw_width)
while the buttons change how the texture is rendered when more than one copy is
in the rectangle (the texture_wrap).



.. _`canvas_texture.py`:

File **canvas/texture.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/canvas/texture.py
    :code:

.. _`canvas_texture_example_image.png`:

Image **canvas/texture_example_image.png**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. image:: ../../../examples/canvas/texture_example_image.png
    :align:  center
