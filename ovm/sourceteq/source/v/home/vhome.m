#import "vhome.h"

@implementation vhome
{
    CGFloat logoheight;
}

-(instancetype)init
{
    self = [super init];
    [self setBackgroundColor:[UIColor whiteColor]];
    
    logoheight = 300;
    vlogo *logo = [[vlogo alloc] init];
    self.logo = logo;
    
    [self addSubview:logo];
    
    NSDictionary *views = @{@"logo":logo};
    NSDictionary *metrics = @{@"logoheight":@(logoheight)};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[logo]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[logo(logoheight)]" options:0 metrics:metrics views:views]];
    
    return self;
}

@end