
export class ListModel {
  title: string = '';
  uiinfos: Array<ListModelItem> = [];
}

export class ListModelItem {
  title: string = '';
  page: string = '';
}


const ListPageData: ListModel[] = [
  {
    title:'基础组件',
    uiinfos:[
      {
        title:'Text文本',
        page:'pages/basics/TextPage'
      },
      {
        title:'Span Text子组件',
        page:'pages/basics/SpanTextPage'
      },
      {
        title:'RichText 富文本',
        page:'pages/basics/RichTextPage'
      },
      {
        title:'Marquee 跑马灯',
        page:'pages/basics/MarqueePage'
      },
      {
        title:'Button 按钮',
        page:'pages/basics/ButtonPage'
      },
      {
        title:'Image 图片',
        page:'pages/basics/ImagePage'
      },
      {
        title:'ImageAnimator 帧动画',
        page:'pages/basics/ImageAnimatorPage'
      },
      {
        title:'TextArea 多行文本输入框',
        page:'pages/basics/TextAreaPage'
      },
      {
        title:'TextInput 单行文本输入框',
        page:'pages/basics/TextInputPage'
      },
      {
        title:'TimePicker 时间选择器',
        page:'pages/basics/TimePickerPage'
      },
      {
        title:'DatePicker 日期选择器',
        page:'pages/basics/DatePickerPage'
      },
      {
        title:'Toggle 开关样式',
        page:'pages/basics/TogglePage'
      },
      {
        title:'TextPicker 文本滑动选择器',
        page:'pages/basics/TextPickerPage'
      },
      {
        title:'Checkbox 多选',
        page:'pages/basics/CheckboxPage'
      },
      {
        title:'CheckboxGroup 多选，可以控制全选',
        page:'pages/basics/CheckboxGroupPage'
      },
      {
        title:'Radio 单选',
        page:'pages/basics/RadioPage'
      },
      {
        title:'Search 搜索',
        page:'pages/basics/SearchPage'
      },
      {
        title:'Select 下拉选择菜单',
        page:'pages/basics/SelectPage'
      },
      {
        title:'Navigation 导航',
        page:'pages/basics/NavigationPage'
      },
      {
        title:'Progress 进度条',
        page:'pages/basics/ProgressPage'
      },
      {
        title:'Slider 滑动条',
        page:'pages/basics/SliderPage'
      },
      {
        title:'LoadingProgress 加载效果',
        page:'pages/basics/LoadingProgressPage'
      },
      {
        title:'DataPanel 数据占比(线型 环形)',
        page:'pages/basics/DataPanelPage'
      },
      {
        title:'Gauge 数据表，环形图',
        page:'pages/basics/GaugePage'
      },
      {
        title:'QRCode 生成二维码',
        page:'pages/basics/QRCodePage'
      },
      {
        title:'ScrollBar 滚动条',
        page:'pages/basics/ScrollBarPage'
      },
      {
        title:'TextClock 显示当前系统时间',
        page:'pages/basics/TextClockPage'
      },
      {
        title:'TextTimer 计时器',
        page:'pages/basics/TextTimerPage'
      },
      {
        title:'Rating 评分空间',
        page:'pages/basics/RatingPage'
      },
      {
        title:'Web',
        page:'pages/basics/WebPage'
      },
      {
        title:'Blank 空白填充',
        page:'pages/basics/BlankPage'
      },
      {
        title:'Divider 分割线',
        page:'pages/basics/DividerPage'
      }
    ]
  },
  {
    title:'容器组件',
    uiinfos:[
      {
        title:'Column 垂直布局',
        page:'pages/basics/Page'
      },
      {
        title:'ColumnSplit 垂直布局，分割线，可以拖动',
        page:'pages/basics/Page'
      },
      {
        title:'Row 水平方向布局',
        page:'pages/basics/Page'
      },
      {
        title:'RowSplit 水平方向布局，分割线，可以拖动',
        page:'pages/basics/Page'
      },
      {
        title:'List 列表',
        page:'pages/basics/Page'
      },
      {
        title:'Flex 弹性布局',
        page:'pages/basics/Page'
      },
      {
        title:'Counter 计数器组件',
        page:'pages/basics/Page'
      },
      {
        title:'Grid 网格容器',
        page:'pages/basics/Page'
      },
      {
        title:'GridItem 网格容器中单项内容容器',
        page:'pages/basics/Page'
      },
      {
        title:'GridContainer 纵向排布栅格布局容器',
        page:'pages/basics/Page'
      },
      {
        title:'Navigator 路由容器组件',
        page:'pages/basics/Page'
      },
      {
        title:'Badge 未读数气泡',
        page:'pages/basics/Page'
      },
      {
        title:'AlphabetIndexer 通讯录可以定位',
        page:'pages/basics/Page'
      },
      {
        title:'Panel 可滑动面板（半屏弹框）',
        page:'pages/basics/Page'
      },
      {
        title:'Refresh 下拉刷新',
        page:'pages/basics/Page'
      },
      {
        title:'Scroll 可滑动的容器',
        page:'pages/basics/Page'
      },
      {
        title:'SideBarContainer 侧边栏容器',
        page:'pages/basics/Page'
      },
      {
        title:'Stack 堆叠容器',
        page:'pages/basics/Page'
      },
      {
        title:'Swiper 滑动轮播',
        page:'pages/basics/Page'
      },
      {
        title:'Tabs 视图切换的容器',
        page:'pages/basics/Page'
      },
      {
        title:'TabContent 切换页签的内容视图',
        page:'pages/basics/Page'
      },
    ]
  },
  {
    title:'媒体组件',
    uiinfos:[
      {
        title:'Video',
        page:'pages/basics/Page'
      },
    ]
  },
  {
    title:'绘制组件',
    uiinfos:[
      {
        title:'Circle 绘制圆形',
        page:'pages/basics/Page'
      },
      {
        title:'Ellipse 椭圆绘制',
        page:'pages/basics/Page'
      },
      {
        title:'Line 直线绘制',
        page:'pages/basics/Page'
      },
      {
        title:'Polyline 折线绘制',
        page:'pages/basics/Page'
      },
      {
        title:'Polygon 多边形绘制',
        page:'pages/basics/Page'
      },
      {
        title:'Path 路径绘制',
        page:'pages/basics/Page'
      },
      {
        title:'Rect 矩形绘制',
        page:'pages/basics/Page'
      },
      {
        title:'Shape 绘制组件的父组件',
        page:'pages/basics/Page'
      }
    ]
  },
  {
    title:'画布组件',
    uiinfos:[
      {
        title:'Canvas 提供画布组件',
        page:'pages/basics/Page'
      },
      {
        title:'Lottie Lottie动画',
        page:'pages/basics/Page'
      },
      {
        title:'CanvasGradient 渐变对象',
        page:'pages/basics/Page'
      },
    ]
  }
]
export { ListPageData };






























