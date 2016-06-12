//
//  AppDelegate.m
//  汉字排序
//
//  Created by 李艺真 on 16/6/12.
//  Copyright © 2016年 李艺真. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"
#import "ChineseString.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    Person *person1 = [[Person alloc] init];
    person1.name = @"你";
    person1.age = 44;
    
    Person *person2 = [[Person alloc] init];
    person2.name = @"n";
    person2.age = 4;
    
    Person *person3 = [[Person alloc] init];
    person3.name = @"啊bbbsdf";
    person3.age = 24;
    
    Person *person4 = [[Person alloc] init];
    person4.name = @"并不是对方了";
    person4.age = 14;
    
    Person *person5 = [[Person alloc] init];
    person5.name = @"你";
    person5.age = 44;
    
    Person *person6 = [[Person alloc] init];
    person6.name = @"8岁多福多寿";
    person6.age = 8;
    
    Person *person7 = [[Person alloc] init];
    person7.name = @"阿a方的";
    person7.age = 144;
    
    NSArray *persons = @[person1, person2, person3, person4, person5, person6, person7];
    
    NSArray *leterArray = [ChineseString IndexArray:persons sortKey:@"name"];
    
    NSArray *nameArray = [ChineseString LetterSortArray:persons sortKey:@"name"];
    
    for (NSString *leter in leterArray) {
        NSLog(@"%@", leter);
    }
    
    for (NSArray *persons in nameArray) {
        for (Person *person in persons) {
            NSLog(@"%@", person.name);
        }
    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
