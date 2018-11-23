= TomEE EAP 7.0.1-SP.1

== Change log

=== Changes in TomEE EAP 7.0.1-SP.1

This security release fixes the following issues:

=== Denial of Service (DoS)

*7.5 - CVE-2016-6817* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6817)  +
The HTTP/2 header parser in Apache Tomcat 9.0.0.M1 to 9.0.0.M11 and 8.5.0 to 8.5.6 entered an infinite loop if a header was received that was larger than the available buffer. This made a denial of service attack possible.

*7.5 - CVE-2018-1336* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-1336)  +
An improper handing of overflow in the UTF-8 decoder with supplementary characters can lead to an infinite loop in the decoder causing a Denial of Service. Versions Affected: Apache Tomcat 9.0.0.M9 to 9.0.7, 8.5.0 to 8.5.30, 8.0.0.RC1 to 8.0.51, and 7.0.28 to 7.0.86.

*7.5 - CVE-2017-5650* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5650)  +
In Apache Tomcat 9.0.0.M1 to 9.0.0.M18 and 8.5.0 to 8.5.12, the handling of an HTTP/2 GOAWAY frame for a connection did not close streams associated with that connection that were currently waiting for a WINDOW_UPDATE before allowing the application to write more data. These waiting streams each consumed a thread. A malicious client could therefore construct a series of HTTP/2 requests that would consume all available processing threads.

*5.5 - CVE-2017-12624* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-12624)  +
Apache CXF supports sending and receiving attachments via either the JAX-WS or JAX-RS specifications. It is possible to craft a message attachment header that could lead to a Denial of Service (DoS) attack on a CXF web service provider. Both JAX-WS and JAX-RS services are vulnerable to this attack. From Apache CXF 3.2.1 and 3.1.14, message attachment headers that are greater than 300 characters will be rejected by default. This value is configurable via the property "attachment-max-header-size".

=== XML External Entity (XXE)

*9.8 - CVE-2015-3208* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-3208)  +
XML external entity (XXE) vulnerability in the XPath selector component in Artemis ActiveMQ before commit 48d9951d879e0c8cbb59d4b64ab59d53ef88310d allows remote attackers to have unspecified impact via unknown vectors.

*7.5 - CVE-2016-8739* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-8739)  +
The JAX-RS module in Apache CXF prior to 3.0.12 and 3.1.x prior to 3.1.9 provides a number of Atom JAX-RS MessageBodyReaders. These readers use Apache Abdera Parser which expands XML entities by default which represents a major XXE risk.

*7.5 - CVE-2015-0254* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-0254)  +
Apache Standard Taglibs before 1.2.3 allows remote attackers to execute arbitrary code or conduct external XML entity (XXE) attacks via a crafted XSLT extension in a (1) <x:parse> or (2) <x:transform> JSTL XML tag.

=== Other

*9.8 - CVE-2017-5651* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5651)  +
In Apache Tomcat 9.0.0.M1 to 9.0.0.M18 and 8.5.0 to 8.5.12, the refactoring of the HTTP connectors introduced a regression in the send file processing. If the send file processing completed quickly, it was possible for the Processor to be added to the processor cache twice. This could result in the same Processor being used for multiple requests which in turn could lead to unexpected errors and/or response mix-up.

*9.8 - CVE-2018-8014* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-8014)  +
The defaults settings for the CORS filter provided in Apache Tomcat 9.0.0.M1 to 9.0.8, 8.5.0 to 8.5.31, 8.0.0.RC1 to 8.0.52, 7.0.41 to 7.0.88 are insecure and enable 'supportsCredentials' for all origins. It is expected that users of the CORS filter will have configured it appropriately for their environment rather than using it in the default configuration. Therefore, it is expected that most users will not be impacted by this issue.

*9.1 - CVE-2017-5648* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5648)  +
While investigating bug 60718, it was noticed that some calls to application listeners in Apache Tomcat 9.0.0.M1 to 9.0.0.M17, 8.5.0 to 8.5.11, 8.0.0.RC1 to 8.0.41, and 7.0.0 to 7.0.75 did not use the appropriate facade object. When running an untrusted application under a SecurityManager, it was therefore possible for that untrusted application to retain a reference to the request or response object and thereby access and/or modify information associated with another web application.

