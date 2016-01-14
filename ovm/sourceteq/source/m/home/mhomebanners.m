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
    vhomecelbanner *cel = [col dequeueReusableCellWithReuseIdentifier:celname forIndexPath:index];
    [cel.image setImage:[UIImage imageNamed:self.flyer]];
    
    return cel;
}

-(BOOL)selectable
{
    return NO;
}

@end