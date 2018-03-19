//
//  HFViewController.m
//  HFBouncingButton
//
//  Created by Teguh Hidayatullah on 03/19/2018.
//  Copyright (c) 2018 Teguh Hidayatullah. All rights reserved.
//

#import "HFViewController.h"
#import "HFBouncingButton.h"

@interface HFViewController ()

@property (weak, nonatomic) IBOutlet HFBouncingButton *bouncingButton;

@end

@implementation HFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.bouncingButton.buttonTappedBlock = ^{
        NSLog(@"tapped");
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hello" message:@"Be happy be fresh!" preferredStyle:UIAlertControllerStyleAlert];
        
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK Cool!" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {}];
        [alert addAction:defaultAction];
        [self showViewController:alert sender:self];
    };
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
