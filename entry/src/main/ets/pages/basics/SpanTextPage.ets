

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
export struct SpanTextPage {
  build(){
    Scroll(){
      Column(){
        Text('这货存在的意义是什么？求告知？').fontSize(22)
        Text('Span作为Text组件的子组件，用于显示行内文本的组件'){
          Span('This is the Span component ')
        }
        this.decorationview()
        this.letterSpacingview()
        this.textCaseview()
      }
    }
    .backgroundColor(0xF1F3F5)
  }

  @Builder
  decorationview() {
    Column() {
      Text('decoration 参数').fontSize(15).fontColor(Color.Red)
      Text(){
        Span('文字装饰样式，可以下划线，中划线等').fontSize(22).decoration({type:TextDecorationType.None})
      }
      Text(){
        Span('文字装饰样式，可以下划线，中划线等').fontSize(22).decoration({type:TextDecorationType.Underline,color:Color.Blue})
      }
      Text(){
        Span('文字装饰样式，可以下划线，中划线等').fontSize(22).decoration({type:TextDecorationType.Overline,color:Color.Red})
      }
      Text(){
        Span('文字装饰样式，可以下划线，中划线等').fontSize(22).decoration({type:TextDecorationType.LineThrough,color:Color.Orange})
      }
    }
    .backgroundStyle()
  }

  @Builder
  letterSpacingview() {
    Column() {
      Text('letterSpacing 字间距').fontSize(15).fontColor(Color.Red)
      Text(){
        Span('padding在这里不能使用，测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距').fontSize(33).padding(30).letterSpacing(10)
      }
      Divider()
        .width('90%')
        .color(0xF5F5F5)

      Text(){
        Span('测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距').fontSize(22).padding(10).letterSpacing(20)
      }
    }
    .backgroundStyle()
  }

  @Builder
  textCaseview() {
    Column() {
      Text('TextCase 设置文本大小写').fontSize(15).fontColor(Color.Red)
      Text(){
        Span('ABcDeFGHijKLMN').fontSize(22).textCase(TextCase.LowerCase)
      }
      Text(){
        Span('ABcDeFGHijKLMN').fontSize(22).textCase(TextCase.UpperCase)
      }
    }
    .width('100%')
    .backgroundStyle()
  }
}