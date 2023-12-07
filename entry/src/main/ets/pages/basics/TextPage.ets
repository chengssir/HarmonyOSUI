
import {Logger} from '../../utils/Logger'


@Entry
@Component
export struct TextPage {

  @State value: number = 20

  build(){
      Column(){
        this.BlankView()
        Text('你好啊，欢迎来到Text')
        this.BlankView()
        this.fontSizeView()
        this.BlankView()
        this.textAlignView()
        this.BlankView()
        this.textOverflowview()
        this.BlankView()
        this.lineHeightView()
      }
      .alignItems(HorizontalAlign.Start)
      .backgroundColor(0xF1F3F5)
  }


  @Builder
  lineHeightView() {

  }

  @Builder
  textOverflowview() {
    Column() {
      Text('会裁剪不会移除 -- Clip,表示当文本溢出时，将文本裁剪到容器的边界，不显示溢出部分')
        .textOverflow({overflow:TextOverflow.Clip})
        .maxLines(2)
        .backgroundColor(0xFFFFF0)
      Text('...结尾 --Ellipsis,表示当文本溢出时，将文本裁剪到容器的边界...结尾')
        .textOverflow({overflow:TextOverflow.Ellipsis})
        .maxLines(2)
        .backgroundColor(0xFFFFE0)
      Text('不会进行省略或裁剪 --None,表示不处理文本溢出，文本会显示完全，不会进行省略或裁剪')
        .textOverflow({overflow:TextOverflow.None})
        .maxLines(2)
        .backgroundColor(0xFAFAD2)
    }
    .width('100%')
    .backgroundColor(0xFFFFFF)
  }


  @Builder
  textAlignView() {
    Column(){
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
    .alignItems(HorizontalAlign.Start)
    .width('100%')
    .backgroundColor(0xFFFFFF)
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
    .width('100%')
    .backgroundColor(0xFFFFFF)
  }

  @Builder
  BlankView() {
    Blank()
      .height(10)
  }
}