//
//  PlaylistDetailViewController.m
//  Algorhythm
//
//  Created by Ethan Neff on 1/9/15.
//  Copyright (c) 2015 ethanneff. All rights reserved.
//

#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@implementation PlaylistDetailViewController

-(void)viewDidLoad {
    [super viewDidLoad];
    
    if (self.playlist) {
        _playlistCoverImage.image = self.playlist.playlistIconLarge;
        _playlistCoverImage.backgroundColor = self.playlist.playlistBackgroundColor;
        _playlistTitle.text = self.playlist.playlistTitle;
        _playlistDescription.text = self.playlist.playlistDescription;
        _playlistArtist0.text = self.playlist.playlistArtist[0];
        _playlistArtist1.text = self.playlist.playlistArtist[1];
        _playlistArtist2.text = self.playlist.playlistArtist[2];
    }
}


@end
