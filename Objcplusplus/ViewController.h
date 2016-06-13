//
//  ViewController.h
//  Objcplusplus
//
//  Created by William Palin on 6/11/16.
//  Copyright © 2016 William Palin. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "snowboy-detect.h"
#import <AVFoundation/AVFoundation.h>

#include <EZAudio/EZAudio.h>


@interface ViewController : NSViewController <EZMicrophoneDelegate> {
    snowboy::SnowboyDetect* snowboyDetector;
}

@property (nonatomic, strong) EZMicrophone *microphone;


@end

