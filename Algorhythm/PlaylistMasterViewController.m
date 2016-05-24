//
//  ViewController.m
//  Algorhythm
//
//  Created by Ethan Neff on 1/9/15.
//  Copyright (c) 2015 ethanneff. All rights reserved.
//


#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()

@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // through each items of the IBOutletCollection
    for (NSUInteger index = 0; index < self.playlistImageViews.count; index++) {
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        
        UIImageView *playlistImageView =  self.playlistImageViews[index];
        playlistImageView.image = playlist.playlistIcon;
        playlistImageView.backgroundColor = playlist.playlistBackgroundColor;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// tap gesture recognizer
- (IBAction)showPlaylistDetail:(id)sender {
    // call prepareForSegue
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        UIImageView *playlistImageView = (UIImageView *)[sender view];
        if([self.playlistImageViews containsObject:playlistImageView]) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            // pass data to the next view contorller
            PlaylistDetailViewController *playlistDetailController =  (PlaylistDetailViewController *)segue.destinationViewController;
            
            // cannot modify the UIlabel directly, b/c UI elements are not loaded at init... but properties are
            playlistDetailController.playlist = [[Playlist alloc] initWithIndex:index];
            
        }
    }
}


@end
