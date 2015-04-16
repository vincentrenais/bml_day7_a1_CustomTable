//
//  DetailViewController.h
//  bml_day2_CustomTable
//
//  Created by Vincent Renais on 2015-04-16.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong,nonatomic) IBOutlet UILabel *recipeLabel;
@property (strong, nonatomic) NSString *recipeName;

@end
