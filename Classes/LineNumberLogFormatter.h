//
//  LineNumberLogFormatter.h
//  DboxCloudMan
//
//  Created by Jerry on 8/6/15.
//  Copyright (c) 2015 VoaygerApps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CocoaLumberjack.h>

@interface LineNumberLogFormatter : NSObject<DDLogFormatter> {
    NSUInteger loggerCount;
    NSDateFormatter *threadUnsafeDateFormatter;
}

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage;

@end
