
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
export struct TextPage {

  @State value: number = 20

  build(){
      Scroll(){
        Column(){
          Text('你好啊，欢迎来到Text')
          this.fontSizeView()
          this.textAlignView()
          this.textOverflowview()
          this.lineHeightView()
          this.decorationview()
          this.letterSpacingview()
          this.textCaseview()

        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)
      }
      .backgroundColor(0xF1F3F5)
  }
  @Builder
  textCaseview() {
    Column() {
      Text('TextCase 设置文本大小写').fontSize(15).fontColor(Color.Red)
      Text('ABcDeFGHijKLMN')
        .fontSize(22).padding(10).textCase(TextCase.LowerCase)
      Text('ABCDEFGHIJKLMN')
        .fontSize(22).padding(10).textCase(TextCase.UpperCase)
    }
    .width('100%')
    .backgroundStyle()
  }


  @Builder
  letterSpacingview() {
    Column() {
      Text('letterSpacing 字间距').fontSize(15).fontColor(Color.Red)
      Text('测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距')
        .fontSize(22).padding(10).letterSpacing(10)
      Divider()
        .width('90%')
        .color(0xF5F5F5)
      Text('测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距测试一下间距')
        .fontSize(22).padding(10).letterSpacing(20)
    }
    .backgroundStyle()
  }



  @Builder
  decorationview() {
    Column() {
      Text('decoration 参数').fontSize(15).fontColor(Color.Red)
      Text('文字装饰样式，可以下划线，中划线等')
        .fontSize(22).padding(10).decoration({type:TextDecorationType.None})
      Text('文字装饰样式，可以下划线，中划线等')
        .fontSize(22).padding(10).decoration({type:TextDecorationType.Underline,color:Color.Blue})
      Text('文字装饰样式，可以下划线，中划线等')
        .fontSize(22).padding(10).decoration({type:TextDecorationType.Overline,color:Color.Red})
      Text('文字装饰样式，可以下划线，中划线等')
        .fontSize(22).padding(10).decoration({type:TextDecorationType.LineThrough,color:Color.Orange})
    }
    .backgroundStyle()
  }

  @Builder
  lineHeightView() {
    Column() {
      Text('lineHeight 参数').fontSize(15).fontColor(Color.Red)
      Text('《不设置》这里连续三段时同样的文字，看起来设置lineHeight高度可以拉开行间距，测试一下不设置、很大，很小三种情况')
        .fontSize(22).border({ width: 1,color:Color.Gray }).padding(10)
      Text('《很大大》这里连续三段时同样的文字，看起来设置lineHeight高度可以拉开行间距，测试一下不设置、很大，很小三种情况')
        .lineHeight(50).fontSize(22).border({ width: 1 ,color:Color.Gray}).padding(10)
      Text('《很小小》这里连续三段时同样的文字，看起来设置lineHeight高度可以拉开行间距，测试一下不设置、很大，很小三种情况')
        .lineHeight(15).fontSize(22).border({ width: 1 ,color:Color.Gray}).padding(10)
    }
    .backgroundStyle()
  }

  @Builder
  textOverflowview() {
    Column() {
      Text('textOverflow 参数').fontSize(15).fontColor(Color.Red)
      Divider() .width('90%') .color(0xF5F5F5)
      Text('会裁剪不会移除 -- Clip,表示当文本溢出时，将文本裁剪到容器的边界，不显示溢出部分边界，不显示溢出部分边界，不显示溢出部分')
        .fontSize(22).padding(10)
        .textOverflow({overflow:TextOverflow.Clip})
        .maxLines(2)
        .backgroundColor(0xFFFFF0)
      Divider() .width('90%') .color(0xF5F5F5)

      Text('省略号结尾 --Ellipsis,表示当文本溢出时，将文本裁剪到容器的边界...结尾容器的边界...结尾容器的边界...结尾容器的边界...结尾')
        .textOverflow({overflow:TextOverflow.Ellipsis})
        .maxLines(2)
        .fontSize(22).padding(10)
        .backgroundColor(0xFFFFE0)
      Divider() .width('90%') .color(0xF5F5F5)
      Text('不会进行省略或裁剪 --None,表示不处理文本溢出，文本会显示完全，不会进行省略或裁剪不会进行省略或裁剪不会进行省略或裁剪裁剪')
        .textOverflow({overflow:TextOverflow.None})
        .maxLines(2)
        .fontSize(22).padding(10)
        .backgroundColor(0xFAFAD2)
    }
    .backgroundStyle()

  }


  @Builder
  textAlignView() {
    Column(){
      Text('textAlign 参数').fontSize(15).fontColor(Color.Red)
      Text('居中')
        .textAlign(TextAlign.Center)
        .width('100%')
        .backgroundColor(0xFFFFF0)
      Text('左对齐')
        .textAlign(TextAlign.Start)
        .width('100%')
        .backgroundColor(0xFFFFE0)
      Text('右对齐')
        .textAlign(TextAlign.End)
        .width('100%')
        .backgroundColor(0xFAFAD2)
    }
    .backgroundStyle()
  }

  @Builder
  fontSizeView() {
    Row(){
      Text('修改字体大小,不能小于10')
        .fontSize(this.value)
      Blank()
      Counter() {
        Text(this.value.toString())
      }
      .margin({
        right:'20vp'
      })
      .onInc(() => {
        this.value++
      })
      .onDec(() => {
        if (this.value < 11) {
          return;
        }
        this.value--
      })
    }
    .backgroundStyle()
  }

}