//
//  TextEffectsViewController.h
//  GratitudeJournal
//
//  Created by ajchang on 3/14/15.
//  Copyright (c) 2015 ajchang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Moment.h"

@interface TextEffectsViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIScrollView *textEffectsScrollView;
@property (weak, nonatomic) IBOutlet UILabel *momentTextLabel;
@property Moment *moment;

@end