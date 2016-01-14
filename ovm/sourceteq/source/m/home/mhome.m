#import "mhome.h"

@implementation mhome
{
    NSMutableArray *array;
}

-(instancetype)init
{
    self = [super init];
    
    NSArray *flyers = [NSArray arrayWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"flyers" withExtension:@"plist"]];
    NSInteger count = flyers.count;
    
    array = [NSMutableArray array];
    [array addObject:[[mhometitle alloc] init]];
    [array addObject:[[mhomemenu alloc] init]];
    
    for(NSInteger i = 0; i < count; i++)
    {
        NSString *flyername = flyers[i];
        mhomebanners *banner = [[mhomebanners alloc] init:flyername];
        [array addObject:banner];
    }
    
    return self;
}

#pragma mark functonality

-(id<mhomeprotocol>)item:(NSInteger)item
{
    return array[item];
}

#pragma mark public

-(NSInteger)count
{
    return array.count;
}

-(CGFloat)heightforitem:(NSInteger)item
{
    return [[self item:item] height];
}

-(void)registercels:(UICollectionView*)col
{
    for(id<mhomeprotocol> item in array)
    {
        [item registercel:col];
    }
}

-(UICollectionViewCell*)dequeuecel:(UICollectionView*)col index:(NSIndexPath*)index
{
    return [[self item:index.item] dequeue:col index:index];
}

-(BOOL)selectable:(NSInteger)item;
{
    return [[self item:item] selectable];
}

-(UIViewController*)controller:(NSInteger)item
{
    return [[self item:item] controller];
}

@end