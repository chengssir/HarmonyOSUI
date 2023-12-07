
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
export struct RichTextPage {
  build(){
    Scroll(){
      Column(){
        Text('这是一个富文本的Text,这里可以理解是一个web网页吧').fontSize(22).fontColor(Color.Red)
        RichText(
          '<h1 style="text-align: center;">h1标题</h1>' +
          '<h1 style="text-align: center;"><i>h1斜体</i></h1>' +
          '<h1 style="text-align: center;"><u>h1下划线</u></h1>' +
          '<h2 style="text-align: center;">h2标题</h2>' +
          '<h3 style="text-align: center;">h3标题</h3>' +
          '<p style="text-align: center;">p常规</p><hr/>' +
          '<div style="width: 500px;height: 500px;border: 1px solid;margin: 0auto;">' +
          '<p style="font-size: 35px;text-align: center;font-weight: bold; color: rgb(24,78,228)">字体大小35px,行高45px</p>' +
          '<p style="background-color: #e5e5e5;line-height: 45px;font-size: 35px;text-indent: 2em;">' +
          '<p>这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字这是一段文字</p>'
        )
          .onStart(() => {
            Logger.info("开始加载");
          })
          .onComplete(() => {
            Logger.info("加载完毕");
          })
      }
    }
    .backgroundColor(0xF1F3F5)
  }

}