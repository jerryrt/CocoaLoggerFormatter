//
//  LineNumberLogFormatter.m
//  DboxCloudMan
//
//  Created by Jerry on 8/6/15.
//  Copyright (c) 2015 VoaygerApps. All rights reserved.
//

#import "LineNumberLogFormatter.h"

@implementation LineNumberLogFormatter

- (id)init {
    if((self = [super init])) {
        threadUnsafeDateFormatter = [[NSDateFormatter alloc] init];
        [threadUnsafeDateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss:SSS"];
    }
    return self;
}

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage
{
    NSString *logLevel;
    switch (logMessage->_flag) {
        case DDLogFlagError    : logLevel = @"E"; break;
        case DDLogFlagWarning  : logLevel = @"W"; break;
        case DDLogFlagInfo     : logLevel = @"I"; break;
        case DDLogFlagDebug    : logLevel = @"D"; break;
        default                : logLevel = @"V"; break;
    }
    
    
    NSString *dateAndTime = [threadUnsafeDateFormatter stringFromDate:(logMessage->_timestamp)];
    
    return [NSString stringWithFormat:@"%@ [%@:%@]%@(%lu):%@", dateAndTime, logMessage->_threadID, logLevel, logMessage->_function, logMessage->_line, logMessage->_message];
}

- (void)didAddToLogger:(id <DDLogger>)logger {
    loggerCount++;
    NSAssert(loggerCount <= 1, @"This logger isn't thread-safe");
}

- (void)willRemoveFromLogger:(id <DDLogger>)logger {
    loggerCount--;
}

@end
