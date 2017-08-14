//
//  ForecastApiManager.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 14/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "ForecastApiManager.h"
#import "NetworkingConstants.h"
#import "Forecast.h"
#import "Weather.h"
#import "City.h"
#import "Coord.h"

@implementation ForecastApiManager

+(ForecastApiManager *)sharedManager {
    static ForecastApiManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

-(id)init {
    if (self = [super init]) {
        [self setupWithHttps];
    }
    return self;
}

#pragma mark - GET Methods
-(void)fetchForecast:(ForecastSuccessBlock)success
                    failure:(ForecastFailureBlock)failure {
    
    NSDictionary *params = @{
                             @"APPID" : kApiKey,
                             @"id" : @"2950159"
                             };
    
   // NSString *finalUrl = [NSString stringWithFormat:kApiBaseURL,@"Weather"];
    
    NSString *finalUrl = [NSString stringWithFormat:kApiBaseURL,@"weather"];
        
    [self GET:finalUrl params:params success:^(NSURLSessionTask *operation, id responseObject) {
        NSError *error;
        
        Forecast *response = [Forecast parse: responseObject error:&error];
        if (response)
        success(response);
        else
        success(nil);
        
    } failure:^(NSURLSessionTask *operation, NSError *error, NSString *customErrorMessage) {
        failure([error localizedDescription]);
    }];
}




@end