// export default class CommonConstants {
//   static readonly UINames: Array<Array<string>> = [
//     [ // 基本组件
//       "Text文本",
//       "Span Text子组件",
//       "RichText 富文本",
//       "Marquee 跑马灯",
//       "Button 按钮",
//       "Image 图片",
//       "ImageAnimator 帧动画",
//       "TextArea 多行文本输入框",
//       "TextInput 单行文本输入框",
//       "TimePicker 时间选择器",//
//       "DatePicker 日期选择器",
//       "Toggle 开关样式",
//       "TextPicker 文本滑动选择器",
//       "Checkbox 多选",
//       "Search 搜索",
//       "Select 下拉选择菜单",
//       "Navigation 导航",
//       "Progress 进度条",
//       "Slider 滑动条",
//       "Radio 单选",
//       "CheckboxGroup 多选，可以控制全选",
//       "LoadingProgress 加载效果",
//       "DataPanel 数据占比(线型 环形)",
//       "Gauge 数据表，环形图",
//       "QRCode 生成二维码",
//       "ScrollBar 滚动条",
//       "TextClock 显示当前系统时间",
//       "TextTimer 计时器",
//       "Rating 评分空间",
//       "Web",
//       "Blank 空白填充",
//       "Divider 分割线"
//     ],
//     [// 容器组件
//       "Column 垂直布局",
//       "ColumnSplit 垂直布局，分割线，可以拖动",
//       "Row 水平方向布局",
//       "RowSplit 水平方向布局，分割线，可以拖动",
//       "List 列表",
//       "Flex 弹性布局",
//       "Counter 计数器组件",
//       "Grid 网格容器",
//       "GridItem 网格容器中单项内容容器",
//       "GridContainer 纵向排布栅格布局容器",
//       "Navigator 路由容器组件",
//       "Badge 未读数气泡",
//       "AlphabetIndexer 通讯录可以定位",
//       "Panel 可滑动面板（半屏弹框）",
//       "Refresh 下拉刷新",
//       "Scroll 可滑动的容器",
//       "SideBarContainer 侧边栏容器",
//       "Stack 堆叠容器",
//       "Swiper 滑动轮播",
//       "Tabs 视图切换的容器",
//       "TabContent 切换页签的内容视图"
//     ],
//     [ //
//       "Video"
//     ],
//     [
//       "Circle 绘制圆形",
//       "Ellipse 椭圆绘制",
//       "Line 直线绘制",
//       "Polyline 折线绘制",
//       "Polygon 多边形绘制",
//       "Path 路径绘制",
//       "Rect 矩形绘制",
//       "Shape 绘制组件的父组件"
//     ],
//     [
//       "Canvas 提供画布组件",
//       "Lottie Lottie动画",
//       "CanvasGradient 渐变对象"
//     ]
//   ];
// }

