#import "vlogo.h"

@implementation vlogo
{
    BOOL showingbackground;
}

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
    [icon setImage:[[UIImage imageNamed:@"logo"] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [icon setTranslatesAutoresizingMaskIntoConstraints:NO];
    [icon setTintColor:colormain];
    
    showingbackground = NO;
    self.icon = icon;
    [self addSubview:icon];
    
    NSDictionary *views = @{@"icon":icon};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[icon]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[icon]-0-|" options:0 metrics:metrics views:views]];
    
    return self;
}

#pragma mark public

-(void)showbackground:(BOOL)show
{
    if(showingbackground != show)
    {
        showingbackground = show;
        UIColor *background;
        UIColor *coloricon;
        
        if(show)
        {
            background = colormain;
            coloricon = [UIColor whiteColor];
        }
        else
        {
            background = [UIColor clearColor];
            coloricon = colormain;
        }
        
        [UIView animateWithDuration:0.5 animations:
         ^(void)
         {
             [self setBackgroundColor:background];
             [self.icon setTintColor:coloricon];
         }];
    }
}

@end