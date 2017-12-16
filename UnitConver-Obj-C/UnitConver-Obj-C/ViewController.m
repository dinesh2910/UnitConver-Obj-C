//
//  ViewController.m
//  UnitConver-Obj-C
//
//  Created by dinesh danda on 7/12/16.
//  Copyright © 2016 dinesh danda. All rights reserved.
//

#import "ViewController.h"
double convertUnitOneToUnitTwo(double unitOneValue){
    double unitTwoValue;
    
    unitTwoValue = 10*unitOneValue+3;
    return unitTwoValue;
}
double convertUnitOneToUnitThree(double unitOneValue){
    double unitThreeValue;
    
    unitThreeValue = 13*unitOneValue+3;
    return unitThreeValue;
}
double convertUnitOneToUnitFour(double unitOneValue){
    double unitFourValue;
    
    unitFourValue = 15*unitOneValue+3;
    return unitFourValue;
}

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *unitLabel;
@property (weak, nonatomic) IBOutlet UITextField *inputField;

@property (weak, nonatomic) IBOutlet UILabel *outputLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentController;
@end

@implementation ViewController
- (IBAction)updateButton:(UIButton *)sender {
    NSMutableString *buf = [[NSMutableString alloc]init];
    double userInput = [self.inputField.text doubleValue];
    if(self.segmentController.selectedSegmentIndex == 0){
        double unitTwoValue = convertUnitOneToUnitTwo(userInput);
        [buf appendString:[@(unitTwoValue) stringValue]];
        self.outputLabel.text = buf;
    }
    else if(self.segmentController.selectedSegmentIndex == 1){
        double unitThreeValue = convertUnitOneToUnitThree(userInput);
        [buf appendString:[@(unitThreeValue) stringValue]];
        self.outputLabel.text = buf;
    }
    else{
        
        double unitFourValue = convertUnitOneToUnitFour(userInput);
        [buf appendString:[@(unitFourValue) stringValue]];
        self.outputLabel.text = buf;
    }

    }
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
