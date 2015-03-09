//
//  MomentsTableViewController.m
//  GratitudeJournal
//
//  Created by ajchang on 3/4/15.
//  Copyright (c) 2015 ajchang. All rights reserved.
//

#import "MomentsTableViewController.h"
#import "MomentsTableViewCell.h"

@interface MomentsTableViewController ()

@property NSMutableArray *moments;

@end

@implementation MomentsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.moments = [[NSMutableArray alloc] init];
    
    //sample cell - delete
    NSDictionary *moment = @{
                             @"Text" : @"Read a good book.",
                             @"Date" : @"2/28/15"
                             };
    
    [self.moments addObject:moment];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1; //1 section for now
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.moments count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    MomentsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"momentCell" forIndexPath:indexPath];
    
    // Configure the cell...
    NSDictionary *currentMoment = [self.moments objectAtIndex:indexPath.row];
    cell.momentText = [currentMoment objectForKey:@"Text"];
    cell.momentDate = [currentMoment objectForKey:@"Date"];
    
    
    return cell;
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