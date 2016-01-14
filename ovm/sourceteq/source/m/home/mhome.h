#import "appdel.h"

@interface mhome:NSObject

-(NSInteger)count;
-(CGFloat)heightforitem:(NSInteger)item;
-(void)registercels:(UICollectionView*)col;
-(UICollectionViewCell*)dequeuecel:(UICollectionView*)col index:(NSInteger)index;
-(BOOL)selectable:(NSInteger)item;

@end