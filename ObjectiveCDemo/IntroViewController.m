//
//  IntroViewController.m
//  ObjectiveCDemo
//
//  Created by Willy Hsu on 2025/6/19.
//

#import "IntroViewController.h"
#import "Masonry.h"

@interface IntroViewController ()

@property (nonatomic, strong) UILabel *infoLabel;

@end

@implementation IntroViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"關於我";
    [self setupUI];
    [self setupLayout];
}

- (void)setupUI {
    self.infoLabel = [[UILabel alloc] init];
    self.infoLabel.numberOfLines = 0;
    self.infoLabel.textAlignment = NSTextAlignmentLeft;
    self.infoLabel.text = @"我是 Willy\n\n"
                           "熟悉 App 軟體開發：\n\n"
                           "語言與工具：Swift, Xcode, Git / GitHub, SPM, CocoaPods\n"
                           "架構與設計：UIKit, SwiftUI, MVC / MVVM, Combine\n"
                           "資料處理與串接：RESTful API, URLSession / JSONDecoder, Firebase Authentication, CoreData, Postman\n"
                           "測試經驗：XCTest（單元與 UI 測試）, Combine 非同步資料流測試\n"
                           "設計與用戶體驗：iOS Human Interface Guidelines";
    self.infoLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:self.infoLabel];
}

- (void)setupLayout {
    [self.infoLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view).offset(150);
        make.left.equalTo(self.view).offset(20);
        make.right.equalTo(self.view).offset(-20);
    }];
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
