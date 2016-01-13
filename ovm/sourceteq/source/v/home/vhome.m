#import "vhome.h"

@implementation vhome

-(instancetype)init
{
    self = [super init];
    [self setBackgroundColor:[UIColor whiteColor]];
    
    vlogo *logo = [[vlogo alloc] init];
    self.logo = logo;
    
    [self addSubview:logo];
    
    NSDictionary *views = @{@"logo":logo};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[logo]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[logo]-0-|" options:0 metrics:metrics views:views]];
    
    return self;
}

@end