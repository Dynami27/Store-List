//
//  StoreItemsViewController.m
//  Store List
//
//  Created by Khalid Mohamed on 10/12/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "StoreItemsViewController.h"

@interface StoreItemsViewController ()

@end

@implementation StoreItemsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
-(IBAction) saveButtonPressed {
    StoreItem *storeItem = [[StoreItem alloc]init];
    storeItem.name=self.addstoreItemTextField.text;
    
    [self.delegate addStoreItemsVireControllerDidAddItem:storeItem];
    
    [self dismissViewControllerAnimated:YES completion:nil];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

    

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
