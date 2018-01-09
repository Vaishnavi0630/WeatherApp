//
//  SecondViewController.h
//  WheatherApp
//
//  Created by Student-12 on 11/09/17.
//  Copyright © 2017 vaishnavi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *headlbl;
@property (weak, nonatomic) IBOutlet UILabel *overviewlbl;
@property (weak, nonatomic) IBOutlet UILabel *latlbl;
@property (weak, nonatomic) IBOutlet UILabel *longlbl;
@property (weak, nonatomic) IBOutlet UILabel *presslbl;
@property (weak, nonatomic) IBOutlet UILabel *templbl;
@property (weak, nonatomic) IBOutlet UILabel *humlbl;


@property(nonatomic,retain)NSString *tempstr,*tempcity;

@property(nonatomic,retain)NSMutableData *buffer;

@end
