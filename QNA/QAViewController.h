//
//  QAViewController.h
//  QNA
//
//  Created by Mary Jenn on 1/31/13.
//  Copyright (c) 2013 Mary Jenn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QAViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel* questionLabel;
@property (weak, nonatomic) IBOutlet UILabel* answerLabel;

@property (strong, nonatomic) NSArray* questionsAndAnswersArray;

- (IBAction)nextPressed:(id)sender;
@end