*8.8 - sonatype-2017-0413*  +

*8.1 - CVE-2017-12617* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-12617)  +
When running Apache Tomcat versions 9.0.0.M1 to 9.0.0, 8.5.0 to 8.5.22, 8.0.0.RC1 to 8.0.46 and 7.0.0 to 7.0.81 with HTTP PUTs enabled (e.g. via setting the readonly initialisation parameter of the Default servlet to false) it was possible to upload a JSP file to the server via a specially crafted request. This JSP could then be requested and any code it contained would be executed by the server.

*8.1 - CVE-2018-8039* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-8039)  +
It is possible to configure Apache CXF to use the com.sun.net.ssl implementation via 'System.setProperty("java.protocol.handler.pkgs", "com.sun.net.ssl.internal.www.protocol");'. When this system property is set, CXF uses some reflection to try to make the HostnameVerifier work with the old com.sun.net.ssl.HostnameVerifier interface. However, the default HostnameVerifier implementation in CXF does not implement the method in this interface, and an exception is thrown. However, in Apache CXF prior to 3.2.5 and 3.1.16 the exception is caught in the reflection code and not properly propagated. What this means is that if you are using the com.sun.net.ssl stack with CXF, an error with TLS hostname verification will not be thrown, leaving a CXF client subject to man-in-the-middle attacks.

*7.5 - CVE-2015-7559* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-7559)  +
Apache ActiveMQ - ActiveMQ client exposed a remote shutdown command in the ActiveMQConnection class. An attacker could use this flaw to achieve denial of service on a client

*7.5 - CVE-2016-6796* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6796)  +
A malicious web application running on Apache Tomcat 9.0.0.M1 to 9.0.0.M9, 8.5.0 to 8.5.4, 8.0.0.RC1 to 8.0.36, 7.0.0 to 7.0.70 and 6.0.0 to 6.0.45 was able to bypass a configured SecurityManager via manipulation of the configuration parameters for the JSP Servlet.

*7.5 - CVE-2017-5647* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5647)  +
A bug in the handling of the pipelined requests in Apache Tomcat 9.0.0.M1 to 9.0.0.M18, 8.5.0 to 8.5.12, 8.0.0.RC1 to 8.0.42, 7.0.0 to 7.0.76, and 6.0.0 to 6.0.52, when send file was used, results in the pipelined request being lost when send file processing of the previous request completed. This could result in responses appearing to be sent for the wrong request. For example, a user agent that sent requests A, B and C could see the correct response for request A, the response for request C for request B and no response for request C.

*7.5 - CVE-2016-1000343* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000343)  +
In the Bouncy Castle JCE Provider version 1.55 and earlier the DSA key pair generator generates a weak private key if used with default values. If the JCA key pair generator is not explicitly initialised with DSA parameters, 1.55 and earlier generates a private value assuming a 1024 bit key size. In earlier releases this can be dealt with by explicitly passing parameters to the key pair generator.

*7.5 - CVE-2016-6797* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6797)  +
The ResourceLinkFactory implementation in Apache Tomcat 9.0.0.M1 to 9.0.0.M9, 8.5.0 to 8.5.4, 8.0.0.RC1 to 8.0.36, 7.0.0 to 7.0.70 and 6.0.0 to 6.0.45 did not limit web application access to global JNDI resources to those resources explicitly linked to the web application. Therefore, it was possible for a web application to access any global JNDI resource whether an explicit ResourceLink had been configured or not.

*7.5 - CVE-2016-1000340* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000340)  +
In the Bouncy Castle JCE Provider versions 1.51 to 1.55, a carry propagation bug was introduced in the implementation of squaring for several raw math classes have been fixed (org.bouncycastle.math.raw.Nat???). These classes are used by our custom elliptic curve implementations (org.bouncycastle.math.ec.custom.**), so there was the possibility of rare (in general usage) spurious calculations for elliptic curve scalar multiplications. Such errors would have been detected with high probability by the output validation for our scalar multipliers.

