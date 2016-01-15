#import "chome.h"

@implementation chome

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:NSLocalizedString(@"home_main_title", nil)];
    [[analytics singleton] trackscreen:ga_screen_home];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

-(void)loadView
{
    self.view = [[vhome alloc] init];
}

@end