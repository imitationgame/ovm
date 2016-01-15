#import "cservices.h"

@implementation cservices

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:NSLocalizedString(@"services_main_title", nil)];
    
    [[analytics singleton] trackscreen:ga_screen_services];
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
}

-(void)loadView
{
    self.view = [[vservices alloc] init];
}

@end