//
//  Forecast.h
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "BaseMantleObject.h"

@class Coord;

@interface Forecast : BaseMantleObject

@property(strong, nonatomic)NSArray *weatherForecast;
@property(strong, nonatomic)Coord *coordForecast;
@property(nonatomic, strong)NSString *cityName;

@end
