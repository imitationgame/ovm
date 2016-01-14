#import "vabout.h"

@implementation vabout

-(instancetype)init
{
    self = [super init];
    [self setBackgroundColor:[UIColor whiteColor]];
    
    self.model = [[mabout alloc] init];
    
    return self;
}

#pragma mark -
#pragma mark col del

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)col
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView*)col numberOfItemsInSection:(NSInteger)section
{
    return [self.model count];
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)col cellForItemAtIndexPath:(NSIndexPath*)index
{
    vi
}

@end