#import "mservices.h"

@implementation mservices
{
    NSArray *array;
}

-(instancetype)init
{
    self = [super init];
    
    array = [NSArray arrayWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"services" withExtension:@"plist"]];
    
    return self;
}

#pragma mark public

-(NSInteger)count
{
    return array.count;
}

-(NSString*)item:(NSInteger)item
{
    return array[item];
}

@end