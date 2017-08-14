//
//  Weather.h
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "BaseMantleObject.h"

@interface Weather : BaseMantleObject

@property(nonatomic, strong)NSNumber *cityID;
@property(nonatomic, strong)NSString *mainDescription;
@property(nonatomic, strong)NSString *weatherDescription;
@property(nonatomic, strong)NSString *weatherIcon;


@end
