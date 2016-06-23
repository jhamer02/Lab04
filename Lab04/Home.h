//
//  Home.h
//  Lab04
//
//  Created by Andrea Rosas Pérez on 23/06/16.
//  Copyright © 2016 jjpe. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "cellTeams.h"

@interface Home : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *tblTeams;
@property (strong, nonatomic) IBOutlet UILabel *tblTeam;

@end
