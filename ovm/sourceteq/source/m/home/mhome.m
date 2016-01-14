#import "mhome.h"

@implementation mhome
{
    NSArray *array;
}

-(instancetype)init
{
    self = [super init];
    
    array = [NSArray arrayWithObjects:
             [[mhometitle alloc] init],
             [[mhomebanners alloc] init],
             [[mhomeabout alloc] init],
             [[mhomeservices alloc] init],
             [[mhomelocations alloc] init],
             [[mhomecontact alloc] init],
             nil];
    
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