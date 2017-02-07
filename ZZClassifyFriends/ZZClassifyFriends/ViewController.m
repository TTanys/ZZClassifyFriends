//
//  ViewController.m
//  ZZClassifyFriends
//
//  Created by zhajianjun on 2017/1/22.
//  Copyright © 2017年 TTanys. All rights reserved.
//

#import "ViewController.h"
#import "UIView+frame.h"
#import "FriendCell.h"
#import "FriendModel.h"
#import "SubCell.h"
#import "SubModel.h"

static NSString *friendCellIdent = @"ZZ_CELL_FRIEND";
static NSString *subCellIdent = @"ZZ_CELL_SUB";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView *_tableView;
    NSMutableArray *_selectedArr;//二级列表是否展开状态
    NSMutableArray *_groupTitArr;//分组标题
    NSMutableArray *_dataArr;
    NSMutableArray *_groupArr0;
    NSMutableArray *_groupArr1;
    NSMutableArray *_groupArr2;
    NSMutableArray *_groupArr3;
    NSMutableArray *_groupArr4;
    NSMutableArray *_groupArr5;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"好友列表";
    self.view.backgroundColor = [UIColor whiteColor];
    //简单点说就是automaticallyAdjustsScrollViewInsets会根据所在界面的status bar，navigationbar，与tabbar的高度，自动调整scrollview的 inset,设置为no，不让viewController调整，我们自己修改布局即可
    //self.navigationController.navigationBarHidden = YES;
    //self.automaticallyAdjustsScrollViewInsets = NO;
    
    _selectedArr = [NSMutableArray array];
    _groupTitArr = [NSMutableArray arrayWithObjects:@"兄弟",@"家人",@"大学室友",@"高中同学",@"老乡",@"朋友", nil];
    _groupArr0 = [NSMutableArray arrayWithObjects:
                  [FriendModel friendModelWithHeadImg:@"0" name:@"德德" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"1" name:@"黑皮" info:@"高岭才子，移动端架构大神，大长腿，哈子狂躁" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"2" name:@"唐儿子" info:@"迷你版艾弗森，corss over狂热者，爱喷垃圾话" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"3" name:@"熊儿子" info:@"浓缩版詹姆斯，有身体没头脑，团队篮球中的毒瘤，吹牛逼" net:@"4G" open:NO], nil];
    _groupArr1 = [NSMutableArray arrayWithObjects:
                  [FriendModel friendModelWithHeadImg:@"5" name:@"段誉" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"6" name:@"乔峰" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"7" name:@"沈公子" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"8" name:@"天山童姥" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"9" name:@"阿朱" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO], nil];
    _groupArr2 = [NSMutableArray arrayWithObjects:
                  [FriendModel friendModelWithHeadImg:@"10" name:@"邓超" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"11" name:@"孙俪" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"12" name:@"成龙" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"13" name:@"李连杰" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO], nil];
    _groupArr3 = [NSMutableArray arrayWithObjects:
                  [FriendModel friendModelWithHeadImg:@"14" name:@"路飞" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"15" name:@"索隆" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"16" name:@"香吉" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"17" name:@"娜美" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"18" name:@"布鲁克" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO], nil];
    _groupArr4 = [NSMutableArray arrayWithObjects:
                  [FriendModel friendModelWithHeadImg:@"19" name:@"鸣人" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"20" name:@"佐助" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"21" name:@"小李" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"22" name:@"卡卡西" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"23" name:@"大蛇丸" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO], nil];
    _groupArr5 = [NSMutableArray arrayWithObjects:
                  [FriendModel friendModelWithHeadImg:@"24" name:@"吉泽明步" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"25" name:@"波多野结衣" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"26" name:@"苍井空" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"27" name:@"武藤兰" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO],
                  [FriendModel friendModelWithHeadImg:@"28" name:@"小泽玛莉亚" info:@"慧德学霸，校草，iOS技术大牛，身体强壮，天赋异禀" net:@"4G" open:NO], nil];
    _dataArr = [NSMutableArray arrayWithObjects:_groupArr0,_groupArr1,_groupArr2,_groupArr3,_groupArr4,_groupArr5, nil];
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, ScreenWidth, ScreenHeight) style:UITableViewStylePlain];
    //_tableView.backgroundColor = [UIColor redColor];
    [_tableView registerClass:[FriendCell class] forCellReuseIdentifier:friendCellIdent];
    [_tableView registerClass:[SubCell class] forCellReuseIdentifier:subCellIdent];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //_tableView.separatorInset = UIEdgeInsetsZero;
    _tableView.tableFooterView = [[UIView alloc] init];
    [self.view addSubview:_tableView];
    
}

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *string = [NSString stringWithFormat:@"%ld",section];
    if ([_selectedArr containsObject:string]) {
        return ((NSMutableArray *)_dataArr[section]).count;
    }
    return 0;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _groupTitArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if ([_dataArr[indexPath.section][indexPath.row] isKindOfClass:[FriendModel class]]) {
        FriendCell *cell = [tableView dequeueReusableCellWithIdentifier:friendCellIdent];
        //cell.selectionStyle = UITableViewCellSelectionStyleBlue;
        //cell.separatorInset = UIEdgeInsetsZero;
        
        cell.friendModel = _dataArr[indexPath.section][indexPath.row];
        
        return cell;
    } else {
        SubCell *cell = [tableView dequeueReusableCellWithIdentifier:subCellIdent];
        
        cell.subModel = _dataArr[indexPath.section][indexPath.row];
        
        return cell;
    }
    
}

