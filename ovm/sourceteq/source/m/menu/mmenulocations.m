#import "mmenulocations.h"

@implementation mmenulocations

#pragma mark -
#pragma mark menu protocol

-(Class)controller
{
    return [clocations class];
}

-(NSString*)title
{
    return NSLocalizedString(@"home_menu_locations", nil);
}

-(NSString*)image
{
    return @"location";
}

@end