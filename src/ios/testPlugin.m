//
//  testPlugin.m
//  HelloWorld
//
//  Created by Dong on 2015/9/15.
//
//

#import "testPlugin.h"

@implementation testPlugin


-(void)testJStoObjc:(CDVInvokedUrlCommand *)Command{
    NSArray *arg = Command.arguments;
    NSString *result = @"";
    for (NSString *str in arg) {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%@\n",str]];
    }
    CDVPluginResult* pluginResult;
    if (arg.count == 0) {

        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"沒有收到資料."];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:Command.callbackId];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:result message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:Command.callbackId];
    }
    
    
}


@end
