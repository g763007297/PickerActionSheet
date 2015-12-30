//
//  PickerActionSheet.h
//  PickerActionSheet
//
//  Created by tusm on 15/12/30.
//  Copyright © 2015年 tusm. All rights reserved.
//

#import <UIKit/UIKit.h>

#define SystemVersion [[[UIDevice currentDevice] systemVersion] floatValue]


static NSString *const imageNameKey = @"imageName";
static NSString *const imageDataKey = @"UIImagePickerControllerOriginalImage";

typedef enum {
    PSuccess = 0,   //打开成功
    PUnable,        //设备不可用
    PAuthoriza,     //权限问题
    POhter          //其他原因
}Picker_Error;

@protocol PickerActionSheetDelegate <NSObject>

@required
//选取完成代理
- (void)finishChoose:(NSDictionary *)dictionary;

@optional
//打开状态返回
- (void)pickerViewShowStatu:(Picker_Error)error;

@end

@interface PickerActionSheet : UIView<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>{
    NSInteger imageflag;//1:拍照 2:相册
    UIViewController *controllers;
}

@property (nonatomic, weak) id<PickerActionSheetDelegate>delegate;

- (void)showActionSheet:(UIViewController *)controller;

@end
