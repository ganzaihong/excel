//
//  SPBatteryStatusCollectionView.h
//  Alarm
//
//  Created by ganzaihong on 2018/6/12.
//  Copyright © 2018年 Sspaas. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SPBatteryStatusCollectionView : UICollectionView<UICollectionViewDelegate,UICollectionViewDataSource>
/**
 * dataArrays
 */
@property(nonatomic,strong)NSArray *dataArrays;
@end
