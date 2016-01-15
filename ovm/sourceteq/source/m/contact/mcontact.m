#import "mcontact.h"

@implementation mcontact
{
    NSArray *array;
}

-(instancetype)init
{
    self = [super init];
    
    array = [NSArray arrayWithObjects:
             [[mcontactcall alloc] init],
             [[mcontactmail alloc] init],
             [[mcontactweb alloc] init],
             nil];
    
    return self;
}

#pragma mark public

-(NSInteger)count
{
    return array.count;
}

-(id<mcontactprotocol>)item:(NSInteger)item
{
    return array[item];
}

@end