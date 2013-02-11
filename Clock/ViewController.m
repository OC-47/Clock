//
//  ViewController.m
//  Clock
//
//  Created by Miwa Oshiro on 2013/01/26.
//  Copyright (c) 2013年 edu.stanford.cs193p.oshiro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self image];
    
    myTicket = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                target:self
                                              selector:@selector(showDate)
                                              userInfo:nil
                                               repeats:YES];
}


- (void) showDate{
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 380, 320, 100)];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy/MM/dd HH:mm:ss";
    [label setText:[formatter stringFromDate:[NSDate date]]];
    [self.view addSubview:label];

}


- (void)image{

    NSString *title = @"ishot-1.jpg";
    UIImageView *iv = [[UIImageView alloc] initWithImage:[UIImage imageNamed:title]];
    [self.view addSubview:iv];

    // 可変長配列作成
    NSMutableArray *imgBox = [NSMutableArray array];
    
    // 画像を配列に格納していく
    int i;
    for(i=1; i<10; i++){

    NSMutableString *str = [[NSMutableString alloc] initWithString:@"ishot-"];
    [str appendFormat:@"%d.jpg",i];

    // 配列に画像を格納
    [imgBox addObject:[UIImage imageNamed:str]];
    }
    
    for (id value in imgBox) {
        NSLog(@"%@",value);
    }

    iv.animationImages =imgBox;
    iv.animationDuration = 10;
    [iv startAnimating];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
