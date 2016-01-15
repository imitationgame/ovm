#import "mmenucontact.h"

@implementation mmenucontact

#pragma mark -
#pragma mark menu protocol

-(Class)controller
{
    return [ccontact class];
}

-(NSString*)title
{
    return NSLocalizedString(@"home_menu_contact", nil);
}

-(NSString*)image
{
    return @"phone";
}

@end