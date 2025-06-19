#import "ViewController.h"
#import "IntroViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *welcomeLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"Objective-C Demo";

    self.welcomeLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 200, 0, 0)];
    self.welcomeLabel.text = @"Hello World!";
    self.welcomeLabel.textAlignment = NSTextAlignmentCenter;
    self.welcomeLabel.textColor = [UIColor blackColor];
    [self.welcomeLabel sizeToFit];
    self.welcomeLabel.center = CGPointMake(self.view.center.x, self.view.center.y);
    [self.view addSubview:self.welcomeLabel];

    CGFloat buttonWidth = 300;
    CGFloat buttonHeight = 50;
    CGFloat bottomPadding = 60;
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 0, buttonWidth, buttonHeight);
    [button setTitle:@"前往自我介紹" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.backgroundColor = [UIColor systemBlueColor];
    button.titleLabel.font = [UIFont boldSystemFontOfSize:18];
    button.layer.cornerRadius = 25;
    button.clipsToBounds = YES;
    button.center = CGPointMake(self.view.center.x, self.view.bounds.size.height - bottomPadding);
    [button addTarget:self action:@selector(buttonTapped) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)buttonTapped {
    IntroViewController *introVC = [[IntroViewController alloc] init];
    [self.navigationController pushViewController:introVC animated:YES];
}

@end
