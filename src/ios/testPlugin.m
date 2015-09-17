#import "testPlugin.h"


@implementation testPlugin


-(void)testJStoObjc:(CDVInvokedUrlCommand *)command
{
    //command.arguments可提取傳入的參數，型態為array
    NSArray *arg = command.arguments;
    NSString *result = @"";
    for (NSString *str in arg)
    {
        result = [result stringByAppendingString:[NSString stringWithFormat:@"%@\n",str]];
    }
    
    //回傳結果時需賦予CDVPluginResult和command.callbackId
    CDVPluginResult* pluginResult;
    if (arg.count == 0)
    {
        //result需放入回傳狀態，message可選
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"沒有收到資料."];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
    else
    {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        UIAlertView *alert = [[UIAlertView alloc]initWithTitle:result message:nil delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alert show];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
    }
}


@end
