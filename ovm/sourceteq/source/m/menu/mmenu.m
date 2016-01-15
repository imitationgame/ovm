#import "mmenu.h"

@implementation mmenu
{
    NSArray *array;
}

-(instancetype)init
{
    self = [super init];
    
    array = [NSArray arrayWithObjects:
             [[mmenuabout alloc] init],
             [[mmenuservices alloc] init],
             [[mmenulocations alloc] init],
             [[mmenucontact alloc] init],
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