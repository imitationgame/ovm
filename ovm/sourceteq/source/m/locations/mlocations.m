#import "mlocations.h"

@implementation mlocations
{
    NSMutableArray *array;
}

-(instancetype)init
{
    array = [NSMutableArray array];
    NSArray *raw = [NSArray arrayWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"locations" withExtension:@"plist"]];
    NSInteger qtyraw = raw.count;
    
    for(NSInteger i = 0; i < qtyraw; i++)
    {
        NSDictionary *inraw = raw[i];
        NSString *title = inraw[@"title"];
        NSString *symbol = inraw[@"symbol"];
        NSNumber *latitude = inraw[@"latitude"];
        NSNumber *longitude = inraw[@"longitude"];
        
        [array addObject:[[mlocationsitem alloc] init:title symbol:symbol lat:latitude lon:longitude index:i]];
    }
    
    return self;
}

-(NSInteger)count
{
    return array.count;
}

-(mlocationsitem*)item:(NSInteger)item;
{
    return array[item];
}

-(NSArray*)asarray
{
    return array.copy;
}

@end