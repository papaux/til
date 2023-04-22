HTTP Client
-----------

Starting with JDK 11, Java provides a new API for performing HTTP requests, the `HttpClient API <https://www.baeldung.com/java-9-http-client>`_

Debugging
~~~~~~~~~~~

Debug logs can be enabled by setting various system properties.

* ``-Djdk.httpclient.HttpClient.log=all``: general debugging log from the HTTP client.
* ``-Djdk.internal.httpclient.debug=true``: more internal specific debug logs.
