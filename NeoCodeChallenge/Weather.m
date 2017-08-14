//
//  Weather.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "Weather.h"

@implementation Weather

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
           @"cityID":@"id" ,
           @"mainDescription":  @"main" ,
           @"weatherDescription": @"description",
           @"weatherIcon":  @"icon"
             };
}



@end
