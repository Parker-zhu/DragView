//
//  ViewController.m
//  DragView
//
//  Created by 朱晓峰 on 2018/1/8.
//  Copyright © 2018年 朱晓峰. All rights reserved.
//
#import "ViewController.h"
#import "DragView.h"
@interface ViewController ()
@property(nonatomic,strong)DragView * dragView;
@property(nonatomic,assign)BOOL isCanDrag;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSubView];
}
-(void)initSubView{
    DragView * v = [[DragView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    v.backgroundColor = [UIColor redColor];
    [self.view addSubview:v];
    _dragView = v;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    UITouch * touch = [touches anyObject];
    
//    //判断点击是否在dragView视图上
//    CGPoint dragPoint = [touch locationInView:_dragView];
//    if (dragPoint.x <= _dragView.frame.size.width && dragPoint.x >= 0 && dragPoint.y >= 0 && dragPoint.y <= _dragView.frame.size.height) {
//        _isCanDrag = YES;
//    } else {
//        _isCanDrag = NO;
//    }
    
}
-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITouch * touch = [touches anyObject];
    
//    //判断点击是否在dragView视图上
//    if (_isCanDrag) {
//        CGPoint dragPoint = [touch locationInView:_dragView];
//        CGPoint point = [touch locationInView:self.view.window];
//        _dragView.frame = CGRectMake(point.x - dragPoint.x, point.y - dragPoint.y, _dragView.frame.size.width, _dragView.frame.size.height);
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
