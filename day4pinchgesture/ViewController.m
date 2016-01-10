//
//  ViewController.m
//  day4pinchgesture
//
//  Created by Himanshu on 09/10/15.
//  Copyright (c) 2015 jq software. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIPinchGestureRecognizer *pinchGestureReconnizer = [[UIPinchGestureRecognizer alloc] initWithTarget:self action:@selector(handlePinch:)];
    [[self myImageView]addGestureRecognizer:pinchGestureReconnizer];
    [[self myImageView]setUserInteractionEnabled:YES];
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)handlePinch:(UIPinchGestureRecognizer *)pinchGesture
{
    CGAffineTransform zoomTransform = CGAffineTransformMakeScale([pinchGesture scale],[pinchGesture scale]);
    [[pinchGesture view] setTransform:zoomTransform];
}


@end
