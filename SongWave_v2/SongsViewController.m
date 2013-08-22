//
//  SongsViewController.m
//  SongWave_v2
//
//  Created by Brian Dinh on 8/19/13.
//  Copyright (c) 2013 Brian Dinh. All rights reserved.
//

#import "SongsViewController.h"
#import "SWRevealViewController.h"
#import "SideBarViewController.h"
#import "UIColor+FlatUI.h"
#import "UIBarButtonItem+FlatUI.h"

@interface SongsViewController (){
    
}

@end

@implementation SongsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Songs";
    
    
    
    UIBarButtonItem *sideBarButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"menu"
                                   style:UIBarButtonItemStyleBordered
                                   target:self
                                   action:@selector(flipView)];
    self.navigationItem.leftBarButtonItem = sideBarButton;
    
    [self.navigationItem.leftBarButtonItem configureFlatButtonWithColor:[UIColor alizarinColor]
                                                       highlightedColor:[UIColor pomegranateColor]
                                                           cornerRadius:3];

    
    // Set the side bar button action. When it's tapped, it'll show up the sidebar.
    sideBarButton.target = self.revealViewController;
    sideBarButton.action = @selector(revealToggle:);
    //sideBarButton.image = [UIImage imageNamed:@"sidebarbutton.png"];
    // Set the gesture
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
