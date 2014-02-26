//
//  GDataXMLElement-Extras.h
//  RSS206
//
//  Created by Yong Yun Jing on 17/2/14.
//  Copyright (c) 2014 Yong Yun Jing. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GDataXMLNode.h"

@interface GDataXMLElement (Extras)

- (GDataXMLElement *)elementForChild:(NSString *)childName;
- (NSString *)valueForChild:(NSString *)childName;

@end
