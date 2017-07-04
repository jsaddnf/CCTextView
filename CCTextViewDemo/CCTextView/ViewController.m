//
//  ViewController.m
//  CCTextView
//
//  Created by Halo on 2017/6/22.
//  Copyright © 2017年 Halo. All rights reserved.
//

#import "ViewController.h"
#import "CCTextView.h"
@interface ViewController ()

@property (nonatomic,strong) CCTextView *ccTextView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.ccTextView = [[CCTextView alloc]initWithFrame:CGRectMake(10, 20, 200, 34)];
    self.ccTextView.layer.borderWidth = .2;
    self.ccTextView.layer.borderColor = [UIColor blackColor].CGColor;
    self.ccTextView.layer.cornerRadius = 2;
    self.ccTextView.placeholder = @"我是placeholder";
    [self.ccTextView setPlaceholderOpacity:.5];
    [self.ccTextView setPlaceholderColor:[UIColor orangeColor]];
    [self.ccTextView setPlaceholderFont:[UIFont boldSystemFontOfSize:15]];
    [self.ccTextView setFont:[UIFont systemFontOfSize:15]];
    self.ccTextView.shouldAutoUpdateHeight = YES;
    [self.view addSubview:self.ccTextView];
    
    [self.ccTextView addTextViewBeginEvent:^(CCTextView *textView) {
        NSLog(@"CCTextView开始编辑");
    }];
    
    
    [self.ccTextView addTextViewEndEvent:^(CCTextView *textView) {
        NSLog(@"CCTextView结束编辑");
    }];
    
    [self.ccTextView TextViewDidUpdateHeightEvent:^(CCTextView *textView) {
        NSLog(@"CCTextView更新高度了%f",textView.frame.size.height);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
