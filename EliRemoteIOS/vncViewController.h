//
//  vncViewController.h
//  EliRemoteIOS
//
//  Created by Lion User on 21/11/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface vncViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtPassword;
@property (strong, nonatomic) IBOutlet UILabel *lblStatus;
- (IBAction)ConnectButtonClicked:(id)sender;

@end
