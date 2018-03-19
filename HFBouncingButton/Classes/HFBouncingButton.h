//
//  HFBouncingButton.h
//  HappyFresh
//
//  Created by Teguh Hidayatullah on 10/25/17.
//  Copyright © 2017 HappyFresh Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HFBouncingButton : UIView

@property (nonatomic) IBInspectable BOOL verticalBounce;
@property (nonatomic) IBInspectable BOOL showShadow;
@property (nonatomic, copy) void (^buttonTappedBlock)(void);

- (void)setupAnimation;

@end
