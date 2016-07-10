//
//  ViewController.m
//  MMDrawerControllerDemo
//
//  Created by Tony Zhang on 16/7/8.
//  Copyright © 2016年 Tony Zhang. All rights reserved.
//

#import "ViewController.h"
#import "UserViewController.h"
#import "AppDelegate.h"
#import <MMDrawerController.h>

typedef void (^RightBarButtonActionBlock) (void);
typedef void (^LeftBarButtonActionBlock) (void);

@interface ViewController ()

@property (nonatomic, copy) RightBarButtonActionBlock rightBarButtonAction;
@property (nonatomic, copy) LeftBarButtonActionBlock leftBarButtonAction;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
     self.view.backgroundColor = [UIColor colorWithRed:30/256.0 green:30/256.0 blue:30/256.0 alpha:1];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Left"
                                                                             style:UIBarButtonItemStylePlain
                                                                            target:self
                                                                            action:@selector(presentLeftMenuViewController)];
  
}


-(void)presentLeftMenuViewController{

    AppDelegate *delegate = [UIApplication sharedApplication].delegate;
    [delegate.drawerController openDrawerSide:MMDrawerSideLeft animated:YES completion:^(BOOL finished) {
        
    }];

}





@end
