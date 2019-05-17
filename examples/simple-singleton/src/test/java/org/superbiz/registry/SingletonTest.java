/**
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */
package org.superbiz.registry;

import org.junit.AfterClass;
import org.junit.Test;

import javax.ejb.embeddable.EJBContainer;
import javax.naming.Context;

public class SingletonTest {

    private final static EJBContainer ejbContainer = EJBContainer.createEJBContainer();

    @Test
    public void oneInstancePerMultipleReferences() throws Exception {

        final Context context = ejbContainer.getContext();

        final RedBean redBean = (RedBean) context.lookup("java:global/simple-singleton/RedBean");
        redBean.doSomething();
    }

    @AfterClass
    public static void closeEjbContainer() {
        ejbContainer.close();
    }
}
