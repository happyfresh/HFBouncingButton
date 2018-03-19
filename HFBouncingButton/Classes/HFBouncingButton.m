//
//  HFBouncingButton.m
//  HappyFresh
//
//  Created by Teguh Hidayatullah on 10/25/17.
//  Copyright © 2017 HappyFresh Inc. All rights reserved.
//

#import "HFBouncingButton.h"

@interface HFBouncingButton ()
@end

@implementation HFBouncingButton
@dynamic showShadow;

- (void)awakeFromNib {
    [super awakeFromNib];
    [self setupAnimation];
    UITapGestureRecognizer *singleFingerTap =
    [[UITapGestureRecognizer alloc] initWithTarget:self
                                            action:@selector(handleTap:)];
    [self addGestureRecognizer:singleFingerTap];

}

- (void)setShowShadow:(BOOL)showShadow {
    if (showShadow) {
        self.layer.shadowColor = [UIColor colorWithRed:0.133333f green:0.133333f blue:0.133333f alpha:0.1f].CGColor;
        self.layer.shadowOffset = CGSizeMake(0.25, 0.25);
        self.layer.shadowRadius = 4;
        self.layer.shadowOpacity = 1.0;
    }
}

- (void)setupAnimation {
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    if (self.verticalBounce) {
        animation.keyPath = @"position.y";
    } else {
        animation.keyPath = @"position.x";
    }
    

    animation.values = @[ @0, @10, @0 ];
    animation.keyTimes = @[ @0, @(1 / 2.0), @1 ];
    animation.duration = 1.0;
    animation.repeatCount = INFINITY;
    
    animation.additive = YES;
    [self.layer removeAllAnimations];
    [self.layer addAnimation:animation forKey:@"bounce"];
}

- (void)handleTap:(id)sender {
    if (self.buttonTappedBlock) {
        self.buttonTappedBlock();
    }
}

@end
