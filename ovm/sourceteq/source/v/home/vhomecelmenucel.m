#import "vhomecelmenucel.h"

@implementation vhomecelmenucel

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setClipsToBounds:YES];
    
    UILabel *lbl = [[UILabel alloc] init];
    [lbl setBackgroundColor:[UIColor clearColor]];
    [lbl setTextAlignment:NSTextAlignmentCenter];
    [lbl setFont:[UIFont fontWithName:fontname size:12]];
    [lbl setUserInteractionEnabled:NO];
    [lbl setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.lbl = lbl;
    
    UIImageView *icon = [[UIImageView alloc] init];
    [icon setClipsToBounds:YES];
    [icon setContentMode:UIViewContentModeScaleAspectFit];
    [icon setUserInteractionEnabled:NO];
    [icon setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.icon = icon;
    
    [self addSubview:icon];
    [self addSubview:lbl];
    
    NSDictionary *views = @{@"lbl":lbl, @"icon":icon};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[lbl]-20-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[lbl]-5-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[icon]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[icon]-15-|" options:0 metrics:metrics views:views]];
    
    return self;
}

-(void)setSelected:(BOOL)selected
{
    [super setSelected:selected];
    [self hover];
}

-(void)setHighlighted:(BOOL)highlighted
{
    [super setHighlighted:highlighted];
    [self hover];
}

#pragma mark fucntionality

-(void)hover
{
    if(self.isSelected || self.isHighlighted)
    {
        [self.icon setTintColor:[UIColor whiteColor]];
        [self.lbl setTextColor:[UIColor whiteColor]];
        [self setBackgroundColor:colormain];
    }
    else
    {
        [self.icon setTintColor:colormain];
        [self.lbl setTextColor:colormain];
        [self setBackgroundColor:[UIColor clearColor]];
    }
}

#pragma mark public

@end