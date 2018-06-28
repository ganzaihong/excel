//
//  SPBatteryStatusModel.h
//  Alarm
//
//  Created by ganzaihong on 2018/6/26.
//  Copyright © 2018年 Sspaas. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SPBatteryStatusModel : NSObject
/**
 * title
 */
@property(nonatomic,copy)NSString  *title;

/**
 * 电压
 */
@property(nonatomic,copy)NSString * voltage ;

/**
 * 温度
 */
@property(nonatomic,copy)NSString *temperature;

/**
 * 电阻
 */
@property(nonatomic,copy)NSString *resistance;

@end
