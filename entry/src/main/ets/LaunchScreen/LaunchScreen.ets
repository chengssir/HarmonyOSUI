

import curves from '@ohos.curves'
import router from '@ohos.router';

@Entry
@Component
struct LaunchScreen {
  @State scaleValue: number = 0
  @State opacityValue: number = 0

  build() {
    /*
     Flex(以弹性方式布局子组件的容器组件。)
     * direction 排列的方向 垂直
     * alignItems 交叉对齐格式  居中
     * justifyContent 垂直对齐格式 居中
     * linearGradient 线性渐变 angle:线性梯度角度 direction:线性梯度方向  colors:渐变的颜色描述repeating:是否重复
     */
    Flex({direction:FlexDirection.Column,alignItems:ItemAlign.Center,justifyContent:FlexAlign.Center}){
      Image($r('app.media.time_128'))
        .height(210)
        .width(210)
        .scale({ x: this.scaleValue, y: this.scaleValue })
        .opacity(this.opacityValue)
        .onAppear(() => {
          animateTo({
            duration: 1000,
            curve: curves.cubicBezier(0.4, 0, 1, 1),
            delay: 100,
            onFinish: () => {
              setTimeout(() => {
                router.replace({ url: 'pages/ListPage' })
              }, 1000)
            }
          }, () => {
            this.opacityValue = 1
            this.scaleValue = 1
          })
        })
      Text("你好")
        .fontSize(26)
        .fontColor(Color.White)
        .margin({ top: 300 })
    }
    .width('100%')
    .height('100%')
    .linearGradient({angle:180,colors:[['#BDE895', 0.1], ['#95DE7F', 0.6], ['#7AB967', 1]]})
  }

}