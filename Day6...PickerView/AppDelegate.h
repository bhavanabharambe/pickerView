//
//  AppDelegate.h
//  Day6...PickerView
//
//  Created by Student P_07 on 19/06/17.
//  Copyright © 2017 Mandar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate,UIPickerViewDelegate,UIPickerViewDataSource>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UIViewController *myViewController;
@property (strong, nonatomic) UIPickerView *myPickerView;
@property (strong, nonatomic) UIScrollView *myScroller;
@property NSArray *myArrayOfColors;

@end

