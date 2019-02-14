Live Shader Editor
==================

.. |pic24| image:: /images/examples/demo__shadereditor__main__py.png
   :width: 50%
   :align: middle

|pic24|

This provides a live editor for vertex and fragment editors. You should see a
window with two editable panes on the left and a large kivy logo on the
right.The top pane is the Vertex shader and the bottom is the Fragment shader.
The file :ref:`shadereditor.kv <demo_shadereditor_shadereditor.kv>` describes
the interface.

On each keystroke to either shader, declarations are added and the shaders are
compiled. If there are no errors, the screen is updated. Otherwise, the error
is visible as logging message in your terminal.


.. _`demo_shadereditor_main.py`:

File **demo/shadereditor/main.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/shadereditor/main.py
    :code:

.. _`demo_shadereditor_shadereditor.kv`:

File **demo/shadereditor/shadereditor.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/demo/shadereditor/shadereditor.kv
    :code:
