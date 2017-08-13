//
//  NetworkingConstants.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 13/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "NetworkingConstants.h"

# pragma mark - Base
NSString *const kApiBaseURL = @"http://api-public.guidebox.com/v1.43/BR/rKJwmLEQB3qOouvHckEwjDrsGqKWpHgE/%@";

# pragma mark - Movies
NSString *const kApiMoviesList = @"movies/all/%d/%d/all/all";
NSString *const kApiMovieDetail = @"movie/%@";

# pragma mark - HTTP Status code
NSString *const kBadRequestStatus = @"400";
NSString *const kUnauthorizedStatus = @"401";
NSString *const kForbiddenStatus = @"403";
NSString *const kNotFoundStatus = @"404";
NSString *const kConflictStatus = @"409";
NSString *const kPreconditionFailedStatus = @"412";
NSString *const kInternalServerErrorStatus = @"500";
NSString *const kServiceUnavailableStatus = @"503";


