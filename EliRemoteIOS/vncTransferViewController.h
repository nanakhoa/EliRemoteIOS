//
//  vncTransferViewController.h
//  EliRemoteIOS
//
//  Created by Lion User on 27/11/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface vncTransferViewController : UIViewController <UITableViewDelegate>
@property (strong, nonatomic) IBOutlet UITableView *mTableViewRemote;
@property (strong, nonatomic) IBOutlet UITableView *mTableViewLocal;
@property (strong, nonatomic) IBOutlet UILabel *mLablePathRemote;
@property (strong, nonatomic) IBOutlet UILabel *mLableDriverRemote;
@property (strong, nonatomic) IBOutlet UILabel *mLablePathLocal;

@end
