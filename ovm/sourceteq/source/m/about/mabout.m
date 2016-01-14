#import "mabout.h"

@implementation mabout
{
    NSMutableArray *array;
}

-(instancetype)init
{
    self = [super init];
    
    array = [NSMutableArray array];
    NSArray *raw = [NSArray arrayWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"about" withExtension:@"plist"]];
    NSInteger countraw = raw.count;
    
    for(NSInteger i = 0; i < countraw; i++)
    {
        NSDictionary *inraw = raw[i];
        NSString *title = inraw[@"title"];
        NSString *descr = inraw[@"descr"];
        
        [array addObject:[[maboutitem alloc] init:title descr:descr]];
    }
    
    return self;
}

#pragma mark public

-(NSInteger)count
{
    return array.count;
}

-(maboutitem*)item:(NSInteger)item
{
    return array[item];
}

@end