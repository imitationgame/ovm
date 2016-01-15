#import "cabout.h"

@implementation cabout

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:NSLocalizedString(@"about_main_title", nil)];
    
    [[analytics singleton] trackscreen:ga_screen_about];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

-(void)loadView
{
    self.view = [[vabout alloc] init];
}

@end