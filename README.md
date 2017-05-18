## 題目需求
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/%E9%A1%8C%E7%9B%AE.imageset/%E9%A1%8C%E7%9B%AE.png)

## 實作步驟
### 第一格
* 在didSelectItemAt的function偵測，當第一格被觸發時將AlertController(警告視窗)present出來。

#### 觸發時的顯示結果
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/1.imageset/1.PNG)

### 第二格
1. 首先建立一個變數並且設定為false。
2. 在cellForItemAt的function裡面指定第二個indexPath裡面做一個判斷式，如果變數是true的話cell的背景色就設定回紅色，如果不是責會是藍色。
3. 最後在didSelectItemAt的function裡面指定第二個indexPath裡面做一個判斷式，當cell被點選到時，去判斷變數現在的Bool值並且切轉換成另一個屬性(true or false)，並且執行collectionView的reloadData去更新cell狀態。

#### 觸發時的顯示結果
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/2.imageset/2.PNG)
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/2-1.imageset/2-1.PNG)

### 第三格
1. 建立一個變數來儲存步數，接下來在cell裡面拉近一個Label元件來顯示要顯示的內容以及步數。
2. 接下來在class外面import CoreMotion，接下來呼叫motionEnded的function，最後在裡面用一個判斷式來判斷動作類別，如果有達成上下晃動的動作時，變數就+1並且執行collectionView的reloadData去更新cell裡面所顯示的步數數字。

#### 觸發時的顯示結果
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/2.imageset/2.PNG)
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/3.imageset/3.PNG)

#### 參考資訊
[swift3 自學力(魏巍著)](http://www.books.com.tw/products/0010746730)

### 第四格
* 在didSelectItemAt的function裡判斷，如果第四格被觸發時用URL去呼叫設定的介面出來。

#### 觸發時的顯示結果
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/4.imageset/4.PNG)

#### 參考資訊
[打開設定](http://stackoverflow.com/questions/28152526/how-do-i-open-phone-settings-when-a-button-is-clicked-ios)

### 第五格
* 在didSelectItemAt的function裡判斷，如果第五格被觸發時用canOpenURL去開啟GoogleMap app，另外用open方法將要搜尋以及導航的條件寫入網址裡面並且帶入googleMap裡面。

#### 觸發後顯示的結果
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/5.imageset/5.PNG)

#### 參考資訊
[打開GoogleMap App參考資訊](http://stackoverflow.com/questions/32039816/how-to-open-google-maps-to-show-route-using-swift)

[官方位置資訊設定參考](https://developers.google.com/maps/documentation/ios-sdk/urlscheme?hl=zh-tw)

### 第六格
1. 先在class外面import MessageUI，並且呼叫MFMailComposeViewControllerDelegate協定。
2. 接下來在didSelectItemAt的function裡，在第六格位置設定emailTitle為“測試信件”並且將delegate設定給自己，最後當第六格被點選時將信件視窗present出來。

#### 觸發後顯示的結果
![](https://github.com/qwer810520/FinalAssessment-CollectionViewSet/blob/master/CollectionViewSet/Assets.xcassets/6.imageset/6.PNG)

#### 參考資訊
[How to open mail app from Swift](http://stackoverflow.com/questions/25981422/how-to-open-mail-app-from-swift)




