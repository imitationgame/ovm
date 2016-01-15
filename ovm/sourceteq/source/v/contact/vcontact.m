#import "vcontact.h"

@implementation vcontact

-(instancetype)init
{
    self = [super init];
    [self setBackgroundColor:[UIColor whiteColor]];

    self.model = [[mcontact alloc] init];
    
    UICollectionViewFlowLayout *flow = [[UICollectionViewFlowLayout alloc] init];
    
    UICollectionView *collection = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flow];
    
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

-(UICollectionViewCell*)collectionView:(UICollectionView*)col cellForItemAtIndexPath:(NSIndexPath*)index
{
    vcontactcel *cel = [col dequeueReusableCellWithReuseIdentifier:celid forIndexPath:index];
    [cel.lbl setText:[[self.model item:index.item] title]];
    
    return cel;
}

-(void)collectionView:(UICollectionView*)col didSelectItemAtIndexPath:(NSIndexPath*)index
{
    [[self.model item:index.item] selected];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, NSEC_PER_SEC), dispatch_get_main_queue(),
                   ^(void)
                   {
                       [col reloadData];
                   });
}

@end