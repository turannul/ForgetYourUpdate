#import "ForgetYourUpdate.h"

%group iOS15 // 15-16 Works confirmed. (Palera1n rootless on iOS 16.2).
	%hook PSGGeneralController
		-(void)viewWillAppear:(BOOL)arg1 { %orig; [self removeSpecifierID:@"SOFTWARE_UPDATE_LINK" animated:NO]; }
	%end
%end

%ctor { %init(iOS15); }