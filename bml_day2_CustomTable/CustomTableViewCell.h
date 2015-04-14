//
//  CustomTableViewCell.h
//  bml_day2_CustomTable
//
//  Created by Vincent Renais on 2015-04-14.
//  Copyright (c) 2015 Vincent Renais. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (nonatomic,weak)IBOutlet UILabel *nameLabel;
@property (nonatomic,weak)IBOutlet UILabel *prepTimeLabel;
@property (nonatomic,weak)IBOutlet UIImageView *thumbnailImageView;


@end
