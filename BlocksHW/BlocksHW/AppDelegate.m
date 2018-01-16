//
//  AppDelegate.m
//  BlocksHW
//
//  Created by Ivan Kozaderov on 16.01.2018.
//  Copyright © 2018 Ivan Kozaderov. All rights reserved.
//

#import "AppDelegate.h"
#import "KIStudent.h"
@interface AppDelegate ()

@end

typedef NSString*(^KIBlock)(NSString* s);

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
/*
    void(^testBlock)(void)=^{
        
        NSLog(@"testBlock without params");
        
    };
    
    testBlock();
    
    NSString*(^testBlockWithParams)(NSString*) = ^(NSString* string){
        
        
        return string;
    };
    
    NSLog(@"%@",testBlockWithParams(@"testBlockWithParams"));
    
    
    KIBlock block =^(NSString* string){
        
        return string;
    };

    NSString* testString = [self testMethodWithBlock:^NSString *(NSString *s) {
        
        return s;
    }];
    NSLog(@"%@",testString);
 

    
    [self testMethodWithBlock2:^{
        
        NSLog(@"testMethodWithBlock2");
    }];
    */
    
 
    
    KIStudent* student1 = [[KIStudent alloc]init];
    student1.name = @"Vasia";
    student1.lastName = @"Petrov";
    
    KIStudent* student2 = [[KIStudent alloc]init];
    student2.name = @"Petia";
    student2.lastName = @"Ivanov";
    
    KIStudent* student3 = [[KIStudent alloc]init];
    student3.name = @"Iliya";
    student3.lastName = @"Sidorov";
    
    KIStudent* student4 = [[KIStudent alloc]init];
    student4.name = @"Fedia";
    student4.lastName = @"Gubin";
    
    KIStudent* student5 = [[KIStudent alloc]init];
    student5.name = @"Andrey";
    student5.lastName = @"Balashov";
    
    KIStudent* student6 = [[KIStudent alloc]init];
    student6.name = @"Sergey";
    student6.lastName = @"Danilov";
    
    KIStudent* student7 = [[KIStudent alloc]init];
    student7.name = @"Alexey";
    student7.lastName = @"Danilov";
    
    KIStudent* student8 = [[KIStudent alloc]init];
    student8.name = @"Grigoriy";
    student8.lastName = @"Rasputin";
    
    KIStudent* student9 = [[KIStudent alloc]init];
    student9.name = @"Misha";
    student9.lastName = @"Korin";
    
    KIStudent* student10 = [[KIStudent alloc]init];
    student10.name = @"Sasha";
    student10.lastName = @"Maksimov";
    
    NSArray* arrayOfStudents = [NSArray arrayWithObjects:student1,student2,student3,student4
                                ,student5,student6,student7,student8,student9,student10, nil];
    
    NSArray* sortedArray = [arrayOfStudents sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        
        KIStudent* s1 = (KIStudent*)obj1;
        KIStudent* s2 = (KIStudent*)obj2;

        
        if([s1.lastName compare:s2.lastName] == NSOrderedSame){
            
            return [s1.name compare:s2.name];
        }
 
            return [s1.lastName compare:s2.lastName];
    
    }];
    
    for (KIStudent *stud in sortedArray) {
        NSLog(@"%@%@",stud.name,stud.lastName);
    }
    
    return YES;
}

-(NSString*) testMethodWithBlock:(KIBlock)block{
    
    NSString* string = block(@"testString");
    
    return string;
};

-(void) testMethodWithBlock2:(void (^) (void)) block{
    
    block();
    

};


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
