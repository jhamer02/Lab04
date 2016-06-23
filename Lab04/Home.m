//
//  Home.m
//  Lab04
//
//  Created by Andrea Rosas Pérez on 23/06/16.
//  Copyright © 2016 jjpe. All rights reserved.
//

#import "Home.h"


@interface Home ()

@property NSMutableArray *teamsNames;
@property NSMutableArray *teamsImgs;


@end


@implementation Home

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//-------------------------------------------------------------------------------
- (void)initController {
    self.teamsNames   = [[NSMutableArray alloc] initWithObjects: @"América", @"Atlas", @"Jaguares", @"Chivas", @"Cruz Azul", @"León", @"Monarcas", @"Tuzos", @"Pumas", @"Gallos", @"Rayados", @"Santos", @"Tigres", @"Toluca", @"Xolos", @"Necaxa", nil];
    
    self.teamsImgs   = [[NSMutableArray alloc] initWithObjects: @"america.png", @"atlas.png", @"chiapas.png",@"chivas.png", @"cruzazul.png", @"leon.png", @"monarcas.png",@"pachuca.png",@"pumas.png",@"queretaro.png",@"rayados.png",@"santos.png",@"tigres.png",@"toluca.png",@"xolos.png",@"necaxa.png", nil];
    


}

/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.teamsNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellTeams *cell = (cellTeams *)[tableView dequeueReusableCellWithIdentifier:@"cellTeams"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellTeams" bundle:nil] forCellReuseIdentifier:@"cellTeams"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellTeams"];
    }
    //Fill cell with info from arrays
    cell.lblName.text       = self.teamsNames[indexPath.row];
    cell.imgTeam.image   = [UIImage imageNamed:self.teamsImgs[indexPath.row]];
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
    switch (indexPath.row) {
        case 0:
            self.tblTeam.text = @"América";
            break;
        case 1:
            self.tblTeam.text = @"Atlas";
            break;
        case 2:
            self.tblTeam.text = @"Jaguares";
            break;
        case 3:
            self.tblTeam.text = @"Chivas";
            break;
        case 4:
            self.tblTeam.text = @"Cruz Azul";
            break;
        case 5:
            self.tblTeam.text = @"León";
            break;
        case 6:
            self.tblTeam.text = @"Monarcas";
            break;
        case 7:
            self.tblTeam.text = @"Tuzos";
            break;
        case 8:
            self.tblTeam.text = @"Pumas";
            break;
        case 9:
            self.tblTeam.text = @"Gallos";
            break;
        case 10:
            self.tblTeam.text = @"Rayados";
            break;
        case 11:
            self.tblTeam.text = @"Santos";
            break;
        case 12:
            self.tblTeam.text = @"Tigres";
            break;
        case 13:
            self.tblTeam.text = @"Toluca";
            break;
        case 14:
            self.tblTeam.text = @"Xolos";
            break;
        case 15:
            self.tblTeam.text = @"Necaxa";
            break;
        default:
            break;
    }
}

@end
