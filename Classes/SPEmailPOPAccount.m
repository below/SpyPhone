//
//  SPEMailPOPAccount.m
//  SpyPhone
//
//  Created by Nicolas Seriot on 11/20/09.
//  Copyright 2009. 
//  Licensed under GPL 2.0 http://www.gnu.org/licenses/gpl-2.0.txt
//

#import "SPEmailPOPAccount.h"


@implementation SPEmailPOPAccount

+ (SPEmailAccount *)accountWithDictionary:(NSDictionary *)d {
	SPEmailPOPAccount *account = [[SPEmailPOPAccount alloc] init];
	
	account.type = [d valueForKey:@"Short Type String"];
	account.fullname = [d valueForKey:@"FullUserName"];
	account.email = [[d valueForKey:@"EmailAddresses"] lastObject];
	account.hostname = [d valueForKey:@"Hostname"];
	account.username = [d valueForKey:@"Username"];
	
	return [account autorelease];
}

@end