*7.5 - CVE-2016-1000342* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000342)  +
In the Bouncy Castle JCE Provider version 1.55 and earlier ECDSA does not fully validate ASN.1 encoding of signature on verification. It is possible to inject extra elements in the sequence making up the signature and still have it validate, which in some cases may allow the introduction of 'invisible' data into a signed structure.

*7.5 - CVE-2017-5664* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5664)  +
The error page mechanism of the Java Servlet Specification requires that, when an error occurs and an error page is configured for the error that occurred, the original request and response are forwarded to the error page. This means that the request is presented to the error page with the original HTTP method. If the error page is a static file, expected behaviour is to serve content of the file as if processing a GET request, regardless of the actual HTTP method. The Default Servlet in Apache Tomcat 9.0.0.M1 to 9.0.0.M20, 8.5.0 to 8.5.14, 8.0.0.RC1 to 8.0.43 and 7.0.0 to 7.0.77 did not do this. Depending on the original request this could lead to unexpected and undesirable results for static error pages including, if the DefaultServlet is configured to permit writes, the replacement or removal of the custom error page. Notes for other user provided error pages: (1) Unless explicitly coded otherwise, JSPs ignore the HTTP method. JSPs used as error pages must must ensure that they handle any error dispatch as a GET request, regardless of the actual method. (2) By default, the response generated by a Servlet does depend on the HTTP method. Custom Servlets used as error pages must ensure that they handle any error dispatch as a GET request, regardless of the actual method.

*7.5 - CVE-2016-1000338* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000338)  +
In Bouncy Castle JCE Provider version 1.55 and earlier the DSA does not fully validate ASN.1 encoding of signature on verification. It is possible to inject extra elements in the sequence making up the signature and still have it validate, which in some cases may allow the introduction of 'invisible' data into a signed structure.

*7.5 - CVE-2016-8745* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-8745)  +
A bug in the error handling of the send file code for the NIO HTTP connector in Apache Tomcat 9.0.0.M1 to 9.0.0.M13, 8.5.0 to 8.5.8, 8.0.0.RC1 to 8.0.39, 7.0.0 to 7.0.73 and 6.0.16 to 6.0.48 resulted in the current Processor object being added to the Processor cache multiple times. This in turn meant that the same Processor could be used for concurrent requests. Sharing a Processor can result in information leakage between requests including, not not limited to, session ID and the response body. The bug was first noticed in 8.5.x onwards where it appears the refactoring of the Connector code for 8.5.x onwards made it more likely that the bug was observed. Initially it was thought that the 8.5.x refactoring introduced the bug but further investigation has shown that the bug is present in all currently supported Tomcat versions.

*7.5 - CVE-2017-5656* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-5656)  +
Apache CXF's STSClient before 3.1.11 and 3.0.13 uses a flawed way of caching tokens that are associated with delegation tokens, which means that an attacker could craft a token which would return an identifer corresponding to a cached token for another user.

*7.5 - CVE-2018-1000180* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-1000180)  +
Bouncy Castle BC 1.54 - 1.59, BC-FJA 1.0.0, BC-FJA 1.0.1 and earlier have a flaw in the Low-level interface to RSA key pair generator, specifically RSA Key Pairs generated in low-level API with added certainty may have less M-R tests than expected. This appears to be fixed in versions BC 1.60 beta 4 and later, BC-FJA 1.0.2 and later.

*7.5 - CVE-2017-7675* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-7675)  +
The HTTP/2 implementation in Apache Tomcat 9.0.0.M1 to 9.0.0.M21 and 8.5.0 to 8.5.15 bypassed a number of security checks that prevented directory traversal attacks. It was therefore possible to bypass security constraints using a specially crafted URL.

*7.5 - CVE-2016-5018* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-5018)  +
In Apache Tomcat 9.0.0.M1 to 9.0.0.M9, 8.5.0 to 8.5.4, 8.0.0.RC1 to 8.0.36, 7.0.0 to 7.0.70 and 6.0.0 to 6.0.45 a malicious web application was able to bypass a configured SecurityManager via a Tomcat utility method that was accessible to web applications.

