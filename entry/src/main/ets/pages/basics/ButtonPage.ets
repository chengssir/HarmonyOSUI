
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
export struct ButtonPage {
  @State speed: number = 6

  build(){
    Scroll(){
      Column(){
        this.testButtonType()
        this.testNormal()
        this.testCapsule()
        this.testCircle()
      }
      .width('100%')
      .alignItems(HorizontalAlign.Start)
    }
    .backgroundColor(0xF1F3F5)
  }

  @Builder
  testNormal(){
    Column(){
      Text('Normal button')
      Flex({ alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
        Button('OK', { type: ButtonType.Normal, stateEffect: true }).borderRadius(8).backgroundColor(0x317aff).width(90)
        Button({ type: ButtonType.Normal, stateEffect: true }) {
          Row() {
            LoadingProgress().width(20).height(20).margin({ left: 12 }).color(0xFFFFFF)
            Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
          }.alignItems(VerticalAlign.Center)
        }.borderRadius(8).backgroundColor(0x317aff).width(90).height(40)

        Button('Disable', { type: ButtonType.Normal, stateEffect: false }).opacity(0.4)
          .borderRadius(8).backgroundColor(0x317aff).width(90)
      }
    }
    .backgroundStyle()
  }

  @Builder
  testCapsule(){
    Column(){
      Text('Capsule button')
      Flex({ alignItems: ItemAlign.Center, justifyContent: FlexAlign.SpaceBetween }) {
        Button('OK', { type: ButtonType.Capsule, stateEffect: true }).backgroundColor(0x317aff).width(90)
        Button({ type: ButtonType.Capsule, stateEffect: true }) {
          Row() {
            LoadingProgress().width(20).height(20).margin({ left: 12 }).color(0xFFFFFF)
            Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
          }.alignItems(VerticalAlign.Center).width(90).height(40)
        }.backgroundColor(0x317aff)
        Button({ type: ButtonType.Capsule, stateEffect: true }) {
          Row() {
            Image($r('app.media.app_icon')).width(20).height(40).margin({ left: 12 })
            Text('loading').fontSize(12).fontColor(0xffffff).margin({ left: 5, right: 12 })
          }.alignItems(VerticalAlign.Center).width(90).height(40)
        }.backgroundColor(0x317aff)

        Button('Disable', { type: ButtonType.Capsule, stateEffect: false }).opacity(0.4)
          .backgroundColor(0x317aff).width(90)
      }
    }
    .backgroundStyle()
  }

  @Builder
  testCircle(){
    Column(){
      Text('Circle button')
      Flex({ alignItems: ItemAlign.Center, wrap: FlexWrap.Wrap }) {
        Button({ type: ButtonType.Circle, stateEffect: true }) {
          LoadingProgress().width(20).height(20).color(0xFFFFFF)
        }.width(55).height(55).backgroundColor(0x317aff)

        Button({ type: ButtonType.Circle, stateEffect: true }) {
          LoadingProgress().width(20).height(20).color(0xFFFFFF)
        }.width(55).height(55).margin({ left: 20 }).backgroundColor(0xF55A42)

        Button({ type: ButtonType.Circle, stateEffect: true }) {
          Image($r('app.media.app_icon')).width(40).height(40)
        }.width(55).height(55).margin({ left: 20 }).backgroundColor(0xF55A42)
      }
    }
    .backgroundStyle()
  }


  @Builder
  testButtonType() {
    Column() {
      Text('按钮显示样式：' + this.speed)
       Row(){
         Button('圆角',{type:ButtonType.Capsule,stateEffect:false})
           .backgroundColor(0x317aff)
           .fontSize(28)
         Blank()
         Button('圆形',{type:ButtonType.Circle,stateEffect:true})
           .backgroundColor(0x317aff)
           .width(90)
           .fontSize(28)
         Blank()
         Button('点我',{type:ButtonType.Circle,stateEffect:true})
           .backgroundColor(0x317aff)
           .width(90)
           .fontSize(28)
           .onClick(()=>{
             this.speed++
           })
         Blank()
         Button('默认',{type:ButtonType.Normal})
           .backgroundColor(0x317aff)
           .fontSize(28)
       }
       .width('100%')
    }
    .backgroundStyle()
  }
}