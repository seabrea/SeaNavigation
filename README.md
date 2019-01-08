![](https://raw.githubusercontent.com/seabrea/SeaNavigation/master/Logo.png)

# SeaNavigation

Easy for iOS Navigation !

![](https://img.shields.io/badge/platform-iOS%209%2B-orange.svg)
![](https://img.shields.io/badge/language-objective--c-blue.svg)
![](https://img.shields.io/badge/license-MIT-ff69b4.svg)
[![CocoaPods compatible](https://img.shields.io/badge/CocoaPods-compatible-green.svg?style=flat)](https://cocoapods.org)

使用简单的自定义导航栏，能基本实现大部分常见导航栏需求。

## Demo

[Demo项目](https://github.com/seabrea/SeaNavigation)

## Installation

支持Cocoapods:

```ruby
pod 'SeaNavigation'
```

## Usage

具体使用可参考Demo项目

常见的带返回按钮和标题的情况:

```
/**
 * 带返回按钮和标题的导航栏
 *
 * @param title 标题内容
 */
- (void)navigationTitle:(NSString *)title;
```

只显示标题：

```
/**
 * 不带返回按钮和标题的导航栏
 *
 * @param title 标题内容
 */
- (void)navigationNoBackTitle:(NSString *)title;
```

右侧使用自定义文字：

```
/**
 * 带返回 按钮 标题 右侧文字按钮 的导航栏
 *
 * @param title      标题内容
 * @param rightTitle 右侧显示文字的按钮
 */
- (void)navigationTitle:(NSString *)title WithRightTitle:(NSString *)rightTitle;
```

右侧使用自定义图案：

```
/**
 * 带返回 按钮 标题 右侧图片按钮 的导航栏
 *
 * @param title      标题内容
 * @param rightImage 右侧显示图片的按钮
 */
- (void)navigationTitle:(NSString *)title WithRightItemImage:(UIImage *)rightImage;
```

在左右侧均使用自定义文字的时候：

```
/**
 * 带 左侧文字按钮 标题 右侧文字按钮 的导航栏
 *
 * @param title      标题内容
 * @param leftTitle  左侧显示文字的按钮
 * @param rightTitle 右侧显示文字的按钮
 */
- (void)navigationTitle:(NSString *)title LeftTitle:(NSString *)leftTitle RightTitle:(NSString *)rightTitle;
```

在左右侧均使用自定义图案的时候：

```
/**
 * 带 左侧按钮 标题 右侧按钮 的导航栏
 *
 * @param title      标题内容
 * @param leftImage  左侧显示图片的按钮
 * @param rightImage 右侧显示图片的按钮
 */
- (void)navigationTitle:(NSString *)title LeftItemImage:(UIImage *)leftImage RightItemImage:(UIImage *)rightImage;
```

当需要显示自定义的TitleView的时候，可以直接使用下面的方法：

```
/**
 * 带 左侧按钮 自定义标题视图 右侧按钮 的导航栏
 *
 * @param centerView 自定义标题视图
 * @param leftImage  左侧显示图片的按钮
 * @param rightImage 右侧显示图片的按钮
 */
- (void)navigationCenterView:(UIView *)centerView LeftItemImage:(UIImage *)leftImage RightItemImage:(UIImage*)rightImage;
```
自带的事件处理。需要使用相关的事件，则直接重写这个方法即可：

```
/**
 * 右上角按钮处理事件
 */
- (void)rightBarAction;

/**
 * 左上角按钮处理事件
 */
- (void)leftBarAction;

/**
 * 返回按钮处理事件
 */
- (void)backBarAction;
```

全局定制属性，修改下面的属性则可以直接作用于当前的导航栏

```
/// 导航栏背景色
@property(nonatomic, strong) UIColor *navigationColor;

/// 左边文字按钮的颜色
@property(nonatomic, strong) UIColor *rightTitleColor;

/// 右边文字按钮的颜色
@property(nonatomic, strong) UIColor *leftTitleColor;

/// 中间标题文字的颜色
@property(nonatomic, strong) UIColor *centerTitleColor;

/// 返回按钮的ImageName
@property(nonatomic,   copy) NSString *backBtnImageName;
```

## Author

[SeaBrea](https://seabrea.xyz)

有什么问题或者好的建议可以联系我 <hgdigm@gmail.com>

## License

SeaNavigation is available under the MIT license. See the LICENSE file for more info.
