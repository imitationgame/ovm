#import "mhomebanners.h"

@implementation mhomebanners
{
    NSString *celname;
    CGFloat imagewidth;
    CGFloat imageheight;
}

-(instancetype)init:(NSString*)flyer
{
    self = [super init];

    celname = @"banners";
    self.image = [UIImage imageNamed:flyer];
    imagewidth = self.image.size.width;
    imageheight = self.image.size.height;
    
    return self;
}

#pragma mark -
#pragma mark home protocol

-(CGSize)sizeforwidth:(CGFloat)width
{
    CGFloat ratiowidth = imagewidth / width;
    CGFloat validwidth;
    CGFloat validheight;
    
    if(ratiowidth >= 1)
    {
        validwidth = imagewidth / ratiowidth;
        validheight = imageheight / ratiowidth;
    }
    else
    {
        validwidth = imagewidth;
        validheight = imageheight;
    }
    
    validheight += 10;
    
    return CGSizeMake(validwidth, validheight);
}

-(void)registercel:(UICollectionView*)col
{
    [col registerClass:[vhomecelbanner class] forCellWithReuseIdentifier:celname];
}

-(UICollectionViewCell*)dequeue:(UICollectionView*)col index:(NSIndexPath*)index
{
    vhomecelbanner *cel = [col dequeueReusableCellWithReuseIdentifier:celname forIndexPath:index];
    [cel.image setImage:self.image];
    
    return cel;
}

-(BOOL)selectable
{
    return NO;
}

@end