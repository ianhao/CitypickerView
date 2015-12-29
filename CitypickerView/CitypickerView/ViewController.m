//
//  ViewController.m
//  CitypickerView
//
//  Created by 安浩 on 15/12/29.
//  Copyright © 2015年 www.swfitnews.cn. All rights reserved.
//

#import "ViewController.h"
#import "CityPickView.h"

@interface ViewController ()<CityPickViewDelegate>

@property (nonatomic,weak) UILabel *label;
@property (nonatomic,strong) NSDictionary *pickerDic;
@property (nonatomic,strong) NSArray *provinceArray;
@property (nonatomic,strong) NSArray *cityArray;
@property (nonatomic,strong) NSArray *townArray;
@property (nonatomic,strong) NSArray *selectedArray;

@property (nonatomic,strong) CityPickView *pickView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(00,120, self.view.bounds.size.width, 45)];
    label.backgroundColor = [UIColor grayColor];
    label.textAlignment = NSTextAlignmentCenter;
    self.label = label;
    [self.view addSubview:label];
    
    _pickView = [[CityPickView alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(label.frame)+10, self.view.bounds.size.width, 180)];
    _pickView.backgroundColor = [UIColor yellowColor];
    _pickView.delegate = self;
    [self.view addSubview:_pickView];

    
}


- (void)selectCity:(NSString *)city{
    self.label.text = city;

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
