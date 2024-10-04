#import "RTNToastMessage.h"
#import <UIKit/UIKit.h>

@implementation RTNToastMessage

RCT_EXPORT_MODULE();

- (void)showToast:(NSString *)message {
  NSLog(@"[ToastModule] Displaying alert on main thread");
  dispatch_async(dispatch_get_main_queue(), ^{
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:nil
                                                                   message:message
                                                            preferredStyle:UIAlertControllerStyleAlert];

    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    [keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
      [alert dismissViewControllerAnimated:YES completion:nil];
    });
  });
}

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
  NSLog(@"[RTNToastMessage] getTurboModule called");
  return std::make_shared<facebook::react::NativeRTNToastMessageSpecJSI>(params);
}

@end
