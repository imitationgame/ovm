#import "mhomespace.h"

@implementation mhomespace
{
    NSString *celname;
}

-(instancetype)init:(CGFloat)height
{
    self = [super init];
    
    celname = @"space";
    self.height = height;
    
    return self;
}

#pragma mark -
#pragma mark home protocol

-(CGSize)sizeforwidth:(CGFloat)width
{
    return CGSizeMake(width, self.height);
}

-(void)registercel:(UICollectionView*)col
{
    [col registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:celname];
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