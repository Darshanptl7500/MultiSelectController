//
//  ViewController.m
//  MultiSelectControl
//
//  Created by Darshan Patel on 7/3/15.
//  Copyright (c) 2015 Darshan Patel. All rights reserved.
//

#import "ViewController.h"
#import "MultiSelectController.h"

@interface ViewController ()<MultiSelectControlDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)btnOpenTapped:(id)sender
{
    UIStoryboard *storyboard =[UIStoryboard storyboardWithName:@"MultiSelectStoryBoard" bundle:nil];
    
    MultiSelectController *multiSelect =[storyboard instantiateViewControllerWithIdentifier:@"MultiSelectController"];
    multiSelect.delegate = self;
    multiSelect.multiSelectCellBackgroundColor =[UIColor colorWithRed:253.0/255.0 green:72.0/255.0 blue:47.0/255.0 alpha:1.0];
    
    NSMutableArray *arrOptions =[[NSMutableArray alloc] initWithArray:@[@"India",@"United States",@"Canada",@"Australia",@"United Kingdom",@"Philippines",@"Japan",@"Italy",@"Germany",@"Russia",@"Malaysia",@"France",@"Sweden",@"New Zealand",@"Singapore"]];
    
    multiSelect.arrOptions =arrOptions;
    
    multiSelect.leftButtonText = @"Cancel";
    multiSelect.leftButtonTextColor = [UIColor blackColor];
    
    multiSelect.rightButtonText = @"Apply";
    multiSelect.rightButtonTextColor = [UIColor blackColor];
    
    UINavigationController *navi =[[UINavigationController alloc] initWithRootViewController:multiSelect];
    
    [self.navigationController presentViewController:navi animated:YES completion:^{
        
        
    }];
}
-(void)multiSelectControllerDidCancel:(MultiSelectController *)controller
{
    
}
-(void)multiSelectController:(MultiSelectController *)controller didFinishPickingSelections:(NSArray *)selections
{
    NSLog(@"%@",selections);
}
@end
