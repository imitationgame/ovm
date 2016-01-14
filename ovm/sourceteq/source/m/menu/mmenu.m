#import "mmenu.h"

@implementation mmenu
{
    NSArray *array;
}

-(instancetype)init
{
    self = [super init];
    
    array = [NSArray arrayWithObjects:
             [[mmenulocations alloc] init],
             nil];
    
    return self;
}

#pragma mark public

-(NSInteger)count
{
    return array.count;
}

-(id<mmenuprotocol>)item:(NSInteger)item
{
    return array[item];
}

@end