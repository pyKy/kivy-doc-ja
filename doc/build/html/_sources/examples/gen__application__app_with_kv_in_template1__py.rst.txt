Application from a .kv in a Template Directory
==============================================

.. |pic5| image:: /images/examples/application__app_with_kv_in_template1__py.png
   :width: 50%
   :align: middle

|pic5|

This example shows how you can change the directory for the .kv file. You
should see "Hello from template1/test.ky" as a button.

As kivy instantiates the TestApp subclass of App, the variable kv_directory is
set. Kivy then implicitly searches for a .kv file matching the name of the
subclass in that directory, finding the file :ref:`template1/test.kv
<application_template1/test.kv>`. That file contains the root widget.



.. _`application_app_with_kv_in_template1.py`:

File **application/app_with_kv_in_template1.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/application/app_with_kv_in_template1.py
    :code:

.. _`application_template1_test.kv`:

File **application/template1/test.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/application/template1/test.kv
    :code:
