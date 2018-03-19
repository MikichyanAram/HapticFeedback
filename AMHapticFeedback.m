//
//  AMHapticFeedback.m
//  AMHapticFeedback
//
//  Created by Aram Mikichyan on 3/20/18.
//  Copyright © 2018 Aram Mikichyan. All rights reserved.
//

#import "AMHapticFeedback.h"

@implementation AMHapticFeedback


+ (void)generateFeedback:(AMFeedbackType)type {
    
    if ([[UIDevice currentDevice] systemVersion].floatValue < 10.0) {
        return;
    }
    
    switch (type) {
        case AMFeedbackTypeSelection:
            [self generateSelectionFeedback];
            break;
        case AMFeedbackTypeImpactLight:
            [self generateImpactFeedback:UIImpactFeedbackStyleLight];
            break;
        case AMFeedbackTypeImpactMedium:
            [self generateImpactFeedback:UIImpactFeedbackStyleMedium];
            break;
        case AMFeedbackTypeImpactHeavy:
            [self generateImpactFeedback:UIImpactFeedbackStyleHeavy];
            break;
        case AMFeedbackTypeNotificationSuccess:
            [self generateNotificationFeedback:UINotificationFeedbackTypeSuccess];
            break;
        case AMFeedbackTypeNotificationWarning:
            [self generateNotificationFeedback:UINotificationFeedbackTypeWarning];
            break;
        case AMFeedbackTypeNotificationError:
            [self generateNotificationFeedback:UINotificationFeedbackTypeError];
            break;
        default:
            break;
    }
}

+ (void)generateImpactFeedback:(UIImpactFeedbackStyle)style {
    UIImpactFeedbackGenerator *generator = [[UIImpactFeedbackGenerator alloc] initWithStyle:style];
    [generator prepare];
    [generator impactOccurred];
    generator = nil;
}

+ (void)generateNotificationFeedback:(UINotificationFeedbackType)notificationType {
    UINotificationFeedbackGenerator *generator = [[UINotificationFeedbackGenerator alloc] init];
    [generator prepare];
    [generator notificationOccurred:notificationType];
    generator = nil;
}

+ (void)generateSelectionFeedback {
    UISelectionFeedbackGenerator *generator = [[UISelectionFeedbackGenerator alloc] init];
    [generator prepare];
    [generator selectionChanged];
    generator = nil;
}


@end
