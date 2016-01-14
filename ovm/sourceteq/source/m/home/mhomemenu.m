#import "mhomemenu.h"

@implementation mhomemenu
{
    NSString *celname;
}

-(instancetype)init
{
    self = [super init];
    
    celname = @"menu";
    
    return self;
}

#pragma mark -
#pragma mark home protocol

-(CGFloat)height
{
    return 60;
}

-(void)registercel:(UICollectionView*)col
{
    [col registerClass:[vhomecelmenu class] forCellWithReuseIdentifier:celname];
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