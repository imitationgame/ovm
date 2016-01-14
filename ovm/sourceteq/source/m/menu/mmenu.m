#import "mmenu.h"

@implementation mmenu
{
    NSArray *array;
}

-(instancetype)init
{
    self = [super init];
    
    array = [NSArray arrayWithObjects:nil];
    
    return self;
}

#pragma mark public

-(NSInteger)count
{
    return array.count;
}



@end