//
//  ViewController.m
//  SPExcel
//
//  Created by ganzaihong on 2018/6/28.
//  Copyright © 2018年 GZH. All rights reserved.
//

#import "ViewController.h"
#import "Masonry.h"
#import "SPBatteryStatusModel.h"
#define kSCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define kSCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000)>>16))/255.0 green:((float)((rgbValue & 0xFF00)>>8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]
@interface ViewController ()
/**
 *
 */
@property(nonatomic,strong)NSMutableArray *arrays;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addDataArrays];
    [self addUI];
    [self add_MasonryBattery];
    
}


-(void)addUI{
    CGFloat batteryStatusCellWith = ( kSCREEN_WIDTH - 15 * 2 - 12 )/7;
    UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc]init];
    layout.minimumLineSpacing =2;
    layout.minimumInteritemSpacing = 2;
    layout.itemSize = CGSizeMake(batteryStatusCellWith, 100);
    _batteryStatusCollectionView = [[SPBatteryStatusCollectionView alloc]initWithFrame:CGRectZero collectionViewLayout:layout];
    _batteryStatusCollectionView.layer.borderWidth = 2;
    _batteryStatusCollectionView.layer.borderColor = UIColorFromRGB(0xE5E6E7).CGColor;
    _batteryStatusCollectionView.backgroundColor = UIColorFromRGB(0xE5E6E7);
    [self.view addSubview:_batteryStatusCollectionView];
    _batteryStatusCollectionView.dataArrays = self.arrays;
    _batteryStatusCollectionView.scrollEnabled = YES;
    
    
}

-(void)add_MasonryBattery{
    [self.batteryStatusCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(54);
        make.left.mas_equalTo(self.view.mas_left).offset(15);
        make.right.mas_equalTo(self.view.mas_right).offset(-15);
        make.height.mas_equalTo(100 * 7 + 6 * 2 + 12);
        
    }];
}
-(void)addDataArrays
{
    SPBatteryStatusModel *model = [[SPBatteryStatusModel alloc]init];
    model.title = @"";
    model.voltage = @"电压V";
    model.temperature= @"温度℃";
    model.resistance = @"电阻Ω";
    NSMutableArray *arr = [NSMutableArray array];
    for (int i = 0 ; i < 42; i ++) {
        SPBatteryStatusModel *model = [[SPBatteryStatusModel alloc]init];
        model.title =[NSString stringWithFormat:@"第%d节",i];
        model.voltage = [NSString stringWithFormat:@"%.1fV",i * 2.3];
        model.temperature= [NSString stringWithFormat:@"%.1f℃",i * 3.1];
        model.resistance = [NSString stringWithFormat:@"%dΩ",i * 8];
        [arr addObject:model];
    }
    
    for (int i = 0; i < arr.count;  i ++) {
        if (i % 7 == 0 ) {
            [arr insertObject:model atIndex:i];
        }
    }
    
    
    self.arrays = arr;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
