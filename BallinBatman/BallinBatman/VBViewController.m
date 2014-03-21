//
//  VBViewController.m
//  BallinBatman
//
//  Created by Ariel Rodriguez on 3/21/14.
//  Copyright (c) 2014 Ariel Rodriguez. All rights reserved.
//

#import "VBViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface VBViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
- (IBAction)talkToMeButtonTapped:(id)sender;

@end

@implementation VBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)talkToMeButtonTapped:(id)sender
{
    
    AVSpeechSynthesizer *synthesizer = [[AVSpeechSynthesizer alloc] init];
    
    NSString *string = [[self textView] text];
    
    AVSpeechUtterance *utterance = [AVSpeechUtterance speechUtteranceWithString:string];
    utterance.rate = AVSpeechUtteranceDefaultSpeechRate; // Tell it to me slowly
    [synthesizer speakUtterance:utterance];

}
@end
