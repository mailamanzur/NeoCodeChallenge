//
//  City.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "City.h"

@implementation City

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"cityID": @"id" ,
            @"cityName":  @"name" ,
             @"country" : @"country"
             };
}


@end
