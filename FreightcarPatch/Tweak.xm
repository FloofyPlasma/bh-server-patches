%config(generator=internal);

#import <Foundation/Foundation.h>

%hook FreightCar

- (int)itemType {
    NSLog(@"[FreightcarPatch] Redirecting itemType to SteamTrain");
    return 205;
}

- (int)objectType {
    NSLog(@"[FreightcarPatch] Redirecting objectType to SteamTrain");
    return 42;
}

%end
