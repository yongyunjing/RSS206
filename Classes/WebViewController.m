//
//  WebViewController.m
//  RSS206
//
//  Created by Yong Yun Jing on 17/2/14.
//  Copyright (c) 2014 Yong Yun Jing. All rights reserved.
//

#import "WebViewController.h"
#import "RSSEntry.h"

@implementation WebViewController
@synthesize webView = _webView;
@synthesize entry = _entry;

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)viewWillAppear:(BOOL)animated {
    
    NSURL *url = [NSURL URLWithString:_entry.articleUrl];    
    [_webView loadRequest:[NSURLRequest requestWithURL:url]];
    
}

- (void)viewWillDisappear:(BOOL)animated {
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"about:blank"]]];
    
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [_entry release];
    _entry = nil;
    [_webView release];
    _webView = nil;
    [super dealloc];
}


@end
