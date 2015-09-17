#import <Cordova/CDVPlugin.h>


//需繼承CDVPlugin
@interface testPlugin : CDVPlugin


//method需接收command
-(void)testJStoObjc:(CDVInvokedUrlCommand *)command;


@end
