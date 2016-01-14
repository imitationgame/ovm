#import "mhomelocations.h"

@implementation mhomelocations
{
    NSString *celname;
}

-(instancetype)init
{
    self = [super init];
    
    celname = @"locations";
    
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
    [col registerClass:[vhomecel class] forCellWithReuseIdentifier:celname];
}

-(UICollectionViewCell*)dequeue:(UICollectionView*)col index:(NSIndexPath*)index
{
    vhomecel *cel = [col dequeueReusableCellWithReuseIdentifier:celname forIndexPath:index];
    [cel.lbl setText:NSLocalizedString(@"home_cel_locations", nil)];
    
    return cel;
}

-(BOOL)selectable
{
    return YES;
}

-(UIViewController*)controller
{
    return [[UIViewController alloc] init];
}

@end