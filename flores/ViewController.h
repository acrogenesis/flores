//
//  ViewController.h
//  flores
//
//  Created by Adrian Rangel on 1/29/14.
//  Copyright (c) 2014 Adrian Rangel. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentColor;
- (IBAction)switchAction:(id)sender;
@property (weak, nonatomic) IBOutlet UISwitch *switchOutlet;
- (IBAction)buttonPicture:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *pictureWV;
@property (weak, nonatomic) IBOutlet UIWebView *detailsWV;

@end
