//
//  QAViewController.m
//  QNA
//
//  Created by Mary Jenn on 1/31/13.
//  Copyright (c) 2013 Mary Jenn. All rights reserved.
//

#import "QAViewController.h"

@interface QAViewController ()

@end

@implementation QAViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString* filePath = [[NSBundle mainBundle] pathForResource:@"questions" ofType:@"plist"];
    
    self.questionsAndAnswersArray = [NSArray arrayWithContentsOfFile:filePath];
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)nextPressed:(id)sender
{
    int randomIndex = arc4random() % [self.questionsAndAnswersArray count];
    
    NSDictionary* questionAndAnswer = [self.questionsAndAnswersArray objectAtIndex:randomIndex];
    
    self.questionLabel.text = [questionAndAnswer objectForKey: @"question"];
    self.answerLabel.text = [questionAndAnswer objectForKey: @"answer"];
    
}

@end
