#import "mabout.h"

@implementation mabout

-(instancetype)init
{
    self = [super init];
    
    NSArray *raw = [NSArray arrayWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"about" withExtension:@"plist"]];
    NSInteger countraw = raw.count;
    
    for(NSInteger i = 0; i < countraw; i++)
    {
        NSDictionary *inraw = raw[i];
        NSString *title = inraw[@"title"];
        NSString *descr = inraw[@"descr"];
    }
    
    return self;
}

@end