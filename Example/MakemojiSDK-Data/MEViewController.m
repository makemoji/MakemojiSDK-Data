//
//  MEViewController.m
//  MakemojiSDK-Data
//
//  Created by Makemoji on 03/25/2018.
//  Copyright (c) 2018 Makemoji. All rights reserved.
//

#import "MEViewController.h"
#import <MakemojiSDK_Data/MEData.h>

@interface MEViewController ()

@end

@implementation MEViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[MEData sharedManager] setSdkKey:@"YOUR_SDK_KEY"];
    [[MEData sharedManager] sendEmojiEvent:@{ @"emoji" : @"😀" }];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
