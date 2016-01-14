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
    [icon setImage:[[UIImage imageNamed:@"logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [icon setTranslatesAutoresizingMaskIntoConstraints:NO];
    [icon setTintColor:colormain];
    
    UIView *border = [[UIView alloc] init];
    [border setBackgroundColor:[UIColor colorWithWhite:0.9 alpha:1]];
    [border setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self addSubview:icon];
    [self addSubview:border];
    
    NSDictionary *views = @{@"icon":icon, @"border":border};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[icon]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[border]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-10-[icon]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[border(1)]-0-|" options:0 metrics:metrics views:views]];
    
    return self;
}

@end