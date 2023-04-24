HTTP Client
-----------

Starting with JDK 11, Java provides a new API for performing HTTP requests, the `HttpClient API <https://www.baeldung.com/java-9-http-client>`_

Debugging
~~~~~~~~~~~

Debug logs can be enabled by setting various system properties.

* ``-Djdk.httpclient.HttpClient.log=all``: general debugging log from the HTTP client.
* ``-Djdk.internal.httpclient.debug=true``: more internal specific debug logs.
* ``-Djavax.net.debug=ssl,keymanager``: selectively enable logs in java networking.
* ``-Djavax.net.debug=all``: enable debugging all details for network connections.
* ``-Djavax.net.debug=help``: get help about the logging options

-Djdk.httpclient.HttpClient.log=all -Djdk.internal.httpclient.debug=true 
