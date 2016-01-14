#import "vhome.h"

@implementation vhome
{
    CGFloat logoheight;
}

-(instancetype)init
{
    self = [super init];
    [self setBackgroundColor:[UIColor colorWithWhite:0.98 alpha:1]];
    
    logoheight = 300;
    
    vlogo *logo = [[vlogo alloc] init];
    self.logo = logo;
    
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    [flow setFooterReferenceSize:CGSizeZero];
    [flow setHeaderReferenceSize:CGSizeZero];
    [flow setMinimumInteritemSpacing:0];
    [flow setMinimumLineSpacing:10];
    [flow setScrollDirection:UICollectionViewScrollDirectionVertical];
    [flow setSectionInset:UIEdgeInsetsMake(logoheight + 10, 0, 20, 0)];
    
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flow];
    [collection setBackgroundColor:[UIColor clearColor]];
    [collection setClipsToBounds:YES];
    [collection setShowsHorizontalScrollIndicator:NO];
    [collection setShowsVerticalScrollIndicator:NO];
    [collection setAlwaysBounceVertical:YES];
    [collection setDelegate:self];
    [collection setDataSource:self];
    [collection registerClass:[vhomecel class] forCellWithReuseIdentifier:celid];
    [collection registerClass:[vhomeceltitle class] forCellWithReuseIdentifier:headerid];
    [collection registerClass:[vhomecelbanner class] forCellWithReuseIdentifier:footerid];
    [collection setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    [self addSubview:logo];
    [self addSubview:collection];
    
    NSDictionary *views = @{@"logo":logo, @"col":collection};
    NSDictionary *metrics = @{@"logoheight":@(logoheight)};
    
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[logo]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[logo(logoheight)]" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[col]-0-|" options:0 metrics:metrics views:views]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[col]-0-|" options:0 metrics:metrics views:views]];
    
    return self;
}

#pragma mark -
#pragma mark col del

-(CGSize)collectionView:(UICollectionView*)col layout:(UICollectionViewLayout*)layout sizeForItemAtIndexPath:(NSIndexPath*)index
{
    return CGSizeMake(self.bounds.size.width, 60);
}

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)col
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView*)col numberOfItemsInSection:(NSInteger)section
{
    return 1;
}

-(UICollectionViewCell*)collectionView:(UICollectionView*)col cellForItemAtIndexPath:(NSIndexPath*)index
{
    vhomecel *cel;
    NSInteger item = index.item;
    
    if(item > 1)
    {
        cel = [col dequeueReusableCellWithReuseIdentifier:celid forIndexPath:index];
    }
    else if(item == 1)
    {
        
    }
    else
    {
        cel = [col dequeueReusableCellWithReuseIdentifier:headerid forIndexPath:index];
    }
    
    return cel;
}

@end