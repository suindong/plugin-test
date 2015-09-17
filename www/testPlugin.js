/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
*/
//require用來訪問其他模塊,exec用來執行與Native連結.
var exec = require('cordova/exec');
var testPlugin = function(){
	//  this.param = XXX;
}
               
testPlugin.prototype.testJava = function(successCallback, errorCallback, arg) {
    arg = arg || [];//若無傳入值，預設為[]
    //exec需傳入5個參數，分別為成功時回傳、失敗時回傳、功能名稱feature name、Native的method、參數(需為array)
    exec(successCallback, errorCallback, "TestFeature", "testJStoObjc", arg);
};
               
testplugin = new testPlugin();
//module.exports = 類別的實例 
module.exports = testplugin;