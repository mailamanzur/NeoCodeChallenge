//
//  Forecast.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "Forecast.h"
#import "Weather.h"
#import "MainInfo.h"
#import "Coord.h"

@implementation Forecast

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
              @"coordForecast":@"coord",
              @"cityName":  @"name" ,
              @"mainInfo": @"main",
              @"weatherForecast":@"weather"
             };
}


+ (NSValueTransformer *)weatherForecastJSONTransformer {
    return [MTLJSONAdapter arrayTransformerWithModelClass:[Weather class]];
}

+ (NSValueTransformer *)coordForecastJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[Coord class]];
}

+ (NSValueTransformer *)mainInfoForecastJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[MainInfo class]];
}


@end
