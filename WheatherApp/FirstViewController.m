//
//  FirstViewController.m
//  WheatherApp
//
//  Created by Student-12 on 11/09/17.
//  Copyright © 2017 vaishnavi. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"master.jpg"]];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)check:(id)sender
{
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    
    SecondViewController *secondvc =[story instantiateViewControllerWithIdentifier:@"svc"];
    
    NSString *actualstr=[NSString stringWithFormat:@"https://api.apixu.com/v1/current.json?key=3c694b0bfc164b019c2122309170809&q=%@",_citynametf.text];
    
    secondvc.tempstr=actualstr;
    

    
    [self.navigationController pushViewController:secondvc animated:YES];
    
    secondvc.tempcity=_citynametf.text;

}
@end
