#import "ForgetYourUpdate.h"

%group iOS13 // 13-16 Works confirmed. (Palera1n rootless on iOS 16.2).
	%hook PSGGeneralController
		-(void)viewWillAppear:(BOOL)arg1 { %orig; [self removeSpecifierID:@"SOFTWARE_UPDATE_LINK" animated:NO]; }
	%end
%end

%group iOS12 // I have no idea, if this works iOS 11 and older versions.
	%hook PSUIGeneralController
		-(void)viewDidAppear:(BOOL)arg1 { %orig; [self removeSpecifierID:@"SOFTWARE_UPDATE_LINK" animated:NO]; }
	%end
%end

%ctor { if(SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"13.0")) { %init(iOS13); } else { %init(iOS12); } }