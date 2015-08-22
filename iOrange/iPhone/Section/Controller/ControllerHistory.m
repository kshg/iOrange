//
//  ControllerHistory.m
//  iOrange
//
//  Created by Yoon on 8/16/15.
//  Copyright © 2015 yinxiangkai. All rights reserved.
//

#import "ControllerHistory.h"

@interface ControllerHistory ()<UITableViewDelegate,UITableViewDataSource> {
}

@end

@implementation ControllerHistory

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
  [_btnBack addTarget:self action:@selector(onTouchToBack:) forControlEvents:UIControlEventTouchUpInside];
  [_btnEdit addTarget:self action:@selector(onTouchWithEditAndClear:) forControlEvents:UIControlEventTouchUpInside];
  [_segmentBomkHisy addTarget:self action:@selector(onTouchWithSegemnt:) forControlEvents:UIControlEventValueChanged];
}

#pragma mark - private methods 

- (void)setUpDataTable {
  _tableBookmark.delegate = self;
  _tableBookmark.dataSource = self;
  [_tableBookmark setTag:13];
  
  _tableHistory.delegate = self;
  _tableHistory.dataSource = self;
  [_tableHistory setTag:14];
}

#pragma mark - events

- (void)onTouchToBack:(UIButton *)sender {
  [self.navigationController popViewControllerAnimated:YES];
  [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
}

- (void)onTouchWithEditAndClear:(UIButton *)sender {
}

- (void)onTouchWithSegemnt:(UISegmentedControl *)sender {
  [_viewHome exchangeSubviewAtIndex:1 withSubviewAtIndex:2];
}

#pragma mark - UITableViewDelegate,UITableViewDataSource


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