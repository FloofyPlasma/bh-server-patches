%config(generator=internal);

#import <Foundation/Foundation.h>

%hook BHServer

- (void)match:(id)match didReceiveData:(id)data fromPlayer:(id)player {
    if (!data || [data length] == 0) {
        NSLog(@"[BadPacketCrashPatch] Detected bad packet, preventing crash.\nPlayer: %@", player);
        return;
    }

    %orig;
}

%end
