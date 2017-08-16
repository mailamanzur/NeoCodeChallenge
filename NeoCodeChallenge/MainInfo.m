//
//  MainInfo.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 17/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "MainInfo.h"

@implementation MainInfo

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
              @"temp":@"temp",
             @"humidity" : @"humidity"
             };
}

@end
