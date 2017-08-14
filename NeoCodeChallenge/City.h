//
//  City.h
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "BaseMantleObject.h"

@interface City : BaseMantleObject
@property(nonatomic, strong)NSNumber *cityID;
@property(nonatomic, strong)NSString *cityName;
@property(nonatomic, strong)NSString *country;

@end
