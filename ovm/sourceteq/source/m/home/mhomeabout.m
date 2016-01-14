#import "mhomeabout.h"

@implementation mhomeabout
{
    NSString *celname;
}

-(instancetype)init
{
    self = [super init];
    
    celname = @"about";
    
    return self;
}

#pragma mark -
#pragma mark home protocol

-(CGFloat)height
{
    return 80;
}

-(void)registercel:(UICollectionView*)col
{
    [col registerClass:[vhomecel class] forCellWithReuseIdentifier:celname];
}

-(UICollectionViewCell*)dequeue:(UICollectionView*)col index:(NSIndexPath*)index
{
    vhomecel *cel = [col dequeueReusableCellWithReuseIdentifier:celname forIndexPath:index];
    [cel.lbl setText:NSLocalizedString(@"home_cel_about", nil)];
    
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