#import "ForgetYourUpdate.h"

__attribute__((constructor)) int main(int argc, char **argv, char **envp)
{
	[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"MobileAssetSUAllowOSVersionChange"];
	[[NSUserDefaults standardUserDefaults] setObject:@NO forKey:@"MobileAssetSUAllowSameVersionFullReplacement"];
	[[NSUserDefaults standardUserDefaults] setObject:@"NULL" forKey:@"MobileAssetServerURL-com.apple.MobileAsset.SoftwareUpdate"];
	[[NSUserDefaults standardUserDefaults] setObject:@"MULL" forKey:@"MobileAssetServerURL-com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain"];
}