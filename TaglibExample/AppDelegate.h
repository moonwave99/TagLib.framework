//
//  AppDelegate.h
//  TaglibExample
//
//  Created by Diego Caponera on 8/3/12.
//
//

#import <Cocoa/Cocoa.h>
#import "TaglibBridge.h"

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    
    TaglibBridge* bridge;
    
}

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *textField;

-(IBAction)openFile:(id)sender;

@end
