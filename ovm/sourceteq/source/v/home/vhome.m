#import "vhome.h"

@implementation vhome
{
    CGFloat logoheight;
    CGFloat logominheight;
}

-(instancetype)init
{
    self = [super init];
    [self setBackgroundColor:[UIColor colorWithWhite:0.98 alpha:1]];
    
    logoheight = 300;
    logominheight = 20;
    self.model = [[mhome alloc] init];
    
    vlogo *logo = [[vlogo alloc] init];
    self.logo = logo;
    
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    [flow setFooterReferenceSize:CGSizeZero];
    [flow setHeaderReferenceSize:CGSizeZero];
    [flow setMinimumInteritemSpacing:0];
    [flow setMinimumLineSpacing:10];
    [flow setScrollDirection:UICollectionViewScrollDirectionVertical];
    [flow setSectionInset:UIEdgeInsetsMake(logoheight + 10, 0, 30, 0)];
    
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flow];
    [collection setBackgroundColor:[UIColor clearColor]];
    [collection setClipsToBounds:YES];
    [collection setShowsHorizontalScrollIndicator:NO];
    [collection setShowsVerticalScrollIndicator:NO];
    [collection setAlwaysBounceVertical:YES];
    [collection setDelegate:self];
    [collection setDataSource:self];
    [collection setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.model registercels:collection];
    
    [self addSubview:collection];
    [self addSubview:logo];
    
    NSDictionary *views = @{@"logo":logo, @"col":collection};
    NSDictionary *metrics = @{@"logoheight":@(logoheight)};
    
    self.logoconst = [NSLayoutConstraint constraintWithItem:logo attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:logoheight];
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[logo]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[logo]" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[col]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[col]-0-|" options:0 metrics:metrics views:views]];
    [logo addConstraint:self.logoconst];
    
    return self;
}

#pragma mark functionality

-(void)resizetopper:(CGFloat)_offset
{
    CGFloat newheight = logoheight - _offset;
    
    if(newheight <= logominheight)
    {
        newheight = logominheight;
    }
    
    self.logoconst.constant = newheight;
}

#pragma mark -
#pragma mark col del

-(void)scrollViewDidScroll:(UIScrollView*)_scroll
{
    [self resizetopper:_scroll.contentOffset.y];
}

-(CGSize)collectionView:(UICollectionView*)col layout:(UICollectionViewLayout*)layout sizeForItemAtIndexPath:(NSIndexPath*)index
{
    return CGSizeMake(self.bounds.size.width, [self.model heightforitem:index.item]);
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)col
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView*)col numberOfItemsInSection:(NSInteger)section
{
    return [self.model count];
}

-(UICollectionViewCell*)collectionView:(UICollectionView*)col cellForItemAtIndexPath:(NSIndexPath*)index
{
    return [self.model dequeuecel:col index:index];
}

@end