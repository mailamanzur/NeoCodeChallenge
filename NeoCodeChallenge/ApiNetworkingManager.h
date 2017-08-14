//
//  ApiNetworkingManager.h
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 13/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

typedef void (^SuccessBlock)(NSURLSessionTask *operation, id responseObject);
typedef void (^FailureBlock)(NSURLSessionTask *operation, NSError *error, NSString *customErrorMessage);

@interface ApiNetworkingManager : NSObject

-(void)setupWithHttps;

-(void) GET:(NSString*)url params:(NSDictionary*)params success:(SuccessBlock)success
    failure:(FailureBlock)failure;

-(void) POST:(NSString*)url params:(NSDictionary*)params success:(SuccessBlock)success
     failure:(FailureBlock)failure;

-(void) PUT:(NSString*)url params:(NSDictionary*)params success:(SuccessBlock)success
    failure:(FailureBlock)failure;

-(void) DELETE:(NSString*)url params:(NSDictionary*)params success:(SuccessBlock)success
       failure:(FailureBlock)failure;

@end
