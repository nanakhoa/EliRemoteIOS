//
//  vncTiledImageViewController.h
//  EliRemoteIOS
//
//  Created by Lion User on 26/11/2012.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TiledScrollView.h"
#import "TapDetectingView.h"

@interface vncTiledImageViewController : UIViewController <TiledScrollViewDataSource, TapDetectingViewDelegate>{
    TiledScrollView *imageScrollView;
    UIScrollView    *thumbScrollView;
    UIView          *slideUpView; // Contains thumbScrollView and a label giving credit for the images.
    NSString        *currentImageName;

    BOOL thumbViewShowing;

    NSTimer *autoscrollTimer;  // Timer used for auto-scrolling.
    float autoscrollDistance;  // Distance to scroll the thumb view when auto-scroll timer fires.
}
@end
