//
//  ViewController.m
//  Jackpot
//
//  Created by Ross Gottschalk on 7/26/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "WinningTicketViewController.h"

@interface WinningTicketViewController ()


@property (weak, nonatomic) IBOutlet UIButton *backButton;
@property (weak, nonatomic) IBOutlet UIButton *submitButton;


@property (weak, nonatomic) IBOutlet UIPickerView *pickerView1;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView2;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView3;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView4;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView5;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView6;


@end

@implementation WinningTicketViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
