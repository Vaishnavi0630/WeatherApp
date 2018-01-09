//
//  SecondViewController.m
//  WheatherApp
//
//  Created by Student-12 on 11/09/17.
//  Copyright © 2017 vaishnavi. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"secondview.jpg"]];
    
     _headlbl.text=[NSString stringWithFormat:@"This is Wheather Information of %@",_tempcity];
    
    _buffer=[[NSMutableData alloc]init];
    
    NSURLRequest *request=[[NSURLRequest alloc]initWithURL:[NSURL URLWithString:_tempstr]];
    [NSURLConnection connectionWithRequest:request delegate:self];
    

    
    // Do any additional setup after loading the view.
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    [_buffer setLength:0];
}
-(void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    [_buffer appendData:data];
}
-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSDictionary *jsondic=[NSJSONSerialization JSONObjectWithData:_buffer options:NSJSONReadingAllowFragments error:nil];
    
    NSDictionary *locdic=[jsondic objectForKey:@"location"];
    
    
    _latlbl.text=[[locdic objectForKey:@"lat"]description];
    _longlbl.text=[[locdic objectForKey:@"lon"]description];
    
    
    NSDictionary *currentdic=[jsondic objectForKey:@"current"];
    
    _templbl.text=[[currentdic objectForKey:@"temp_c"]description];
    _humlbl.text=[[currentdic objectForKey:@"humidity"]description];
    _presslbl.text=[[currentdic objectForKey:@"pressure_in"]description];
    
    NSDictionary *conditiondic=[currentdic objectForKey:@"condition"];
    
    _overviewlbl.text=[conditiondic objectForKey:@"text"];
    
    
    
    
    
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

@end
