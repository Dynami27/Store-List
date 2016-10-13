//
//  AddStoresListViewController.m
//  Store List
//
//  Created by Khalid Mohamed on 10/11/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "AddStoresListViewController.h"

@interface AddStoresListViewController ()

@end

@implementation AddStoresListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction) saveButtonPressed {
   Store *store=[[Store alloc]init];
    store.storeName=self.storeNameTextField.text;
    store.storeNumber=self.storeNumberTextField.text;
    //store object
    [self.delegate addStoresListViewControllerDidStoresList:store];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
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
