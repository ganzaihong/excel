//
//  SPBattertStatusCollectCell.h
//  Alarm
//
//  Created by ganzaihong on 2018/6/12.
//  Copyright © 2018年 Sspaas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SPBatteryStatusModel.h"
#import "Masonry.h"
@interface SPBattertStatusCollectCell : UICollectionViewCell
/**
 * model
 */
@property(nonatomic,strong)SPBatteryStatusModel *statusModel;
@end
