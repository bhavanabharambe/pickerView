//
//  AppDelegate.m
//  Day6...PickerView
//
//  Created by Student P_07 on 19/06/17.
//  Copyright © 2017 Mandar. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window=[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    self.window.backgroundColor=[UIColor whiteColor];
    self.myViewController=[[UIViewController alloc]init];
    self.window.rootViewController=self.myViewController;
    self.myViewController.view.backgroundColor=[UIColor redColor];

    
    self.myPickerView=[[UIPickerView alloc]init];
    self.myScroller=[[UIScrollView alloc]init];
    
    self.myScroller.frame=self.myViewController.view.bounds;
    self.myScroller.backgroundColor=[UIColor yellowColor];
    self.myScroller.contentSize=CGSizeMake(280*2, 480*2);
    [self.myScroller showsVerticalScrollIndicator];
    
    self.myPickerView.delegate=self;
    self.myPickerView.dataSource=self;
    
    self.myArrayOfColors=[NSArray arrayWithObjects:@"redColor",@"blueColor",@"greenColor", nil];
    self.myPickerView.frame=CGRectMake(20, 100, 300, 500);
    self.myPickerView.backgroundColor=[UIColor colorWithRed:1 green:4 blue:2 alpha:0.5];
    
    [self.myScroller addSubview:self.myPickerView];
    [self.myViewController.view addSubview:self.myScroller];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    /*NSString *colorObject=[self.myArrayOfColors objectAtIndex:row];
    SEL color=NSSelectorFromString(colorObject);
    UIColor* tColor = nil;
    if ([UIColor respondsToSelector: color])
        tColor  = [UIColor performSelector:color];
    
    self.myScroller.backgroundColor=tColor;*/
    
    //Change color of scroll View::
    switch (row) {
        case 0:
            self.myScroller.backgroundColor=[UIColor redColor];
                        break;
        case 1:
            self.myScroller.backgroundColor=[UIColor blueColor];
            break;
        
        case 2:
            self.myScroller.backgroundColor=[UIColor greenColor];
            break;
    }
    //NSLog(@"You Selected color %@",colorObject);
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return self.myArrayOfColors.count;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString *color;
    
    color=[self.myArrayOfColors objectAtIndex:row];
    NSLog(@"%@",color);
    return color;
    
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
