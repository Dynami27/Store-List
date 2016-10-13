//
//  StoreDetailsTableViewController.m
//  Store List
//
//  Created by Khalid Mohamed on 10/10/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "StoreDetailsTableViewController.h"

@interface StoreDetailsTableViewController ()

@end

@implementation StoreDetailsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title= [NSString stringWithFormat:@"%@:%@",self.selectedStore.storeName,self.selectedStore.storeNumber];
   
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return [self.selectedStore.storeItems count];
}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    StoreItemsViewController *storeItemsViewController = segue.destinationViewController;
    storeItemsViewController.delegate =self;
}
-(void) addStoreItemsVireControllerDidAddItem:(StoreItem *)storeItem {
    [self.selectedStore.storeItems addObject:storeItem];
    
    [self.tableView reloadData];
    
}
-(UITableView *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    StoreItem *storeItem= self.selectedStore.storeItems[indexPath.row];
    cell.textLabel.text= storeItem.name;
    return cell;
    
}



    @end

