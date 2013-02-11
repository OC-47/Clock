//
//  ViewController.m
//  Clock
//
//  Created by Miwa Oshiro on 2013/01/26.
//  Copyright (c) 2013年 edu.stanford.cs193p.oshiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

@synthesize imageView;
@synthesize label;


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self image];

    [NSTimer scheduledTimerWithTimeInterval:0.5
                                     target:self
                                   selector:@selector(showDate)
                                   userInfo:nil
                                    repeats:YES];
}


- (void) showDate{
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy/MM/dd HH:mm:ss";
    [label setText:[formatter stringFromDate:[NSDate date]]];

}


- (void)image{


    // 可変長配列作成
    NSMutableArray *imgBox = [[NSMutableArray alloc]init];
    
    
    // 画像を配列に格納していく
    int i;
    for(i=37; i<636; i++){
        
    NSMutableString *str = [[NSMutableString alloc] initWithFormat:@"ishot-%d.png",i];
    // 配列に画像を格納
    [imgBox addObject:[UIImage imageNamed:str]];
        
    }
    
    imageView.animationImages =imgBox;
    imageView.animationDuration = imgBox.count;

    [imageView startAnimating];
}

@end