//
//  ForecastApiManager.h
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "ApiNetworkingManager.h"

typedef void (^ForecastSuccessBlock)(id response);
typedef void (^ForecastFailureBlock)(NSString *errorMsg);

@interface ForecastApiManager : ApiNetworkingManager

+(ForecastApiManager *)sharedManager;

-(void)fetchForecast:(ForecastSuccessBlock)success
             failure:(ForecastFailureBlock)failure;


@end
