//
//  AppDelegate.m
//  TaglibExample
//
//  Created by Diego Caponera on 8/3/12.
//
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window, textField;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{

    bridge = [[TaglibBridge alloc] init];
    
}

-(IBAction)openFile:(id)sender
{
    
    NSOpenPanel *panel;
    NSArray* fileTypes = [[NSArray alloc] initWithObjects:@"mp3", @"flac", nil];
    panel = [NSOpenPanel openPanel];
    [panel setFloatingPanel:YES];
    [panel setCanChooseDirectories:NO];
    [panel setCanChooseFiles:YES];
    [panel setAllowsMultipleSelection:NO];
    [panel setAllowedFileTypes:fileTypes];

    if([panel runModal] == NSOKButton){
        
        NSDictionary* meta = [bridge read: [[panel URL] path]];
        
        [self.textField setStringValue:[meta description]];
        
    }
    
}

@end
