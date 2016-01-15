#import "clocations.h"

@implementation clocations

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:NSLocalizedString(@"locations_main_title", nil)];
    [[analytics singleton] trackscreen:ga_screen_locations];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

-(void)loadView
{
    self.view = [[vlocations alloc] init];
}

@end