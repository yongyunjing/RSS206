//
//  WebViewController.h
//  RSS206
//
//  Created by Yong Yun Jing on 17/2/14.
//  Copyright (c) 2014 Yong Yun Jing. All rights reserved.
//

#import <UIKit/UIKit.h>

@class RSSEntry;

@interface WebViewController : UIViewController {
    UIWebView *_webView;
    RSSEntry *_entry;
}

@property (retain) IBOutlet UIWebView *webView;
@property (retain) RSSEntry *entry;

@end
