//
//  ViewController.m
//  UIStackViewTest
//
//  Created by ws on 16/2/16.
//  Copyright © 2016年 ws. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIStackView *verticalStackView;

@property (weak, nonatomic) IBOutlet UIStackView *horizontalStackView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}


- (IBAction)addStartChick:(id)sender {
    
    UIImageView *starImageV = [[UIImageView alloc] init];
    starImageV.contentMode = UIViewContentModeScaleAspectFit;
    [starImageV setImage:[UIImage imageNamed:@"star"]];
    [self.horizontalStackView addArrangedSubview:starImageV];
    
    [UIView animateWithDuration:3 animations:^{
        [self.horizontalStackView layoutIfNeeded];
    }];
}
- (IBAction)RremoveStarChick:(id)sender {
    
    UIView *starView = self.horizontalStackView.arrangedSubviews.lastObject;
    [self.horizontalStackView removeArrangedSubview:starView];
    [starView removeFromSuperview];
    [UIView animateWithDuration:1 animations:^{
        [self.horizontalStackView layoutIfNeeded];
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
