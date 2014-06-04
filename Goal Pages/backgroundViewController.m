//
//  backgroundViewController.m
//  Goal Pages
//
//  Created by Anyssa Buchanan on 4/17/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import "backgroundViewController.h"

@interface backgroundViewController ()

@end

@implementation backgroundViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImage *background = [UIImage imageNamed:@"DASHGOALBACK.png"];
    UIImageView *v= [[UIImageView alloc] initWithFrame:self.view.frame];
    [v setImage:background];
    
    [self.view addSubview:v];
    [self.view sendSubviewToBack:v];
    
//    [self.view setBackgroundColor:[UIColor colorWithPatternImage:background]];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
