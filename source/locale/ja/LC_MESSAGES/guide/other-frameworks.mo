Þ          |               Ü   Î   Ý   
   ¬  !   ·  
   Ù  _  ä  á   D  4  &     [     u  E   ü  C   B  t    æ   û  
   â  /   í  
   	    (	  U  ;  à     ?   r     ²  E   H  C      Any arguments or keyword arguments passed to this function will be passed on the threadedselect reactors interleave function. These are the arguments one would usually pass to twisted's reactor.startRunning Client App Integrating with other Frameworks Server App The kivy examples include a small example of a twisted server and client. The server app has a simple twisted server running and logs any messages. The client app can send messages to the server and will print its message and the response it got. The examples are based mostly on the simple Echo example from the twisted docs, which you can find here: To try the example, run echo_server_app.py first, and then launch echo_client_app.py.  The server will reply with simple echo messages to anything the client app sends when you hit enter after typing something in the textbox. Unlike the default twisted reactor, the installed reactor will not handle any signals unless you set the 'installSignalHandlers' keyword argument to 1 explicitly.  This is done to allow kivy to handle the signals as usual, unless you specifically want the twisted reactor to handle the signals (e.g. SIGINT). Using Twisted inside Kivy You can use the `kivy.support.install_twisted_reactor` function to install a twisted reactor that will run inside the kivy event loop. http://twistedmatrix.com/documents/current/_downloads/simpleclient.py http://twistedmatrix.com/documents/current/_downloads/simpleserv.py Project-Id-Version: Kivy 1.9.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-02 17:46+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 threadedselect ãªã¢ã¯ã¿ã¼é¢æ°ã¯ã¤ã³ã¿ãªã¼ãä¸ã®ä»»æã®å¼æ°ãããã®é¢æ°ã«æ¸¡ãããã­ã¼ã¯ã¼ãå¼æ°ãæ¸¡ããã¾ããããã¯1ã¤ãéå¸¸ twisted's reactor.startRunningã«æ¸¡ãå¼æ°ã§ãã Client App Integrating with other Frameworks(ç¿»è¨³æ¸ã¿) Server App kivyã®ä¾ã¯ãtwisted ãµã¼ãã¼ã¨ã¯ã©ã¤ã¢ã³ãã®å°ããªä¾ã«ãªãã¾ãããµã¼ãã¢ããªãå®è¡ããã¦ããã·ã³ãã«ãªtwistedãµã¼ãã¼ãæã¡ããã¹ã¦ã®ã¡ãã»ã¼ã¸ãã­ã°ã«è¨é²ãã¾ãã ã¯ã©ã¤ã¢ã³ãã¢ããªã±ã¼ã·ã§ã³ã¯ããµã¼ãã¼ã«ã¡ãã»ã¼ã¸ãéä¿¡ã§ãããã¡ãã»ã¼ã¸ã¨ã¬ã¹ãã³ã¹ãåºåãã¾ããä¾ã¯ãtwistedãã­ã¥ã¡ã³ãããã®ã·ã³ãã«ãªEchoãµã³ãã«ã«åºã¥ãã¦ãããã»ã¨ãã©ããã§è¦ã¤ãããã¾ã: ä¾ã«ææ¦ãã¦ã¿ã¦ãã ãããæåã«echo_server_app.pyãå®è¡ãã¦ãããecho_client_app.pyãèµ·åãã¦ãã ããããã­ã¹ãããã¯ã¹ã«ä½ããå¥åããå¾Enterã­ã¼ãæ¼ãã¨ããµã¼ãã¼ã¯ãå¿ç­ãç°¡åãªã¨ã³ã¼ã¡ãã»ã¼ã¸ãã¯ã©ã¤ã¢ã³ãã¢ããªã±ã¼ã·ã§ã³ã«éä¿¡ãã¾ãã æç¤ºçã«1ã«'installSignalHandlers' ã­ã¼ã¯ã¼ãå¼æ°ãè¨­å®ããªãéããããã©ã«ãã®twisted reactorã¨ã¯ç°ãªããã¤ã³ã¹ãã¼ã«ãããreactorã¯ãä»»æã®ã·ã°ãã«ãå¦çãã¾ããã Using Twisted inside Kivy"(Kivyåé¨ã§Twistedãä½¿ç¨ãã) twistedãã¤ã³ã¹ãã¼ã«ãããã¨ã§ã"é¢æ°`kivy.support.install_twisted_reactor`ãkivyã®ã¤ãã³ãã«ã¼ãåã§å®è¡ã§ãã¾ãã http://twistedmatrix.com/documents/current/_downloads/simpleclient.py http://twistedmatrix.com/documents/current/_downloads/simpleserv.py 