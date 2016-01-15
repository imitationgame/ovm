#import "mcontactcall.h"

@implementation mcontactcall

#pragma mark -
#pragma mark contact del

-(NSString*)title
{
    return NSLocalizedString(@"contact_cel_call", nil);
}

-(void)selected
{
    NSURL *phone = [NSURL URLWithString:@"tel:52643745"];
    
    if([[UIApplication sharedApplication] canOpenURL:phone])
    {
        [[UIApplication sharedApplication] openURL:phone];
    }
    else
    {
        [calert show:NSLocalizedString(@"contact_cel_call_not", nil)];
    }
    
    [[analytics singleton] trackevent:ga_event_phonecall action:ga_action_optin label:@""];
}

@end