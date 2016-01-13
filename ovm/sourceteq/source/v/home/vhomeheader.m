#import "vhomeheader.h"

@implementation vhomeheader

-(instancetype)init
{
    self = [super init];
    [self setClipsToBounds:YES];
    [self setBackgroundColor:[UIColor clearColor]];
    [self setUserInteractionEnabled:NO];
    
    
    
    return self;
}

@end