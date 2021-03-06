//
//  ViewController.h
//  ColorViewer
//
//  Created by Zachary on 9/11/13.
//  Copyright (c) 2013 Zachary. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>
- (IBAction)viewColor:(id)sender;
@property (nonatomic) NSArray * colorStrings;
@property (nonatomic) NSArray * colorValues;
@property (nonatomic) int selectedRow;
@end
