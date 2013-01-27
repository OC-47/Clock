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
    NSDate *date = [NSDate date];
    formatter.dateFormat = @"yyyy/MM/dd HH:mm:ss";
    NSString *str = [formatter stringFromDate:[NSDate date]];
    [label setText:[formatter stringFromDate:date]];

    label.text = str;
    [self.view addSubview:label];

}

- (void)image{
    
    NSString *hoge = @"ishot-1.jpg";
    UIImage *img = [UIImage imageNamed:hoge];
    UIImageView *iv = [[UIImageView alloc] initWithImage:img];
    [self.view addSubview:iv];

    // 可変長配列作成
    NSMutableArray *oyatsu = [NSMutableArray array];
    
    
    // 画像を配列に格納していく
    int i;
    for(i=1; i<10; i++){

    NSMutableString *str = [[NSMutableString alloc] initWithString:@"ishot-"];
    [str appendFormat:@"%d.jpg",i];
    NSLog(@"変数str = %@",str);

    // 変数名から画像として取り込む
    UIImage *iv = [UIImage imageNamed:str];

    // 配列に画像を格納
    [oyatsu addObject:iv];
    }
    
    for (id value in oyatsu) {
        NSLog(@"%@",value);
    }

    iv.animationImages =oyatsu;
    iv.animationDuration = 10;
    [iv startAnimating];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
