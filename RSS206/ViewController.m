//
//  ViewController.m
//  RSS206
//
//  Created by Yong Yun Jing on 18/2/14.
//  Copyright (c) 2014 Yong Yun Jing. All rights reserved.
//

#import "ViewController.h"
#import "RSSEntry.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize allEntries = _allEntries;

- (void)addRows {
    RSSEntry *entry1 = [[RSSEntry alloc] initWithBlogTitle:@"1"
                                               articleTitle:@"1"
                                                 articleUrl:@"1"
                                                articleDate:[NSDate date]];
    RSSEntry *entry2 = [[RSSEntry alloc] initWithBlogTitle:@"2"
                                               articleTitle:@"2"
                                                 articleUrl:@"2"
                                                articleDate:[NSDate date]];
    RSSEntry *entry3 = [[RSSEntry alloc] initWithBlogTitle:@"3"
                                               articleTitle:@"3"
                                                 articleUrl:@"3"
                                                articleDate:[NSDate date]];
    RSSEntry *entry4 = [[RSSEntry alloc] initWithBlogTitle:@"Test" articleTitle:nil articleUrl:nil articleDate:nil];
    
    [_allEntries insertObject:entry1 atIndex:0];
    [_allEntries insertObject:entry2 atIndex:0];
    [_allEntries insertObject:entry3 atIndex:0];
    [_allEntries insertObject:entry4 atIndex:0];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Feeds";
    self.allEntries = [NSMutableArray array];
    [self addRows];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_allEntries count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    RSSEntry *entry = [_allEntries objectAtIndex:indexPath.row];
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setTimeStyle:NSDateFormatterMediumStyle];
    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
    NSString *articleDateString = [dateFormatter stringFromDate:entry.articleDate];
    
    cell.textLabel.text = entry.articleTitle;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%@ - %@", articleDateString, entry.blogTitle];
    
    return cell;
}
@end
