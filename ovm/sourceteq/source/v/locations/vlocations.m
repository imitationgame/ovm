#import "vlocations.h"

@implementation vlocations

-(instancetype)init
{
    self = [super init];
    [self setBackgroundColor:[UIColor whiteColor]];
    
    return self;
}

-(void)dealloc
{
    [self.mapview setShowsUserLocation:NO];
}

@end