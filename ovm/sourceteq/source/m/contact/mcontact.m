#import "mcontact.h"

@implementation mcontact
{
    NSArray *array;
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