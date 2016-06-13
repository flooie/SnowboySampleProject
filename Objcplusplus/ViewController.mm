//
//  ViewController.m
//  Objcplusplus
//
//  Created by William Palin on 6/11/16.
//  Copyright © 2016 William Palin. All rights reserved.
//

#import "ViewController.h"

//
@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];

    snowboyDetector = new snowboy::SnowboyDetect(
                                std::string([[[NSBundle mainBundle]pathForResource:@"common" ofType:@"res"] UTF8String]),
                                std::string([[[NSBundle mainBundle]pathForResource:@"snowboy" ofType:@"umdl"] UTF8String]));
    snowboyDetector->SetSensitivity("0.55");        // Sensitivity for each hotword
    snowboyDetector->SetAudioGain(2.0);             // Audio gain for detection



    self.microphone = [EZMicrophone microphoneWithDelegate:self];
    [self.microphone startFetchingAudio];
}



- (void)microphone:(EZMicrophone *)microphone changedDevice:(EZAudioDevice *)device {
    dispatch_async(dispatch_get_main_queue(), ^{
        NSLog(@"Changed input device: %@", device);
    });
}



-(void) microphone:(EZMicrophone *)microphone
                hasAudioReceived:(float **)buffer
                withBufferSize:(UInt32)bufferSize
                withNumberOfChannels:(UInt32)numberOfChannels {

    dispatch_async(dispatch_get_main_queue(),^{
//        [NSThread sleepForTimeInterval:0.1];
        int result = snowboyDetector->RunDetection(buffer[0], bufferSize);  // buffer[0] is a float array
        if (result == 1) {
            NSLog(@"alexa snowboy or something");
        }
    });
}



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
