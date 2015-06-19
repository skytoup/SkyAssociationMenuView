//
//  ViewController.m
//  AssociationMenuViewTest
//
//  Created by skytoup on 15/6/19.
//  Copyright (c) 2015年 skytoup. All rights reserved.
//

#import "ViewController.h"
#import "SkyAssociationMenuView.h"

@interface ViewController () <SkyAssociationMenuViewDelegate>
@property (strong, nonatomic) SkyAssociationMenuView *v;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _v = [SkyAssociationMenuView new];
    _v.delegate = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)testClick:(id)sender {
    [_v showAsDrawDownView:sender];
}

- (NSInteger)assciationMenuView:(SkyAssociationMenuView*)asView countForClass:(NSInteger)idx {
    NSLog(@"choose %ld", idx);
    return 10;
}

- (NSString*)assciationMenuView:(SkyAssociationMenuView*)asView titleForClass_1:(NSInteger)idx_1 {
    NSLog(@"title %ld", idx_1);
    return [NSString stringWithFormat:@"title %ld", idx_1];
}

- (NSString*)assciationMenuView:(SkyAssociationMenuView*)asView titleForClass_1:(NSInteger)idx_1 class_2:(NSInteger)idx_2 {
    NSLog(@"title %ld, %ld", idx_1, idx_2);
    return [NSString stringWithFormat:@"title %ld, %ld", idx_1, idx_2];
}

- (NSString*)assciationMenuView:(SkyAssociationMenuView*)asView titleForClass_1:(NSInteger)idx_1 class_2:(NSInteger)idx_2 class_3:(NSInteger)idx_3 {
    NSLog(@"title %ld, %ld, %ld", idx_1, idx_2, idx_3);
    return [NSString stringWithFormat:@"%ld,%ld,%ld", idx_1, idx_2, idx_3];
}
@end