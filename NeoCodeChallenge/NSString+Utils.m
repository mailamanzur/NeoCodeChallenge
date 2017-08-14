//
//  NSString+Utils.m
//  NeoCodeChallenge
//
//  Created by Maila  Manzur on 13/08/2017.
//  Copyright © 2017 Maila  Manzur. All rights reserved.
//

#import "NSString+Utils.h"

@implementation NSString (Utils)

-(NSString*)asEscapedURL {
    NSString *escapedURL = [[self stringByReplacingOccurrencesOfString:@" "  withString:@"+"] removeSpecialChars];
    return escapedURL;
}

-(NSString*)removeSpecialChars{
    NSString *sanitizedText = [[NSString alloc] initWithData:[self dataUsingEncoding:NSASCIIStringEncoding allowLossyConversion:YES] encoding:NSASCIIStringEncoding];
    return sanitizedText;
}


@end
