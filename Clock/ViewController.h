//
//  ViewController.h
//  Clock
//
//  Created by Miwa Oshiro on 2013/01/26.
//  Copyright (c) 2013年 edu.stanford.cs193p.oshiro. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSTimer *myTicket;
}
- (void)showDate;
@end
