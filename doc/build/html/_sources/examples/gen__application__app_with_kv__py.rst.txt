Application built from a  .kv file
==================================

.. |pic4| image:: /images/examples/application__app_with_kv__py.png
   :width: 50%
   :align: middle

|pic4|

This shows how to implicitly use a .kv file for your application. You should
see a full screen button labelled "Hello from test.kv".

After Kivy instantiates a subclass of App, it implicitly searches for a .kv
file. The file :ref:`test.kv <application_test.kv>` is selected because the
name of the subclass of App is TestApp, which implies that kivy should try to
load "test.kv". That file contains a root Widget.


.. _`application_app_with_kv.py`:

File **application/app_with_kv.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/application/app_with_kv.py
    :code:

.. _`application_test.kv`:

File **application/test.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/application/test.kv
    :code:
