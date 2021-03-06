#import "updater.h"

@implementation updater

NSString *documents;

+(void)launch
{
    [updater update];
    [[analytics singleton] start];
}

#pragma mark private

+(void)update
{
    documents = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)[0];
    NSDictionary *defaults = [tools defaultdict];
    NSUserDefaults *properties = [NSUserDefaults standardUserDefaults];
    NSInteger def_version = [defaults[@"version"] integerValue];
    NSInteger pro_version = [[properties valueForKey:@"version"] integerValue];
    
    if(def_version != pro_version)
    {
        [properties setValue:@(def_version) forKeyPath:@"version"];        
        
        if(pro_version < 10)
        {
            [updater firsttime:defaults];
        }
    }
}

+(void)firsttime:(NSDictionary*)plist
{
    NSNumber *appid = plist[@"appid"];
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    
    NSUserDefaults *userdef = [NSUserDefaults standardUserDefaults];
    
    [userdef removePersistentDomainForName:NSGlobalDomain];
    [userdef removePersistentDomainForName:NSArgumentDomain];
    [userdef removePersistentDomainForName:NSRegistrationDomain];
    [userdef setValue:appid forKey:@"appid"];
    [userdef setValue:[[NSUUID UUID] UUIDString] forKey:@"uuid"];
    [userdef setValue:dictionary forKey:@"settings"];
    [userdef synchronize];
}

@end