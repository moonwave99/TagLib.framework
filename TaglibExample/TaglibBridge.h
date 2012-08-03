//
//  TaglibBridge.h
//  TagLib
//
//  Created by Diego Caponera on 8/3/12.
//
//

#import <Foundation/Foundation.h>

@interface TaglibBridge : NSObject

-(NSDictionary*)read:(NSString*)path;

@end
