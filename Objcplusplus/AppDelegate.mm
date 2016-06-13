//
//  AppDelegate.m
//  Objcplusplus
//
//  Created by William Palin on 6/11/16.
//  Copyright © 2016 William Palin. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
//    _snowboyDetect = new snowboy::SnowboyDetect(std::string([[[NSBundle mainBundle]pathForResource:@"common" ofType:@"res"] UTF8String]),
//                                                std::string([[[NSBundle mainBundle]pathForResource:@"snowboy" ofType:@"umdl"] UTF8String]));
//    _snowboyDetect->SetSensitivity("0.45");        // Sensitivity for each hotword
//    _snowboyDetect->SetAudioGain(2.0);             // Audio gain for detection

}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
