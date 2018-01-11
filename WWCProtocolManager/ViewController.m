//
//  ViewController.m
//  WWCProtocolManager
//
//  Created by longzhu on 2018/1/11.
//  Copyright © 2018年 LZ. All rights reserved.
//

#import "ViewController.h"
#import "CRProtocolManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [CRProtocolManager registServiceProvide:self forProtocol:@protocol(TestProtocol)];
    
    id<TestProtocol>provide = [CRProtocolManager serviceProvideForProtocol:@protocol(TestProtocol)];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
