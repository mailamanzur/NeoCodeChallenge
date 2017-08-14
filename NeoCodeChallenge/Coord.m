//
//  Coord.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "Coord.h"

@implementation Coord


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"lon" : @"lon",
             @"lat" : @"lat"
             };
}
//
//"coord":{
//    "lon":145.77,
//    "lat":-16.92
//},


@end
