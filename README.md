# PickerActionSheet
把UIActionSheet和UIImagePickerController封装在一起
1.只要在工程中导入PickerActionSheet文件中的.h和.m文件。
2.引用头文件 #import "PickerActionSheet.h"，添加代理。

3.然后进行初始化
  PickerActionSheet *actionSheet = [[PickerActionSheet alloc] init];
    actionSheet.delegate = self;
    [actionSheet showActionSheet:self];
    
  4.添加代理方法：
  - (void)finishChoose:(NSDictionary *)dictionary{
  - 
  - }
