//
//  ViewController.h
//  Pocket Kay
//
//  Created by Paul Halpin on 03/02/2015.
//  Copyright (c) 2015 Paul Halpin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import "THLabel.h"

@interface ViewController : UIViewController <AVSpeechSynthesizerDelegate> {
    BOOL paddyMode;
    int count;
    CGRect textFrame1, textFrame0;
}

@property (strong, nonatomic) NSArray *quotes;

@property (strong, nonatomic) UIImageView *peter;
@property (strong, nonatomic) UIImageView *leftCurtain;
@property (strong, nonatomic) UIImageView *rightCurtain;
@property (strong, nonatomic) UIImageView *leftPaddy;
@property (strong, nonatomic) UIImageView *rightPaddy;
@property (strong, nonatomic) UIImageView *kayText;

@property (strong, nonatomic) UIButton *mainButton;
@property (strong, nonatomic) THLabel *lolText;
@property (strong, nonatomic) AVAudioPlayer *laugh;

@end

