Suite of Application Builders
=============================

.. |pic2| image:: /images/examples/application__app_suite__py.png
   :width: 50%
   :align: middle

|pic2|

This explores different methods of starting an application. If you run this
without a command line parameter, you should see a menu in your terminal. You
can also run this with a 'r' parameter to pick a random method. There are lots
of logging options to make this easier to debug: the execution order may not be
obvious. Each time you run the command, only one kivy application is created.

This uses the file :ref:`testkvfile.kv <application_testkvfile.kv>` and the
file :ref:`app_suite_data/testkvdir.kv
<application_app_suite_data/testkvdir.kv>`.



.. _`application_app_suite.py`:

File **application/app_suite.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/application/app_suite.py
    :code:

.. _`application_testkvfile.kv`:

File **application/testkvfile.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/application/testkvfile.kv
    :code:

.. _`application_app_suite_data_testkvdir.kv`:

File **application/app_suite_data/testkvdir.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/application/app_suite_data/testkvdir.kv
    :code:
