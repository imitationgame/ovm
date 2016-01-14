#import "cservices.h"

@implementation cservices

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController setNavigationBarHidden:NO animated:NO];
    [self setTitle:NSLocalizedString(@"services_main_title", nil)];
    
    [[analytics singleton] trackscreen:ga_screen_services];
}

-(void)loadView
{
    self.view = [[vservices alloc] init];
}

@end