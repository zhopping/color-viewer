//
//  ViewController.m
//  ColorViewer
//
//  Created by Zachary on 9/11/13.
//  Copyright (c) 2013 Zachary. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _colorStrings = [[NSArray alloc] initWithObjects:@"RED", @"BLUE", @"YELLOW", @"GREEN", @"ORANGE", @"PURPLE", nil];
    _colorValues = [[NSArray alloc] initWithObjects: [UIColor redColor], [UIColor blueColor], [UIColor yellowColor], [UIColor greenColor], [UIColor orangeColor], [UIColor purpleColor], nil];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)viewColor:(id)sender {
    [self performSegueWithIdentifier:@"PickColorSeg" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    //[segue.destinationViewController setBackgroundColor:[UIColor redColor]];//(UIColor *)[self.colorValues objectAtIndex:self.selectedRow]];
    ((UIViewController *)segue.destinationViewController).view.backgroundColor =[self.colorValues objectAtIndex:self.selectedRow];
}

- (void)pickerView:(UIPickerView *)pV didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.selectedRow = row;
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [self.colorStrings count];

}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [self.colorStrings objectAtIndex:row];
}
@end
