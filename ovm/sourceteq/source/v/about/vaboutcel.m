#import "vaboutcel.h"

@implementation vaboutcel

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setClipsToBounds:YES];
    [self setUserInteractionEnabled:NO];
    [self setBackgroundColor:[UIColor whiteColor]];
    
    UILabel *lbl = [[UILabel alloc] init];
    [lbl setBackgroundColor:[UIColor clearColor]];
    [lbl setNumberOfLines:0];
    [lbl setTranslatesAutoresizingMaskIntoConstraints:NO];
    self.lbl = lbl;
    
    [self addSubview:lbl];
    
    NSDictionary *views = @{@"lbl":lbl};
    NSDictionary *metrics = @{};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[lbl]-20-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[lbl]-20-|" options:0 metrics:metrics views:views]];
    
    return self;
}

@end