//
//  IntroViewController.m
//  ObjectiveCDemo
//
//  Created by Willy Hsu on 2025/6/19.
//

#import "IntroViewController.h"

@interface IntroViewController ()

@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"關於我";

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 150, self.view.bounds.size.width - 40, 200)];
    label.numberOfLines = 0;
    label.textAlignment = NSTextAlignmentLeft;
    label.text = @"我是 Willy"
                 "熟悉 App 軟體開發：\n\n"
                 "語言與工具：Swift, Xcode, Git / GitHub, SPM, CocoaPods\n"
                 "架構與設計：UIKit, SwiftUI, MVC / MVVM, Combine\n"
                 "資料處理與串接：RESTful API, URLSession / JSONDecoder, Firebase Authentication, CoreData, Postman\n"
                 "測試經驗：XCTest（單元與 UI 測試）, Combine 非同步資料流測試\n"
                 "設計與用戶體驗：iOS Human Interface Guidelines";
    [self.view addSubview:label];
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
