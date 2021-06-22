= TomEE EAP 7.0.10-TT.7

=== Changes in TomEE EAP 7.0.10-TT.7
* Updated javax.faces from 2.2.20 to 2.2.21-TT.1 to mitigate CVE-2020-6950
* Updated cxf to 3.1.19-TT.7 to mitigate CVE-2021-30468
* Updated to tomcat 8.5.68


=== Changes in TomEE EAP 7.0.10-TT.6
* Updated tomcat to 8.5.65
* Updated cxf to 3.1.19-TT.6 to mitigate CVE-2021-22696

=== Changes in TomEE EAP 7.0.10-TT.5
* Updated to bcprov-jdk15on 1.68

=== Changes in TomEE EAP 7.0.10-TT.4
* Updated myfaces to 2.2.14 to mitigate CVE-2021-26296	

=== Changes in TomEE EAP 7.0.10-TT.3
* Updated Tomcat to 8.5.63
* Updated ActiveMQ to 5.15.6-TT.2 to mitigate CVE-2021-26117
* Updated commons-dbcp to 2.1-TT.1 to mitigate sonatype-2020-1349

=== Changes in TomEE EAP 7.0.10-TT.2
* Update to Tomcat 8.5.60

=== Changes in TomEE EAP 7.0.10-TT.1
* Update to CXF 3.1.19-TT.5 to mitigate CVE-2020-13954
* Update to bcprov-jdk15on 1.67 to mitigate CVE-2020-0187 and sonatype-2020-0770

=== Changes in TomEE EAP 7.0.8-TT.7
* Update to Tomcat 8.5.59 to mitigate CVE-2020-13943
* Update to cryptacular 1.1.4 to mitigate CVE-2020-7226

=== Changes in TomEE EAP 7.0.8-TT.6

* Update commons-io to 2.7 in order to mitigate sonatype-2018-0705
* Update ActiveMQ to mitigate CVE-2020-11998 and CVE-2020-11998

=== Changes in TomEE EAP 7.0.8-TT.5

* Update to Tomcat 8.5.57
* Update Commons-codec to 1.10-TT.2
* Update DBCP2 to 2.1-TT.0

=== Changes in TomEE EAP 7.0.8-TT.4

* Update to ActiveMQ 5.15.12, and prevent the embedded ActiveMQ broker from creating a connector.
* Update to Tomcat 8.5.55

=== Changes in TomEE EAP 7.0.8-TT.3

* Update to CXF-3.1.9-TT.4 to mitigate CVE-2020-1954


=== Changes in TomEE EAP 7.0.8-TT.2

* Update Tomcat to 8.5.51 to mitigate CVE-2020-1398
* Update to CXF-3.1.19-TT.3 to mitigate CVE-2019-17573 and CVE-2019-12423

=== Changes in TomEE EAP 7.0.8-TT.1

* Update to Tomcat 7.0.99 to mitigate CVE-2019-12418 & CVE-2019-17563
* Update Commons-Daemon to resolve crash issues on x86.

=== Changes in TomEE EAP 7.0.7-TT.4

* Update to CXF 3.1.19-TT.2 to mitigate CVE-2019-12419 and CXF - CVE-2019-12406

=== Changes in TomEE EAP 7.0.7-TT.3

* Update to Mojarra 2.2.20 to mitigate CVE-2019-17091

=== Changes in TomEE EAP 7.0.7-TT.2

* Update JAXB to 2.3.2
* Fix connection issue with XA transactions
* Fix JMS2 Transaction issue
* SONATYPE-2018-0605 - update CXF to 2.6.17-TT.4 to mitigate SONATYPE-2018-0605
* Update Quartz to 2.2.4 to mitigate CVE-2019-13990
* Update Beanutils to 1.9.4 to mitigate CVE-2019-10086

=== Changes in TomEE EAP 7.0.7-TT.1

* TOMEE-2531 update Commons-Daemon
* Fix for system policy being set
* Improvements for running under Java 11
* XBean 4.14 dependency upgrade
* Fixes for defining custom ORM metadata when using CMP
* Update to ASM7
* TOMEE-2547 update to Tomcat 8.5.42

=== Changes in TomEE EAP 7.0.6-TT.7

* TOMEE-2510 Update Tomcat to 8.5.40 to mitigate CVE-2019-0232

=== Changes in TomEE EAP 7.0.6-TT.6

* TOMEE-2295 fix issues with on-the-fly conversion from CMP to JPA
* TOMEE-2275 update OWB to 1.7.6
* TOMEE-2261 make service.bat compatible with JDK11+
* TOMEE-2493 Update Bouncy Castle to 1.61
* TOMEE-2497 Update Tomcat to 8.5.39 to mitigate CVE-2019-0199


