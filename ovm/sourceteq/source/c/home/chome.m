#import "chome.h"

@implementation chome

-(void)viewDidLoad
{
    [super viewDidLoad];
    [[analytics singleton] trackscreen:ga_screen_home];
}

@end