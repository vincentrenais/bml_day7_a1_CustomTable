//
//  CustomTableViewController.m
//  bml_day2_CustomTable
//
//  Created by Vincent Renais on 2015-04-14.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController
{
    NSArray *recipeNames;
    NSArray *recipeImages;
    NSArray *recipePrepTime;
    BOOL recipeChecked[16];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    recipeNames = @[@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini"];
    
    recipePrepTime = @[@"30Min", @"36Min", @"54Min", @"25Min", @"54Min", @"25Min", @"36Min", @"30Min", @"54Min", @"30Min", @"54Min", @"36Min", @"54Min", @"36Min", @"54Min", @"36Min"];
    
    recipeImages = @[@"egg_benedict.jpg", @"mushroom_risotto.jpg", @"full_breakfast.jpg", @"hamburger.jpg", @"ham_and_egg_sandwich.jpg", @"creme_brelee.jpg", @"white_chocolate_donut.jpg", @"starbucks_coffee.jpg", @"vegetable_curry.jpg", @"instant_noodle_with_egg.jpg", @"noodle_with_bbq_pork.jpg", @"japanese_noodle_with_pork.jpg", @"green_tea.jpg", @"thai_shrimp_cake.jpg", @"angry_birds_cake.jpg", @"ham_and_cheese_panini.jpg"];

}


    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [recipeNames count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *cellIdentifier = @"Cell";
    
    CustomTableViewCell *cell = (CustomTableViewCell *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.nameLabel.text = [recipeNames objectAtIndex:indexPath.row];
    
    cell.thumbnailImageView.image = [UIImage imageNamed:[recipeImages objectAtIndex:indexPath.row]];
    
    cell.prepTimeLabel.text = [recipePrepTime objectAtIndex:indexPath.row];
    
    // Configure the cell...
    
    if (recipeChecked[indexPath.row]) {
        cell.accessoryType = UITableViewCellAccessoryCheckmark;
    } else {
        cell.accessoryType = UITableViewCellAccessoryNone;
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *selectedRecipe = [recipeNames objectAtIndex:indexPath.row];
    
    UIAlertView *messageAlert = [[UIAlertView alloc]initWithTitle:@"Row Selected" message:selectedRecipe delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    // Display message alert
    
    [messageAlert show];
    
    // Code to toggle the checkmark
    
        UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
        if (!recipeChecked[indexPath.row]) {
    
            cell.accessoryType = UITableViewCellAccessoryCheckmark;
    
            [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
            recipeChecked[indexPath.row] = YES;
        
        } else {
        
            cell.accessoryType = UITableViewCellAccessoryNone;
        
            [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
            recipeChecked[indexPath.row] = NO;
    }
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