=== Changes in TomEE EAP 7.0.6-TT.4

* TOMEE-2255 Upgrade to Tomcat 8.5.34 to mitigate CVE-2018-11784

=== Changes in TomEE EAP 7.0.6-TT.3

This release has the following changes:

* TOMEE-2242 Upgrade commons-lang3 dependency from old 3.5 to current 3.8 version https://issues.apache.org/jira/browse/TOMEE-2222
* jdk 11 compatibility 
* JMX Patch to 7.0.5
* MessageDrivenContext not injected into MDBs when using new pooling https://issues.apache.org/jira/browse/TOMEE-2237
* Null attributes in MBeanPojoWrapper https://issues.apache.org/jira/browse/TOMEE-2245
* Update ActiveMQ to 5.15.6 for CVE-2018-11775 https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2018-11775

= TomEE EAP 7.0.6-TT.2

=== Changes in TomEE EAP 7.0.6-TT.2

This release has the following changes:

* CVE-2018-1000180 - Update to Bouncy Castle 1.60

Bouncy Castle BC 1.54 - 1.59, BC-FJA 1.0.0, BC-FJA 1.0.1 and earlier have a flaw in the Low-level interface to RSA key pair generator, specifically RSA Key Pairs generated in low-level API with added certainty may have less M-R tests than expected. This appears to be fixed in versions BC 1.60 beta 4 and later, BC-FJA 1.0.2 and later.

* CVE-2018-8034 - Update to Tomcat 8.5.32

Apache Tomcat Websocket - Host Name Verification Missing in WebSocket Client

The Apache Tomcat component is vulnerable to Man-in-the-Middle (MitM) attacks. The connectToServerRecursive and createSSLEngine methods in WsWebSocketContainer.java that are used by the WebSockets client do not validate the hostname of SSL certificates. A remote attacker can exploit this behavior to spoof a legitimate server to perform a MitM attack.

* CVE-2018-8037 - Update to Tomcat 8.5.32

Apache Tomcat is vulnerable to Session Hijacking. The isClosed() method in the NioSocketWrapper and Nio2SocketWrapper classes, which is accessed from multiple threads, does not use volatile variables to store the closed field of their associated Socket objects. This means that one thread might query whether the Socket is closed while another thread is in the process of closing it; this results in a race condition, wherein a user session might be reused with a Socket that formerly belonged to another user, and was presumed closed. Because the Socketbelonged to another user, the connection and session remains active. An attacker can exploit this vulnerability by attempting to trigger the race condition, allowing the attacker to possibly take control of another user's session. Note that the attacker cannot choose which session to hijack; it is entirely dependent on the non-deterministic nature of the race condition.


=== Changes in TomEE EAP 7.0.5-TT.3

This release has the following changes:

* Update to Johnzon 1.0.1 and Tomcat 8.5.31-TT.1.

* CVE-2018-8014

The defaults settings for the CORS filter are insecure and enable 'supportsCredentials' for all origins. It is expected that users of the CORS filter will have configured it appropriately for their environment rather than using it in the default configuration. Therefore, it is expected that most users will not be impacted by this issue.

=== Changes in TomEE EAP 7.0.5-TT.2

This release has the following changes:

* CVE-2018-1304

The URL pattern of "" (the empty string) which exactly maps to the context root was not correctly handled in Apache Tomcat 9.0.0.M1 to 9.0.4, 8.5.0 to 8.5.27, 8.0.0.RC1 to 8.0.49 and 7.0.0 to 7.0.84 when used as part of a security constraint definition. This caused the constraint to be ignored. It was, therefore, possible for unauthorised users to gain access to web application resources that should have been protected. Only security constraints with a URL pattern of the empty string were affected.

* CVE-2018-1305

Security constraints defined by annotations of Servlets in Apache Tomcat 9.0.0.M1 to 9.0.4, 8.5.0 to 8.5.27, 8.0.0.RC1 to 8.0.49 and 7.0.0 to 7.0.84 were only applied once a Servlet had been loaded. Because security constraints defined in this way apply to the URL pattern and any URLs below that point, it was possible - depending on the order Servlets were loaded - for some security constraints not to be applied. This could have exposed resources to users who were not authorised to access them.

=== Changes in TomEE EAP 7.0.5-TT.1

This release has the following changes:

* MYFACES-4133 Don't deserialize the ViewState-ID if the state saving method is server