#pragma mark - UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if ([_dataArr[indexPath.section][indexPath.row] isKindOfClass:[FriendModel class]]) {
        return 60;
    } else {
        return 40;
    }
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    UIView *headView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.width, 40)];
    headView.backgroundColor = [UIColor whiteColor];
    headView.tag = 100+section;
    
    UIImageView *arrowImgView = [[UIImageView alloc] initWithFrame:CGRectMake(5, (headView.height-15)/2.0, 15, 15)];
    arrowImgView.tag = 20000+section;
    //判断是不是选中状态
    NSString *string = [NSString stringWithFormat:@"%ld",section];
    if ([_selectedArr containsObject:string]) {
        arrowImgView.image = [UIImage imageNamed:@"arrow_down"];
    } else {
        arrowImgView.image = [UIImage imageNamed:@"arrow_right"];
    }
    [headView addSubview:arrowImgView];
    
    UILabel *titLab = [[UILabel alloc] initWithFrame:CGRectMake(20, (headView.height-30)/2.0, headView.width-20-40, 30)];
    titLab.text = [_groupTitArr objectAtIndex:section];
    [headView addSubview:titLab];
    
    UIImageView *lineImg = [[UIImageView alloc] initWithFrame:CGRectMake(0, headView.height-1, headView.width, 1)];
    lineImg.image = [UIImage imageNamed:@"line"];
    [headView addSubview:lineImg];
    
    //添加点击手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(headViewTap:)];
    [headView addGestureRecognizer:tap];
    
    return headView;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    return 40;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSIndexPath *path = nil;
    
    if ([_dataArr[indexPath.section][indexPath.row] isKindOfClass:[FriendModel class]]) {
        path = [NSIndexPath indexPathForItem:(indexPath.row+1) inSection:indexPath.section];
        NSLog(@"---FriendCell---");
    } else {
        NSLog(@"---SubCell---");
        return;
    }
    
    FriendModel *model = _dataArr[indexPath.section][indexPath.row];
    if (model.isOpen) {
        model.open = NO;
        
        [_dataArr[indexPath.section] removeObjectAtIndex:path.row];
        
        [tableView beginUpdates];
        [tableView deleteRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationMiddle];
        [tableView endUpdates];
    } else {
        model.open = YES;
        
        SubModel *subModel = [SubModel subModelWithVoice:@"voice" video:@"video" photo:@"photo" emoji:@"emoji"];
        [_dataArr[indexPath.section] insertObject:subModel atIndex:path.row];
        
        [tableView beginUpdates];
        [tableView insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationMiddle];
        [tableView endUpdates];
    }
}

#pragma mark - custom method
- (void)headViewTap:(UITapGestureRecognizer *)tap{
    NSString *string = [NSString stringWithFormat:@"%ld",tap.view.tag-100];
    //判断_selectedArr中是否存在string，从而判断当前section是收起还是展开
    if ([_selectedArr containsObject:string]) {
        [_selectedArr removeObject:string];
    } else {
        [_selectedArr addObject:string];
    }
    [_tableView reloadData];
}

@end
