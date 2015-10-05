//
//  ViewController.m
//  QZFMDataBase
//
//  Created by mac on 15/10/4.
//  Copyright © 2015年 mac. All rights reserved.
//

#import "ViewController.h"
#import "SUserDB.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self enterUserTable:nil];
}


- (IBAction)enterUserTable:(id)sender {
    SUserDB * db = [[SUserDB alloc] init];
    [db createDataBase];
    
    SUser * user = [SUser new];
    user.name = @"111";
//    user.description = @"222";
    [db saveUser:user];
    
    user.name = @"222";
    //    user.description = @"222";
    [db saveUser:user];

    user.name = @"444";
    //    user.description = @"222";
    [db saveUser:user];

//    SUserTableViewController * controller =   [[SUserTableViewController alloc] initWithStyle:UITableViewStylePlain];
//    [self.navigationController pushViewController:controller animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
