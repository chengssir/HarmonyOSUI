// @ts-nocheck
import {
  ListModel,
  ListPageData,
  ListModelItem
} from './ListModel'

import {Logger} from '../utils/Logger'
import { StyleConstants } from '../Constants/styleConstants'
import router from '@ohos.router';

@Styles function backgroundStyle(){
  .backgroundColor(Color.White)
    .borderRadius('16vp')
    .padding({
      left:'16vp',
      top:'14vp',
      bottom:'14vp',
      right:'16vp'
    })
    .margin({
      top: '14vp',
      right: '14vp',
      left: '14vp',
    })
}

@Entry
@Component
export struct ListPage {
  @State listPages: ListModel[] = ListPageData;
  routerDetailPage(data: ListModelItem) {
    router.pushUrl({
      url: data.page
    }).catch((err: Error) => {
      Logger.info("发生了错误")
      Logger.info(JSON.stringify(err))
    });
  }


  build() {
    Flex({ direction: FlexDirection.Column }) {
      this.titleBar()
      Scroll() {
        Column() {
          List() {
            ForEach(this.listPages, (item: ListModel) => {
              ListItem() {
                UIListSection({
                  article:item,
                  onClickItem: (data: ListModelItem): void => this.routerDetailPage(data)
                })
              }
            }, (item: ListModel) => JSON.stringify(item))
          }
        }
      }
      .margin({
        bottom: '10vp'
      })
      .scrollBar(BarState.Off)
    }
    .backgroundColor(0xF1F3F5)
  }

  @Builder
  titleBar() {
    Text($r('app.string.list_title'))
      .width(StyleConstants.Full_Width)
      .height($r('app.float.title_height'))
      .fontWeight('700')
      .fontSize($r('app.float.title_font'))
      .width('100%')
      .textAlign(TextAlign.Center)
      .margin({
        top: '12vp',
        bottom: '12vp'
      })
  }
}


@Component
struct UIListSection {
  @Prop article: ListModel;
  private onClickItem? = (item: ListModelItem) => {};

  build() {
    Column() {
      Text(this.article.title)
        .fontSize($r('app.float.secondary_title'))
        .fontWeight('700')
        .fontColor('#182431')
        .width(StyleConstants.Full_Width)
        .padding({
          left: '1vp',
          top:'14vp',
          bottom:'14vp',
          right: '11vp'
       })
      Divider()
      List({space:'12'}){
        ForEach(this.article.uiinfos, (item: ListModelItem) => {
          ListItem() {
            UIListItem({item:item})
          }
          .onClick(() => {
            if (this.onClickItem !== undefined) {
              this.onClickItem(item);
            }
          })
        }, (item: ListModel) => JSON.stringify(item))
      }
    }
    .backgroundStyle()
  }
}

@Component
struct UIListItem {
  @Prop item: ListModelItem;
  build() {
    Column(){
      Stack({alignContent:Alignment.Center}){
        Column(){
          this.TextItem()
        }
        .padding({
          left:'10',
          top:'14vp',
          bottom:'14vp',
          right:'16vp'
        })
        .height('64vp')
        .width(StyleConstants.Full_Width)
        .backgroundColor(Color.White)
        .borderRadius('24')
      }
    }
  }

  @Builder TextItem() {
    Row() {
      Text(this.item.title)
        .fontColor('#18234')
        .fontSize('16fp')
        .fontWeight('700')
        .width(StyleConstants.Full_Width)
        .textAlign(TextAlign.Start)
        .height(StyleConstants.Full_Width)
      Blank()
      Image($r('app.media.ic_right_arrow'))
        .objectFit(ImageFit.Contain)
        .height('24vp')
        .width('12vp')
    }
  }
}