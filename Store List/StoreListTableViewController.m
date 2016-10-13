//
//  StoreListTableViewController.m
//  Store List
//
//  Created by Khalid Mohamed on 10/10/16.
//  Copyright © 2016 Khalid Mohamed. All rights reserved.
//

#import "StoreListTableViewController.h"

@interface StoreListTableViewController ()

@end

@implementation StoreListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    stores= [[NSMutableArray alloc]init];
    Store *store1=[[Store alloc]init];
    store1.storeName=@"Brooklyn Industries";
    store1.storeNumber=@"1";
    store1.storeItems=[[NSMutableArray alloc]init];
    [stores addObject:store1];
    
    Store *store2=[[Store alloc]init];
    store2.storeName=@"Kroger";
    store2.storeNumber = @"2";
    store2.storeItems=[[NSMutableArray alloc]init];
    [stores addObject:store2];
    
    Store *store3=[[Store alloc]init];
    store3.storeName=@"Macys";
    store3.storeNumber=@"3";
    store3.storeItems=[[NSMutableArray alloc]init];
    [stores addObject:store3];
    
    Store *store4=[[Store alloc]init];
    store4.storeName=@"Nike";
    store4.storeNumber=@"4";
    store4.storeItems=[[NSMutableArray alloc]init];
    [stores addObject:store4];
   
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
        
        return stores.count;
    
    }
    
-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1; 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell" forIndexPath:indexPath];
    
    
    Store *store = stores[indexPath.row];
    
    
    cell.textLabel.text = store.storeName;
    cell.detailTextLabel.text= store.storeNumber;
    return cell;

    
    // Configure the cell...
    
    return cell;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
   
    if([segue.identifier isEqualToString:@"showitemsinstore"]) {
    NSIndexPath *indexPath = self.tableView.indexPathForSelectedRow;
    Store *store= stores  [indexPath.row];
    StoreDetailsTableViewController *controller= segue.destinationViewController;
    controller.selectedStore = store;
        
    } else {
        AddStoresListViewController *addStoresController=segue.destinationViewController;
        addStoresController.delegate = self;
    }

}
-(void) addStoresListViewControllerDidStoresList:(Store *)store {
    [stores addObject:store];
    [self.tableView reloadData];
    
}

        
/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
