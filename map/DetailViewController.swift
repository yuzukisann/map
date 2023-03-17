//
//  DetailViewController.swift
//  map
//
//  Created by 高井佑月 on 2022/11/11.
//

import UIKit
import Foundation

class DetailViewController: UIViewController {
    
    @IBOutlet var basyo: UILabel!
    @IBOutlet var zyuusyo: UILabel!
    @IBOutlet var akusesu: UILabel!
    @IBOutlet var tisiki: UILabel!
    @IBOutlet var mametisiki: UILabel!
    @IBOutlet var gazou: UIImageView!
    
    @IBOutlet weak var nextButton: UIButton!
    var placeNameList:[String] = ["播州赤穂JR","大石内蔵助像","赤穂城跡","赤穂市歴史博物館","あこうぱん", "海浜公園","赤穂市民病院","赤穂市立民俗資料館","赤穂わくわくランド"]
    var adressList:[String] = ["兵庫県赤穂市加里屋","兵庫県赤穂市加里屋2210","兵庫県赤穂市上仮屋1424-1","兵庫県赤穂市上仮屋916-1","兵庫県赤穂市加里屋中洲6-24","兵庫県赤穂市御崎1857-5","兵庫県赤穂市中広1090","兵庫県赤穂市加里屋805-1","兵庫県赤穂市御崎1857-5"]
    var accessList:[String] = ["駅","JR播州赤穂駅から車で12分","JR播州赤穂駅から歩いて20分","JR播州赤穂駅から歩いて15分","JR播州赤穂駅から歩いて5分","JR播州赤穂駅から車で8分","歩いて40分","JR播州赤穂駅から車で5分歩いて25分","JR播州赤穂駅から車で5分歩いて20分","JR播州赤穂駅から車で13分"]
    var knowledgeList:[String] = ["ちょっと大きい駅でも都会民からすれば小さいと思うでも鉄板焼き店とか焼肉とかのちょっとした店もある",
                                  "みんな大好き忠臣蔵の大石内蔵助。忠臣蔵はいろんな話があってどれも面白い、映画や文楽もあるので調べてほしい","社会見学で行きました。中に忠臣蔵で討ち入りをした47人のお墓があるはずだが、なぜか当時数えた時に46しかお墓がなかった。果たして数え間違いだったのか","遠足で行ったけど中には入れなかった。見た目が綺麗だったから行ってみたい、赤穂の塩の歴史や赤穂技師などがあるらしい","町探検で行ったことがあります。駅からも近いので来たらぜひ行きたい、クリームパンが一番おすすめです","遠足で行きました。ちなみに海浜公園の中にわくわくランドとあとキャンプ場があります。まあまあでかい遊具があります","入院したことがあります。設備はきれいでした一緒に入院してたおばちゃんは優しかったです","社会見学で行きました。結構古いものまであって、迫力がありました。","家族と行きました。今は亡き観覧車にも乗ったことがあります観覧車から赤穂全体の景色が見れて楽しかったです。"]
    var imageNameArray:[String] = ["akoueki1","ooisikuranosuke2","akouzyou3","rekisihakubutukann4","akoupann5","kaihinnkouenn6","siminnbyouinn7","minnzokusiryoukan8"]
    
   
    @IBOutlet var syasin: UIView!
    override func viewDidLoad() {
        //        self.loadView()
        super.viewDidLoad()
        
        print(placeNum)
        basyo.text = placeNameList[placeNum - 1]
        

    
        
        
        
        
        print(placeNum)
        gazou.image = UIImage(named: imageNameArray[placeNum - 1])
    
            
            //        if #available(iOS 15.0, *) {
            //            nextButton.configuration = nil
            //         }
            //nextButton.titleLabel?.font = UIFont(name: "Helvetica Bold", size: 26)
            
            // Do any additional setup after loading the view.
        }
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
    

