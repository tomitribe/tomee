/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.apache.openejb.config;

import org.apache.xbean.finder.ResourceFinder;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Map;

import static java.util.Arrays.asList;


enum EntityMappingURLFinder implements BiFunction<String, AppModule, URL> {


    INSTANCE;


    private final DefaultFinder defaultFinder = new DefaultFinder();

    private final URLFinder urlFinder = new URLFinder();

    private final AppModuleMetaInfFinder appModuleMetaInfFinder = new AppModuleMetaInfFinder();

    private final List<BiFunction<String, AppModule, URL>> finders = asList(defaultFinder, urlFinder, appModuleMetaInfFinder);


    @Override
    public URL apply(final String location, final AppModule appModule) {
        for (final BiFunction<String, AppModule, URL> finder : finders) {
            final URL url = finder.apply(location, appModule);
            if (url != null) {
                return url;
            }
        }
        return null;
    }


    private class DefaultFinder implements BiFunction<String, AppModule, URL> {

        @Override
        public URL apply(final String location, final AppModule appModule) {
            return Thread.currentThread().getContextClassLoader().getResource(location);
        }
    }

    private class URLFinder implements BiFunction<String, AppModule, URL> {

        @Override
        public URL apply(final String location, final AppModule appModule) {
            try {
                return new URL(location);
            } catch (MalformedURLException e) {
                return null;
            }
        }
    }

    private class AppModuleMetaInfFinder implements BiFunction<String, AppModule, URL> {

        @Override
        public URL apply(final String location, final AppModule appModule) {

            if (!location.contains(DeploymentLoader.META_INF)) {
                return null;
            }

            for (final EjbModule ejbModule : appModule.getEjbModules()) {

                final URL url = getUrl(location, ejbModule);
                if (url != null) {
                    return url;
                }
            }
            return null;
        }

        private URL getUrl(final String location, final EjbModule ejbModule) {
            try {
                final ResourceFinder finder = new ResourceFinder("", ejbModule.getClassLoader());
                final Map<String, URL> map = DeploymentLoader.mapDescriptors(finder);
                final String fileName = location.replace(DeploymentLoader.META_INF, "");
                return map.get(fileName);
            } catch (Exception ex) {
                return null;
            }
        }
    }
}
