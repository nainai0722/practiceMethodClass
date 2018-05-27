//
//  ViewController.m
//  practiceMethodProperty0528
//
//  Created by apple on 2018/05/23.
//  Copyright © 2018年 com.nainai0722. All rights reserved.
//

#import "ViewController.h"
#import "originalView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn1;
@property (weak, nonatomic) IBOutlet UIButton *btn2;
@property (weak, nonatomic) IBOutlet UIButton *btn3;
@property (weak, nonatomic) IBOutlet UIButton *btn4;
@property (weak, nonatomic) IBOutlet originalView *originalView;
@property (weak, nonatomic) IBOutlet UITextView *textFiledView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.originalView = [[NSBundle mainBundle] loadNibNamed:@"originalView" owner:self options:nil][0];
    self.originalView.frame = CGRectMake(0,333, 375,334);
    [self.view addSubview:self.originalView];

    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchBtn3:(UIButton *)sender {
    NSLog(@"touchBtn3");
    self.originalView.hidden = NO;
    self.textFiledView.hidden = YES;
}

- (IBAction)touchBtn4:(UIButton *)sender {
    NSLog(@"touchBtn4");
    self.originalView.hidden = YES;
    self.textFiledView.hidden = NO;
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
