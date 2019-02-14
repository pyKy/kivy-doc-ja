3D Rotating Monkey Head
=======================

.. |pic0| image:: /images/examples/3Drendering__main__py.png
   :width: 50%
   :align: middle

|pic0|

This example demonstrates using OpenGL to display a rotating monkey head. This
includes loading a Blender OBJ file, shaders written in OpenGL's Shading
Language (GLSL), and using scheduled callbacks.

The monkey.obj file is an OBJ file output from the Blender free 3D creation
software. The file is text, listing vertices and faces and is loaded using a
class in the file :ref:`objloader.py <3Drendering_objloader.py>`. The file
:ref:`simple.glsl <3Drendering_simple.glsl>` is a simple vertex and fragment
shader written in GLSL.


.. _`3Drendering_main.py`:

File **3Drendering/main.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/3Drendering/main.py
    :code:

.. _`3Drendering_objloader.py`:

File **3Drendering/objloader.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/3Drendering/objloader.py
    :code:

.. _`3Drendering_simple.glsl`:

File **3Drendering/simple.glsl**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: glsl
    :linenothreshold: 3

.. include:: ../../../examples/3Drendering/simple.glsl
    :code:
