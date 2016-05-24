//
//  Playlist.m
//  Algorhythm
//
//  Created by Ethan Neff on 1/9/15.
//  Copyright (c) 2015 ethanneff. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist

- (instancetype)initWithIndex:(NSUInteger)index {
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        NSArray *library = musicLibrary.library;
        
        NSDictionary *playlistDictionary = library[index];
        
        _playlistTitle = [playlistDictionary objectForKey:kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        _playlistIcon = [UIImage imageNamed:[playlistDictionary objectForKey:kIcon]];
        _playlistIconLarge = [UIImage imageNamed:[playlistDictionary objectForKey:kLargeIcon]];
        _playlistArtist = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        _playlistBackgroundColor = [self rgbColorFromDictionary:[playlistDictionary objectForKey:kBackgroundColor]];
    }
    return self;
}

// helper method
- (UIColor *)rgbColorFromDictionary:(NSDictionary *)colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
