#import "mmenuservices.h"

@implementation mmenuservices

#pragma mark -
#pragma mark menu protocol

-(Class)controller
{
    return [cservices class];
}

-(NSString*)title
{
    return NSLocalizedString(@"home_menu_services", nil);
}

-(NSString*)image
{
    return @"services";
}

@end