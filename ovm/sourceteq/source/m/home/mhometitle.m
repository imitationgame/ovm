#import "mhometitle.h"

@implementation mhometitle
{
    NSString *celname;
}

-(instancetype)init:(NSString*)title fontsize:(CGFloat)fontsize
{
    self = [super init];
    
    celname = @"title";
    self.title = title;
    self.fontsize = fontsize;
    
    return self;
}

#pragma mark -
#pragma mark home protocol

-(CGSize)sizeforwidth:(CGFloat)width
{
    return CGSizeMake(width, 45);
}

-(void)registercel:(UICollectionView*)col
{
    [col registerClass:[vhomeceltitle class] forCellWithReuseIdentifier:celname];
}

-(UICollectionViewCell*)dequeue:(UICollectionView*)col index:(NSIndexPath*)index
{
    vhomeceltitle *cel = [col dequeueReusableCellWithReuseIdentifier:celname forIndexPath:index];
    [cel.lbl setText:self.title];
    [cel.lbl setFont:[UIFont fontWithName:fontname size:self.fontsize]];
    
    return cel;
}

-(BOOL)selectable
{
    return NO;
}

@end