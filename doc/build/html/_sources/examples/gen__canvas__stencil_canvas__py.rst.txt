Stencil demo
============

.. |pic17| image:: /images/examples/canvas__stencil_canvas__py.png
   :width: 50%
   :align: middle

|pic17|

This is a test of the stencil graphics instruction inside the stencil view
widget. When you use a stencil, nothing will be drawn outside the bounding box.
All the graphics will draw only in the stencil view.

You can "draw" a stencil view by touch & draw. The touch down will set the
position, and the drag will set the size.


.. _`canvas_stencil_canvas.py`:

File **canvas/stencil_canvas.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/canvas/stencil_canvas.py
    :code:
