#import "vlocationscel.h"

@implementation vlocationscel

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setClipsToBounds:YES];
    [self setBackgroundColor:[UIColor clearColor]];
    
    UILabel *lbl = [[UILabel alloc] init];
    [lbl setBackgroundColor:[UIColor clearColor]];
    [lbl setFont:[UIFont fontWithName:fontboldname size:12]];
    [lbl setTextAlignment:NSTextAlignmentCenter];
    [lbl setUserInteractionEnabled:NO];
    [lbl setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    self.lbl = lbl;
    
    UIView *background = [[UIView alloc] init];
    [background setUserInteractionEnabled:NO];
    [background setTranslatesAutoresizingMaskIntoConstraints:NO];
    [background setClipsToBounds:YES];
    [background.layer setCornerRadius:20];
    [background.layer setBorderWidth:1];
    [background.layer setBorderColor:[UIColor colorWithWhite:0 alpha:0.3].CGColor];
    
    self.background = background;
    
    [self addSubview:background];
    [self addSubview:lbl];
    
    NSDictionary *views = @{@"lbl":lbl, @"back":background};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[lbl]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[lbl]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-7-[back]-7-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-2-[back]-2-|" options:0 metrics:metrics views:views]];
    
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
        [self.background setBackgroundColor:colormain];
    }
    else
    {
        [self.lbl setTextColor:[UIColor colorWithWhite:0 alpha:0.8]];
        [self.background setBackgroundColor:[UIColor colorWithWhite:1 alpha:0.85]];
    }
}

#pragma mark public

-(void)config:(mlocationsitem*)item
{
    self.item = item;
    [self.lbl setText:item.symbol];
    
    [self hover];
}

@end