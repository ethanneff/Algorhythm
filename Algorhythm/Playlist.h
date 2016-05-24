//
//  Playlist.h
//  Algorhythm
//
//  Created by Ethan Neff on 1/9/15.
//  Copyright (c) 2015 ethanneff. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Playlist : NSObject

@property (nonatomic, strong) NSString *playlistTitle;
@property (nonatomic, strong) NSString *playlistDescription;
@property (nonatomic, strong) UIImage *playlistIcon;
@property (nonatomic, strong) UIImage *playlistIconLarge;
@property (nonatomic, strong) NSArray *playlistArtist;
@property (nonatomic, strong) UIColor *playlistBackgroundColor;

- (instancetype)initWithIndex:(NSUInteger)index;

@end
