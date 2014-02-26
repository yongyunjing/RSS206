//
//  RootViewController.h
//  RSS206
//
//  Created by Yong Yun Jing on 17/2/14.
//  Copyright (c) 2014 Yong Yun Jing. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WebViewController;

@interface RootViewController : UITableViewController {
    NSOperationQueue *_queue;
    NSArray *_feeds;
    NSMutableArray *_allEntries;
    WebViewController *_webViewController;
}

@property (retain) NSOperationQueue *queue;
@property (retain) NSArray *feeds;
@property (retain) NSMutableArray *allEntries;
@property (retain) WebViewController *webViewController;

@end
