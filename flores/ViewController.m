//
//  ViewController.m
//  flores
//
//  Created by Adrian Rangel on 1/29/14.
//  Copyright (c) 2014 Adrian Rangel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)switchAction:(id)sender {
    self.detailsWV.hidden != [sender isOn];
}
- (IBAction)buttonPicture:(id)sender {
    NSString *color = [self.segmentColor titleForSegmentAtIndex:self.segmentColor.selectedSegmentIndex];
    NSString *url = [[NSString alloc] initWithFormat:@"http://www.floraphotographs.com/showrandomios.php?color=%@&session=%d",color,10];
    NSURL *imageURL = [NSURL URLWithString:url];
    NSURLRequest *imageRequest = [NSURLRequest requestWithURL:imageURL];
    [self.pictureWV loadRequest:imageRequest];
    
    if ([self.switchOutlet isOn]) {
        NSString *detail = [[NSString alloc] initWithFormat:@"http://www.floraphotographs.com/detailios.php?color=%@&session=%d",color,10];
        NSURL *detailURL = [NSURL URLWithString:detail];
        [self.detailsWV loadRequest:[NSURLRequest requestWithURL:detailURL]];
    }
    
}
@end
