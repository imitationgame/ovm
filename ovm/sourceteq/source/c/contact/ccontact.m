#import "ccontact.h"

@implementation ccontact

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:NSLocalizedString(@"contact_main_title", nil)];
    
    [[analytics singleton] trackscreen:ga_screen_contact];
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