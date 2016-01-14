#import "vhomecelbanner.h"

@implementation vhomecelbanner

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setBackgroundColor:[UIColor clearColor]];
    [self setUserInteractionEnabled:NO];
    
    UIView *background = [[UIView alloc] init];
    [background setBackgroundColor:[UIColor blackColor]];
    [background setUserInteractionEnabled:NO];
    [background setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self addSubview:background];
    
    NSDictionary *views
    
    return self;
}

@end