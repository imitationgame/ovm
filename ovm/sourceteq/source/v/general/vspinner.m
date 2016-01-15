#import "vspinner.h"

@implementation vspinner

-(instancetype)init
{
    self = [super init];
    [self setClipsToBounds:YES];
    [self setContentMode:UIViewContentModeCenter];
    [self setUserInteractionEnabled:NO];
    [self setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self setImage:[UIImage imageNamed:@"loader"]];    
    
    return self;
}

@end