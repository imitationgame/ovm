#import "vcontactcel.h"

@implementation vcontactcel

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setClipsToBounds:YES];
    
    UILabel *lbl = [[UILabel alloc] init];
    [lbl setUserInteractionEnabled:NO];
    [lbl setFont:[UIFont fontWithName:fontname size:18]];
    [lbl setTranslatesAutoresizingMaskIntoConstraints:NO];
    [lbl setBackgroundColor:[UIColor clearColor]];
    [lbl setUserInteractionEnabled:NO];
    
    self.lbl = lbl;
    [self addSubview:lbl];
    
    NSDictionary *views = @{@"lbl":lbl};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[lbl]-20-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[lbl]-0-|" options:0 metrics:metrics views:views]];
    [self hover];
    
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

#pragma mark functionality

-(void)hover
{
    if(self.isSelected || self.isHighlighted)
    {
        [self.lbl setTextColor:[UIColor whiteColor]];
        [self setBackgroundColor:colormain];
    }
    else
    {
        [self.lbl setTextColor:[UIColor colorWithWhite:0 alpha:0.7]];
        [self setBackgroundColor:[UIColor whiteColor]];
    }
}

@end