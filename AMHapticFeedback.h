//
//  AMHapticFeedback.h
//  AMHapticFeedback
//
//  Created by Aram Mikichyan on 3/20/18.
//  Copyright © 2018 Aram Mikichyan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef enum {
    AMFeedbackTypeSelection,
    AMFeedbackTypeImpactLight,
    AMFeedbackTypeImpactMedium,
    AMFeedbackTypeImpactHeavy,
    AMFeedbackTypeNotificationSuccess,
    AMFeedbackTypeNotificationWarning,
    AMFeedbackTypeNotificationError
} AMFeedbackType;

@interface AMHapticFeedback : NSObject

+ (void)generateFeedback:(AMFeedbackType)type;

@end
