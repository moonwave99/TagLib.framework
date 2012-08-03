//
//  TaglibBridge.mm
//  TagLib
//
//  Created by Diego Caponera on 8/3/12.
//
//

#import "TaglibBridge.h"
#import <TagLib/fileref.h>
#import <TagLib/tag.h>
#import <TagLib/tstring.h>

@implementation TaglibBridge

-(NSDictionary*)read:(NSString *)path
{
    
    NSMutableDictionary* dict = [[NSMutableDictionary alloc] init];
    
    TagLib::FileRef f([path UTF8String]);

    const TagLib::Tag *tag = f.tag();
    
    if(tag){
        
        TagLib::String artist, title, album, genre, comment;
        int year, track;
        
        artist = tag->artist();
        title = tag->title();;
        album = tag->album();
        genre = tag->genre();
        comment = tag->comment();
        
        year = tag->year();
        [dict setObject:[NSNumber numberWithInt:year] forKey:@"year"];
        
        track = tag->track();
        [dict setObject:[NSNumber numberWithInt:track] forKey:@"track"];
        
        if (!artist.isNull())
            [dict setObject:[NSString stringWithUTF8String:artist.toCString(true)] forKey:@"artist"];
        
        if (!album.isNull())
            [dict setObject:[NSString stringWithUTF8String:album.toCString(true)] forKey:@"album"];
        
        if (!title.isNull())
            [dict setObject:[NSString stringWithUTF8String:title.toCString(true)] forKey:@"title"];
        
        if (!genre.isNull())
            [dict setObject:[NSString stringWithUTF8String:genre.toCString(true)] forKey:@"genre"];
    }

    
    return dict;
    
}

@end
