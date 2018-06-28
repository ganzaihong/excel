
//
//  SPBatteryStatusCollectionView.m
//  Alarm
//
//  Created by ganzaihong on 2018/6/12.
//  Copyright © 2018年 Sspaas. All rights reserved.
//

#import "SPBatteryStatusCollectionView.h"
#import "SPBattertStatusCollectCell.h"
#import "SPBatteryStatusModel.h"
NSString * const batteryCell   = @"batteryCell";
@implementation SPBatteryStatusCollectionView

-(instancetype)initWithFrame:(CGRect)frame collectionViewLayout:(UICollectionViewLayout *)layout
{
    if (self = [super initWithFrame:frame collectionViewLayout:layout]) {
        [self addBase];
    }
    return self;
}

#pragma mark - # addBase
-(void)addBase{
    
    self.delegate = self;
    self.dataSource = self;
   // self.scrollEnabled = NO;
    self.showsVerticalScrollIndicator = NO;
    [self registerClass:[SPBattertStatusCollectCell class] forCellWithReuseIdentifier:batteryCell];
 
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.dataArrays.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    SPBattertStatusCollectCell *layout =  [collectionView dequeueReusableCellWithReuseIdentifier:batteryCell forIndexPath:indexPath ];
    layout.backgroundColor = [UIColor clearColor];
   // layout.backgroundColor = [UIColor redColor];
    SPBatteryStatusModel *model = self.dataArrays[indexPath.row];
    layout.statusModel = model;
    return layout;
}

@end
