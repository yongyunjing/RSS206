//
//  ViewController.h
//  RSS206
//
//  Created by Yong Yun Jing on 18/2/14.
//  Copyright (c) 2014 Yong Yun Jing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>
{
    NSMutableArray *_allEntries;
}

@property (retain) NSMutableArray *allEntries;

@end
