//
//  PickerActionSheetViewController.m
//  PickerActionSheet
//
//  Created by tusm on 15/12/30.
//  Copyright © 2015年 tusm. All rights reserved.
//

#import "PickerActionSheetViewController.h"
#import "PickerActionSheet.h"

@interface PickerActionSheetViewController ()<PickerActionSheetDelegate>

@end

@implementation PickerActionSheetViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.visibleViewController.title = @"PickerActionSheet";
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(CGRectGetMaxX(self.view.frame)/2-100, CGRectGetMaxY(self.view.frame)/2+40, 200, 40)];
    [button setTitle:@"点击此处弹出ActionSheet" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    
    button.layer.borderColor = [UIColor orangeColor].CGColor;
    button.layer.borderWidth = 1;
    
    button.layer.cornerRadius = 5;
    [button setClipsToBounds:YES];
    
    [button addTarget:self action:@selector(showActionSheet:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma  mark -- buttonAction
- (void)showActionSheet:(id)sender{
    PickerActionSheet *actionSheet = [[PickerActionSheet alloc] init];
    actionSheet.delegate = self;
    [actionSheet showActionSheet:self];
}

#pragma mark -- PickerActionSheetDelegate
- (void)finishChoose:(NSDictionary *)dictionary{
    NSString *imageName = dictionary[imageNameKey];
    UIImage *imageData = dictionary[imageDataKey];
    
    NSLog(@"%@",imageName);
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(CGRectGetMaxX(self.view.frame)/2-100, CGRectGetMaxY(self.view.frame)/2-220, 200, 200)];
    imageView.image = imageData;
    [self.view addSubview:imageView];
    //do something
}

- (void)pickerViewShowStatu:(Picker_Error)error{
    switch (error) {
        case PSuccess:{
            NSLog(@"成功");
            break;
        }
        case PAuthoriza:{
            NSLog(@"权限问题");
            break;
        }
        case PUnable:{
            NSLog(@"设备不可用");
            break;
        }
        case POhter:{
            NSLog(@"其他原因");
            break;
        }
        default:
            break;
    }
}

@end
