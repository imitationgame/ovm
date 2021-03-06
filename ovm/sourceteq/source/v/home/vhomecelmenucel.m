#import "vhomecelmenucel.h"

@implementation vhomecelmenucel

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setClipsToBounds:YES];
    [self setBackgroundColor:[UIColor clearColor]];
    
    UILabel *lbl = [[UILabel alloc] init];
    [lbl setBackgroundColor:[UIColor clearColor]];
    [lbl setTextAlignment:NSTextAlignmentCenter];
    [lbl setFont:[UIFont fontWithName:fontname size:11]];
    [lbl setUserInteractionEnabled:NO];
    [lbl setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.lbl = lbl;
    
    UIImageView *icon = [[UIImageView alloc] init];
    [icon setClipsToBounds:YES];
    [icon setContentMode:UIViewContentModeScaleAspectFit];
    [icon setUserInteractionEnabled:NO];
    [icon setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.icon = icon;
    
    UIView *background = [[UIView alloc] init];
    [background setUserInteractionEnabled:NO];
    [background setClipsToBounds:YES];
    [background.layer setCornerRadius:4];
    [background setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.background = background;
    
    [self addSubview:background];
    [self addSubview:icon];
    [self addSubview:lbl];
    
    NSDictionary *views = @{@"lbl":lbl, @"icon":icon, @"back":background};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[lbl]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[lbl]-15-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[icon]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-18-[icon]-33-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-2-[back]-2-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-5-[back]-5-|" options:0 metrics:metrics views:views]];
    
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
        [self.background setBackgroundColor:colormain];
    }
    else
    {
        [self.icon setTintColor:colormain];
        [self.lbl setTextColor:colormain];
        [self.background setBackgroundColor:[UIColor whiteColor]];
    }
}

#pragma mark public

-(void)config:(NSString*)title image:(NSString*)image
{
    [self.lbl setText:title];
    [self.icon setImage:[[UIImage imageNamed:image] imageWithRenderingMode:UIImageRenderingModeAlwaysTemplate]];
    [self hover];
}

@end