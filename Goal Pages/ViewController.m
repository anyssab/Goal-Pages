//
//  ViewController.m
//  Goal Pages
//
//  Created by Anyssa Buchanan on 4/3/14.
//  Copyright (c) 2014 Anyssa Buchanan. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()
@end

@implementation ViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    
	// Do any additional setup after loading the view, typically from a nib.
    NSString *path = [[NSBundle mainBundle] pathForResource:@"Goals" ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    goals = [dict objectForKey:@"Goals"];
    NSLog(@"%@",dict);
    
    [self.tableView reloadData];
    [self.view addSubview: _tableView];

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [goals count];
}

- (UIFont *)fontForCell
{
    return [UIFont boldSystemFontOfSize:16.0];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //NSString *cellText = [goals objectAtIndex:indexPath.row];
    UIFont *cellFont = [self fontForCell];
    CGSize labelSize = CGSizeMake(248, 50);
    CGSize constraintSize = CGSizeMake(248.0, MAXFLOAT);
    
    CGSize size = [[goals objectAtIndex:indexPath.row]
                   sizeWithFont:cellFont
                   constrainedToSize:constraintSize];
 
    return size.height + 30;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CustomCellIdentifier = @"CustomCell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CustomCellIdentifier];

        
        if (nil == cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CustomCellIdentifier];
            cell.textLabel.font = [self fontForCell];
            cell.textLabel.numberOfLines = 0;
      
            cell.textLabel.text = [goals objectAtIndex:indexPath.row];
            return cell;
        }
    
        cell.textLabel.text = [goals objectAtIndex:indexPath.row];
        return cell;
    
        
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CustomCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
        cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
        cell.textLabel.numberOfLines = 0;
        cell.textLabel.font = [self fontForCell];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *) tableView
{
    #warning Potentially incomplete method implementation.
        // Return the number of sections.
    return 1;
}
@end
