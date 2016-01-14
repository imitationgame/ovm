#import "mhometitle.h"

@implementation mhometitle
{
    NSString *celname;
}

-(instancetype)init
{
    self = [super init];
    
    celname = @"title";
    
    return self;
}

#pragma mark -
#pragma mark home protocol

-(CGFloat)height
{
    return 70;
}

-(void)registercel:(UICollectionView*)col
{
    [col registerClass:[vhomeceltitle class] forCellWithReuseIdentifier:celname];
}

-(UICollectionViewCell*)dequeue:(UICollectionView*)col index:(NSIndexPath*)index
{
    return [col dequeueReusableCellWithReuseIdentifier:celname forIndexPath:index];
}

-(BOOL)selectable
{
    return NO;
}

@end