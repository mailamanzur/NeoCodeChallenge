//
//  BaseMantleObject.h
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 13/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface BaseMantleObject : MTLModel<MTLJSONSerializing>

+ (NSDictionary *)JSONKeyPathsByPropertyKey;
+(instancetype)parse:(NSDictionary*)dc error:(NSError**)error;
-(NSDictionary*)asDictError:(NSError**)error;

+(NSArray*)asArrayOfDictFromModelArray:(NSArray*)objects error:(NSError**)error;
+(NSArray*)parseArray:(NSArray*)objs error:(NSError**)error;



@end