*7.5 - CVE-2017-3156* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-3156)  +
The OAuth2 Hawk and JOSE MAC Validation code in Apache CXF prior to 3.0.13 and 3.1.x prior to 3.1.10 is not using a constant time MAC signature comparison algorithm which may be exploited by sophisticated timing attacks.

*7.5 - CVE-2018-8034* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-8034)  +
The host name verification when using TLS with the WebSocket client was missing. It is now enabled by default. Versions Affected: Apache Tomcat 9.0.0.M1 to 9.0.9, 8.5.0 to 8.5.31, 8.0.0.RC1 to 8.0.52, and 7.0.35 to 7.0.88.

*7.4 - CVE-2016-1000344* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000344)  +
In the Bouncy Castle JCE Provider version 1.55 and earlier the DHIES implementation allowed the use of ECB mode. This mode is regarded as unsafe and support for it has been removed from the provider.

*7.4 - CVE-2016-1000352* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000352)  +
In the Bouncy Castle JCE Provider version 1.55 and earlier the ECIES implementation allowed the use of ECB mode. This mode is regarded as unsafe and support for it has been removed from the provider.

*7.1 - CVE-2016-6816* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6816)  +
The code in Apache Tomcat 9.0.0.M1 to 9.0.0.M11, 8.5.0 to 8.5.6, 8.0.0.RC1 to 8.0.38, 7.0.0 to 7.0.72, and 6.0.0 to 6.0.47 that parsed the HTTP request line permitted invalid characters. This could be exploited, in conjunction with a proxy that also permitted the invalid characters but with a different interpretation, to inject data into the HTTP response. By manipulating the HTTP response the attacker could poison a web-cache, perform an XSS attack and/or obtain sensitive information from requests other then their own.

*6.5 - CVE-2018-1305* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-1305)  +
Security constraints defined by annotations of Servlets in Apache Tomcat 9.0.0.M1 to 9.0.4, 8.5.0 to 8.5.27, 8.0.0.RC1 to 8.0.49 and 7.0.0 to 7.0.84 were only applied once a Servlet had been loaded. Because security constraints defined in this way apply to the URL pattern and any URLs below that point, it was possible - depending on the order Servlets were loaded - for some security constraints not to be applied. This could have exposed resources to users who were not authorised to access them.

*6.1 - CVE-2016-6812* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6812)  +
The HTTP transport module in Apache CXF prior to 3.0.12 and 3.1.x prior to 3.1.9 uses FormattedServiceListWriter to provide an HTML page which lists the names and absolute URL addresses of the available service endpoints. The module calculates the base URL using the current HttpServletRequest. The calculated base URL is used by FormattedServiceListWriter to build the service endpoint absolute URLs. If the unexpected matrix parameters have been injected into the request URL then these matrix parameters will find their way back to the client in the services list page which represents an XSS risk to the client.

*6.1 - CVE-2018-8031* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-8031)  +
The TomEE console (tomee-webapp) has a XSS vulnerability which could allow javascript to be executed if the user is given a malicious URL. This web application is typically used to add TomEE features to a Tomcat installation. The TomEE bundles do not ship with this application included. This issue can be mitigated by removing the application after TomEE is setup (if using the application to install TomEE), using one of the provided pre-configured bundles, or by upgrading to TomEE 7.0.5. This issue is resolve in this commit: b8bbf50c23ce97dd64f3a5d77f78f84e47579863.

*6.1 - CVE-2018-11784* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-11784)  +
When the default servlet in Apache Tomcat versions 9.0.0.M1 to 9.0.11, 8.5.0 to 8.5.33 and 7.0.23 to 7.0.90 returned a redirect to a directory (e.g. redirecting to '/foo/' when the user requested '/foo') a specially crafted URL could be used to cause the redirect to be generated to any URI of the attackers choice.

*5.9 - CVE-2016-1000346* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000346)  +
Bouncycastle - Other party DH public key not fully validated.

*5.9 - CVE-2016-1000345* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000345)  +
In the Bouncy Castle JCE Provider version 1.55 and earlier the DHIES/ECIES CBC mode vulnerable to padding oracle attack. For BC 1.55 and older, in an environment where timings can be easily observed, it is possible with enough observations to identify when the decryption is failing due to padding.

