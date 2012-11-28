//
//  vncTransferViewController.m
//  EliRemoteIOS
//
//  Created by Lion User on 27/11/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "vncTransferViewController.h"

@implementation vncTransferViewController
@synthesize mTableViewRemote;
@synthesize mTableViewLocal;
@synthesize mLablePathRemote;
@synthesize mLableDriverRemote;
@synthesize mLablePathLocal;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setMTableViewRemote:nil];
    [self setMTableViewLocal:nil];
    [self setMLablePathRemote:nil];
    [self setMLableDriverRemote:nil];
    [self setMLablePathLocal:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
