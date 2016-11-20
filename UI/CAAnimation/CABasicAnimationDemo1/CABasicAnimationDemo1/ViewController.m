//
//  ViewController.m
//  CABasicAnimationDemo1
//
//  Created by chensongqi on 16/11/9.
//  Copyright © 2016年 chensongqi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *testView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.testView = [[UIView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
    
    self.testView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.testView];
    
    

}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"position"];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.duration = 5;
//    animation.speed = 5;
    animation.beginTime = CACurrentMediaTime() + 1;
    animation.repeatCount = MAXFLOAT;
    
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(300, 300)];
    [self.testView.layer addAnimation:animation forKey:nil];
    //因为当你调用addAnimation：forKey：这句时，其实系统是对你传入的animation进行了一次copy，然后把copy的这份添加在图层上。这时你再改animation当然是不能更改动画效果的了。
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end