*5.9 - CVE-2016-1000341* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000341)  +
In the Bouncy Castle JCE Provider version 1.55 and earlier DSA signature generation is vulnerable to timing attack. Where timings can be closely observed for the generation of signatures, the lack of blinding in 1.55, or earlier, may allow an attacker to gain information about the signature's k value and ultimately the private value as well.

*5.9 - CVE-2018-11775* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-11775)  +
TLS hostname verification when using the Apache ActiveMQ Client before 5.15.6 was missing which could make the client vulnerable to a MITM attack between a Java application using the ActiveMQ client and the ActiveMQ server. This is now enabled by default.

*5.9 - CVE-2016-0762* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-0762)  +
The Realm implementations in Apache Tomcat versions 9.0.0.M1 to 9.0.0.M9, 8.5.0 to 8.5.4, 8.0.0.RC1 to 8.0.36, 7.0.0 to 7.0.70 and 6.0.0 to 6.0.45 did not process the supplied password if the supplied user name did not exist. This made a timing attack possible to determine valid user names. Note that the default configuration includes the LockOutRealm which makes exploitation of this vulnerability harder.

*5.9 - CVE-2018-8037* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-8037)  +
If an async request was completed by the application at the same time as the container triggered the async timeout, a race condition existed that could result in a user seeing a response intended for a different user. An additional issue was present in the NIO and NIO2 connectors that did not correctly track the closure of the connection when an async request was completed by the application and timed out by the container at the same time. This could also result in a user seeing a response intended for another user. Versions Affected: Apache Tomcat 9.0.0.M9 to 9.0.9 and 8.5.5 to 8.5.31.

*5.9 - CVE-2018-1304* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-1304)  +
The URL pattern of "" (the empty string) which exactly maps to the context root was not correctly handled in Apache Tomcat 9.0.0.M1 to 9.0.4, 8.5.0 to 8.5.27, 8.0.0.RC1 to 8.0.49 and 7.0.0 to 7.0.84 when used as part of a security constraint definition. This caused the constraint to be ignored. It was, therefore, possible for unauthorised users to gain access to web application resources that should have been protected. Only security constraints with a URL pattern of the empty string were affected.

*5.3 - CVE-2016-6794* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-6794)  +
When a SecurityManager is configured, a web application's ability to read system properties should be controlled by the SecurityManager. In Apache Tomcat 9.0.0.M1 to 9.0.0.M9, 8.5.0 to 8.5.4, 8.0.0.RC1 to 8.0.36, 7.0.0 to 7.0.70, 6.0.0 to 6.0.45 the system property replacement feature for configuration files could be used by a malicious web application to bypass the SecurityManager and read system properties that should not be visible.

*5.3 - CVE-2016-1000339* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2016-1000339)  +
In the Bouncy Castle JCE Provider version 1.55 and earlier the primary engine class used for AES was AESFastEngine. Due to the highly table driven approach used in the algorithm it turns out that if the data channel on the CPU can be monitored the lookup table accesses are sufficient to leak information on the AES key being used. There was also a leak in AESEngine although it was substantially less. AESEngine has been modified to remove any signs of leakage (testing carried out on Intel X86-64) and is now the primary AES class for the BC JCE provider from 1.56. Use of AESFastEngine is now only recommended where otherwise deemed appropriate.

*4.8 - sonatype-2015-0270* 

*4.3 - CVE-2017-7674* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2017-7674)  +
The CORS Filter in Apache Tomcat 9.0.0.M1 to 9.0.0.M21, 8.5.0 to 8.5.15, 8.0.0.RC1 to 8.0.44 and 7.0.41 to 7.0.78 did not add an HTTP Vary header indicating that the response varies depending on Origin. This permitted client and server side cache poisoning in some circumstances.

*3.3 - CVE-2015-6644* (http://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2015-6644)  +
Bouncy Castle in Android before 5.1.1 LMY49F and 6.0 before 2016-01-01 allows attackers to obtain sensitive information via a crafted application, aka internal bug 24106146.
