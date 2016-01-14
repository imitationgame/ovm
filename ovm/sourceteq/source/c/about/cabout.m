#import "cabout.h"

@implementation cabout

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    [self setTitle:NSLocalizedString(@"about_main_title", nil)];
    
    [[analytics singleton] trackscreen:ga_screen_about];
}

-(void)loadView
{
    self.view = [[vabout alloc] init];
}

@end