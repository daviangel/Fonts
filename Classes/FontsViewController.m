//
//  FontsViewController.m
//  Fonts
//
//  Created by Jaime Moreno on 12/20/10.
//  Copyright 2010 Jologames. All rights reserved.
//

#import "FontsViewController.h"

@implementation FontsViewController

@synthesize resultLabel;
@synthesize fontNameControl;
@synthesize fontSizeNumberLabel;
@synthesize fontSizeSlider;
@synthesize capitalizedSwitch;

// helper function
- (void) updateText
{
	// grab the string
	NSString * text = resultLabel.text;
	
	// change the string based on the switch setting
	if (capitalizedSwitch.on) {
		
		text = [text capitalizedString];
	}
	else {
		
		text = [text lowercaseString];
		
	}
	
	// update the label text
	resultLabel.text = text;
	
}


- (void) updateFont
{
	// get font size
	int fontSize = fontSizeSlider.value;
	
	// update the displayed font size 
	NSString * fontSizeString = [NSString stringWithFormat:@"%d",fontSize];
	
	fontSizeNumberLabel.text = fontSizeString;
	
	// get the font name
	int selectedFontIndex = fontNameControl.selectedSegmentIndex;
	
	NSString * fontName = [fontNameControl titleForSegmentAtIndex:selectedFontIndex];
	
	// create new font
	UIFont * newFont = [UIFont fontWithName:fontName size:fontSize];
	
	// apply the new font to the name label
	resultLabel.font = newFont;
}

- (void) updateInterface
{
	[self updateText];
	[self updateFont];
}
- (IBAction) fontNameControlValueChanged:(id)sender
{
	NSLog(@"font name changed");
	[self updateInterface];
}

- (IBAction) fontSizeSliderValueChanged:(id)sender
{
	NSLog(@"font size changed");
	[self updateInterface];
}

- (IBAction) capitalizedSwitchValueChanged:(id)sender
{
	NSLog(@"font capitalized changed");
	[self updateInterface];
}




/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
