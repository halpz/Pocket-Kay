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

@interface ViewController : UIViewController <AVSpeechSynthesizerDelegate>

@property (strong, nonatomic) NSArray *quotes;
@property (strong, nonatomic) UIImageView *peter;
@property (strong, nonatomic) UIImageView *leftCurtain;
@property (strong, nonatomic) UIImageView *rightCurtain;
@property (strong, nonatomic) UIButton *mainButton;
@property (strong, nonatomic) THLabel *lolText;
@property (strong, nonatomic) AVAudioPlayer *laugh;

@end

