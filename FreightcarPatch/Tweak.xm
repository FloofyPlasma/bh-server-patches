%config(generator=internal);

#import <Foundation/Foundation.h>

@interface FreightCar
- (void)setNeedsRemoved:(BOOL)removed;
- (void)dealloc;
@end

%hook FreightCar

- (instancetype)initWithWorld:(int)arg2 dynamicWorld:(int)arg3 atPosition:(int)arg4 cache:(int)arg5 saveDict:(int)arg6 placedByClient:(int)arg7 {
    [self setNeedsRemoved:YES];
    [self dealloc];
    return nil;
}

- (instancetype)initWithWorld:(int)arg2 dynamicWorld:(int)arg3 cache:(int)arg4 netData:(int)arg5 {
    [self setNeedsRemoved:YES];
    [self dealloc];
    return nil;
}

- (instancetype)initWithWorld:(int)arg2 dynamicWorld:(int)arg3 saveDict:(int)arg4 chestSaveDict:(int)arg5 cache:(int)arg6 {
    [self setNeedsRemoved:YES];
    [self dealloc];
    return nil;
}

%end
