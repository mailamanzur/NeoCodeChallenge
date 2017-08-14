//
//  NetworkingConstants.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 13/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "NetworkingConstants.h"

# pragma mark - Base
NSString *const kApiBaseURL = @"http://api.openweathermap.org/data/2.5/%@";

# pragma mark - Forecast
NSString *const kApiKey = @"299455bf5a827f9660134f3d2e47af60";


# pragma mark - HTTP Status code
NSString *const kBadRequestStatus = @"400";
NSString *const kUnauthorizedStatus = @"401";
NSString *const kForbiddenStatus = @"403";
NSString *const kNotFoundStatus = @"404";
NSString *const kConflictStatus = @"409";
NSString *const kPreconditionFailedStatus = @"412";
NSString *const kInternalServerErrorStatus = @"500";
NSString *const kServiceUnavailableStatus = @"503";


