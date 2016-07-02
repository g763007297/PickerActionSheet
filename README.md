# PickerActionSheet
把UIActionSheet和UIImagePickerController封装在一起

1.只要在工程中导入PickerActionSheet文件中的.h和.m文件。

2.引用头文件 #import "PickerActionSheet.h"，添加代理。

3.然后进行初始化

``` objc
  PickerActionSheet *actionSheet = [[PickerActionSheet alloc] init];
  
  actionSheet.delegate = self;
    
  [actionSheet showActionSheet:self];
``` 
  4.添加代理方法：

``` objc
  - (void)finishChoose:(NSDictionary *)dictionary;
  @optional
  - (void)pickerViewShowStatu:(Picker_Error)error；
详见代码。
``` 

##Support

欢迎指出bug或者需要改善的地方，欢迎提出issues，或者联系qq：763007297， 我会及时的做出回应。
