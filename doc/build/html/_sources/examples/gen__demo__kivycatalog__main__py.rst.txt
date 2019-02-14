Kivy Catalog
============

.. |pic21| image:: /images/examples/demo__kivycatalog__main__py.png
   :width: 50%
   :align: middle

|pic21|

The Kivy Catalog viewer showcases widgets available in Kivy and allows
interactive editing of kivy language code to get immediate feedback. You should
see a two panel screen with a menu spinner button (starting with 'Welcome') and
other controls across the top.The left pane contains kivy (.kv) code, and the
right side is that code rendered. You can edit the left pane, though changes
will be lost when you use the menu spinner button. The catalog will show you
dozens of .kv examples controlling different widgets and layouts.

The catalog's interface is set in the file :ref:`kivycatalog.kv
<demo_kivycatalog_kivycatalog.kv>`, while the interfaces for each menu option
are set in containers_kvs directory. To add a new .kv file to the Kivy Catalog,
add a .kv file into the container_kvs directory and reference that file in the
ScreenManager section of kivycatalog.kv.

Known bugs include some issue with the drop


.. _`demo_kivycatalog_main.py`:

File **demo/kivycatalog/main.py**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: ../../../examples/demo/kivycatalog/main.py
    :code:

.. _`demo_kivycatalog_kivycatalog.kv`:

File **demo/kivycatalog/kivycatalog.kv**
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. highlight:: kv
    :linenothreshold: 3

.. include:: ../../../examples/demo/kivycatalog/kivycatalog.kv
    :code:
