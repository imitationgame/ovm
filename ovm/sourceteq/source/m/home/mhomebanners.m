#import "mhomebanners.h"

@implementation mhomebanners
{
    NSString *celname;
}

-(instancetype)init:(NSString*)flyer
{
    self = [super init];

    self.flyer = flyer;
    celname = @"banners";
    
    return self;
}

#pragma mark -
#pragma mark home protocol

-(CGFloat)height
{
    return 290;
}

-(void)registercel:(UICollectionView*)col
{
    [col registerClass:[vhomecelbanner class] forCellWithReuseIdentifier:celname];
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