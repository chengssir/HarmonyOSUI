
import {Logger} from '../../utils/Logger'

@Styles function backgroundStyle(){
  .backgroundColor(Color.White)
  .borderRadius('16vp')
  .padding({
    top:'14vp',
    bottom:'14vp',
  })
  .margin({
    top: '25vp',
    right: '15vp',
    left: '15vp',
  })
}

@Entry
@Component
  //作为Text组件的子组件，用于显示行内文本的组件
export struct MarqueePage {

  @State fromStart: boolean = true
  @State speed: number = 6
  @State fromString: string = "正向"
  @State titleChange: string = "跑马灯还没有开始，请点击按钮"
  @State start: boolean = false

  build(){
    Flex({ direction: FlexDirection.Column, alignItems: ItemAlign.Start, justifyContent: FlexAlign.Start }) {
     Scroll(){
       Column(){
         this.testTextless()
         this.testTextMore()
         this.testTextSpeed()
         this.testTextLoopNum()
         this.testTextfromStart()
         this.testTextonStart()
       }
     }
    }
    .width('100%')
    .backgroundColor(0xF1F3F5)
  }

  @Builder
  testTextless() {
    Column() {
      Text('测试比较短的文字')
      Marquee({start:true,step:6,loop:-1,fromStart:true,src:"跑马灯组件"})
        .width('100%')
        .backgroundColor(Color.Black)
        .fontColor(Color.White)
        .fontSize(30)
    }
    .backgroundStyle()
  }

  @Builder
  testTextMore() {
    Column() {
      Text('测试比较长的文字')
      Marquee({start:true,step:6,loop:-1,fromStart:true,src:"跑马灯组件，用于滚动展示一段单行文本，仅当文本内容宽度超过跑马灯组件宽度时滚动。"})
        .width('100%')
        .backgroundColor(Color.Black)
        .fontColor(Color.White)
        .fontSize(30)
    }
    .backgroundStyle()
  }

  @Builder
  testTextSpeed() {
    Column() {
      Row(){
        Text('设置跑马灯的速度')
        Blank()
        Counter() {
          Text(this.speed.toString())
        }
        .margin({
          right:'20vp'
        })
        .onInc(() => {
          this.speed++
        })
        .onDec(() => {
          if (this.speed < 1) {
            return;
          }
          this.speed--
        })
      }
      Marquee({start:true,step:this.speed,loop:-1,fromStart:true,src:"跑马灯组件，用于滚动展示一段单行文本，仅当文本内容宽度超过跑马灯组件宽度时滚动。"})
        .width('100%')
        .backgroundColor(Color.Black)
        .fontColor(Color.White)
        .fontSize(30)
    }
    .backgroundStyle()
  }

  @Builder
  testTextLoopNum() {
    Column() {
      Text('设置跑马灯的跑1次')
      Marquee({start:true,step:20,loop:1,fromStart:true,src:"跑马灯组件，用于滚动展示一段单行文本，仅当文本内容宽度超过跑马灯组件宽度时滚动。"})
        .width('100%')
        .backgroundColor(Color.Black)
        .fontColor(Color.White)
        .fontSize(30)
    }
    .backgroundStyle()
  }

  @Builder
  testTextfromStart() {
    Column() {
      Row() {
        Text('设置跑马灯方向 => ' + this.fromString)
        Blank()
        Toggle({type:ToggleType.Switch,isOn:this.fromStart})
          .size({ width: 28, height: 28 })
          .selectedColor(0xed6f21)
          .onChange((isOn: boolean) => {
            this.fromStart = isOn
            this.fromString = isOn ? "正向" : "反向"
          })
      }
      Marquee({start:true,step:20,loop:1,fromStart:this.fromStart,src:"跑马灯组件，用于滚动展示一段单行文本，仅当文本内容宽度超过跑马灯组件宽度时滚动。"})
        .width('100%')
        .backgroundColor(Color.Black)
        .fontColor(Color.White)
        .fontSize(30)
    }
    .backgroundStyle()
  }

  @Builder
  testTextonStart() {
    Column() {
      Text(this.titleChange)
      Marquee({start:this.start,step:20,loop:2,fromStart:this.fromStart,src:"跑马灯组件，用于滚动展示一段单行文本，仅当文本内容宽度超过跑马灯组件宽度时滚动。"})
        .width('100%')
        .backgroundColor(Color.Black)
        .fontColor(Color.White)
        .fontSize(30)
        .onStart(() => {
          this.titleChange = "跑马灯开始跑动了"
        })
        .onBounce(() => {
          this.titleChange = "跑马灯滚动到底了"
        })
        .onFinish(() => {
          this.titleChange = "跑马灯滚动结束了"
        })
      Button('start')
        .onClick(() => {
          this.start = true
        })
        .width(200)
        .height(60)
        .margin({bottom:20})
      Text("执行一次循环，不会执行onBounce，直接onFinish")
      Text("无限循环不会执行onFinish，第一次滚动结束就会到onBounce")
      Text("执行循环>1次，不是无限循环，方法都可以执行到")
    }
    .backgroundStyle()
    .padding({
      bottom:'50vp',
    })
  }


}