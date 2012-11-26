//
//  vncServerListViewController.m
//  EliRemoteIOS
//
//  Created by Lion User on 22/11/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "vncServerListViewController.h"
#import "MyTreeViewCell.h"

@implementation vncServerListViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	treeNode = [[MyTreeNode alloc] initWithValue:@"Root"];
	MyTreeNode *node1 = [[MyTreeNode alloc] initWithValue:@"Node1"];
	[treeNode addChild:node1];
	
	MyTreeNode *node1a = [[MyTreeNode alloc] initWithValue:@"Node1a"];
	MyTreeNode *node1b = [[MyTreeNode alloc] initWithValue:@"Node1b"];
	[node1 addChild:node1a];
	[node1 addChild:node1b];
	
	MyTreeNode *node1a1 = [[MyTreeNode alloc] initWithValue:@"Node1a1"];
	[node1a addChild:node1a1];
	
	MyTreeNode *node1b1 = [[MyTreeNode alloc] initWithValue:@"Node1b1"];
	MyTreeNode *node1b2 = [[MyTreeNode alloc] initWithValue:@"Node1b2"];
	MyTreeNode *node1b3 = [[MyTreeNode alloc] initWithValue:@"Node1b3"];
	
	[node1b addChild:node1b1];
	[node1b addChild:node1b2];
	[node1b addChild:node1b3];
	node1b.inclusive = NO;
	
	MyTreeNode *node2 = [[MyTreeNode alloc] initWithValue:@"Node2"];
	[treeNode addChild:node2];
	
	MyTreeNode *node2a = [[MyTreeNode alloc] initWithValue:@"Node2a"];
	[node2 addChild:node2a];
	
	MyTreeNode *node2a1 = [[MyTreeNode alloc] initWithValue:@"Node2a1"];
	[node2a addChild:node2a1];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    //return (interfaceOrientation == UIInterfaceOrientationPortrait);
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [treeNode descendantCount];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
	
   	MyTreeNode *node = [[treeNode flattenElements] objectAtIndex:indexPath.row + 1];
	MyTreeViewCell *cell = [[MyTreeViewCell alloc] initWithStyle:UITableViewCellStyleDefault
												 reuseIdentifier:CellIdentifier 
														   level:[node levelDepth] - 1 
														expanded:node.inclusive];   
	cell.valueLabel.text = node.value;
	
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    MyTreeNode *node = [[treeNode flattenElements] objectAtIndex:indexPath.row + 1];
	if (!node.hasChildren) return;
	
	node.inclusive = !node.inclusive;	
	[treeNode flattenElementsWithCacheRefresh:YES];
	[tableView reloadData];
}


@end
