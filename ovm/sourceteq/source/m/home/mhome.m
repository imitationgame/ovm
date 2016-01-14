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
    [array addObject:[[mhometitle alloc] init:NSLocalizedString(@"home_title", nil) fontsize:15]];
    [array addObject:[[mhomemenu alloc] init]];
    [array addObject:[[mhomespace alloc] init:40]];
    [array addObject:[[mhometitle alloc] init:NSLocalizedString(@"home_title_banners", nil) fontsize:13]];
    
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

-(CGSize)sizeforitem:(NSInteger)item width:(CGFloat)width
{
    return [[self item:item] sizeforwidth:width];
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