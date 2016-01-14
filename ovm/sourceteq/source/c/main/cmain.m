#import "cmain.h"

@implementation cmain

+(instancetype)singleton
{
    static cmain *single;
    static dispatch_once_t once;
    dispatch_once(&once, ^(void) { single = [[self alloc] init]; });
    
    return single;
}

-(instancetype)init
{
    self = [super initWithRootViewController:[[chome alloc] init]];
    
    return self;
}

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:fontname size:17]} forState:UIControlStateNormal];
    [self.navigationBar setTintColor:colormain];
    [self.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont fontWithName:fontboldname size:18], NSForegroundColorAttributeName:[UIColor blackColor]}];
}

-(UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleDefault;
}

-(BOOL)prefersStatusBarHidden
{
    return NO;
}

#pragma mark functionality


#pragma mark public


@end