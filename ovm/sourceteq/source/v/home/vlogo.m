#import "vlogo.h"

@implementation vlogo

-(instancetype)init
{
    self = [super init];
    [self setClipsToBounds:YES];
    [self setUserInteractionEnabled:NO];
    [self setBackgroundColor:[UIColor whiteColor]];
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    UIImageView *icon = [[UIImageView alloc] init];
    [icon setContentMode:UIViewContentModeScaleAspectFit];
    [icon setClipsToBounds:YES];
    [icon setImage:[UIImage imageNamed:@"logo"]];
    [icon setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self addSubview:icon];
    
    NSDictionary *views = @{@"icon":icon};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[icon]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[icon]-0-|" options:0 metrics:metrics views:views]];
    
    return self;
}

@end