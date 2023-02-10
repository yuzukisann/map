//
//  ViewController.swift
//  map
//
//  Created by 高井佑月 on 2022/10/28.
//

import UIKit

import MapKit
import CoreLocation
import FloatingPanel

var placeNum:Int = 0

class ViewController: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate,
                      FloatingPanelControllerDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    var locationManager: CLLocationManager!
    //　モーダルを初期化
    let half = FloatingPanelController()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mapView.delegate = self
        
        let span = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        
        let akouStation = CLLocationCoordinate2DMake(34.7549051, 134.3902801)
        
        let region = MKCoordinateRegion(center: akouStation, span: span)
        mapView.region = region
        half.delegate = self
        
        half.surfaceView.appearance.cornerRadius = 24.0
        // 　セミモーダルビューを表示する
        half.addPanel(toParent: self)
        half.move(to: .tip, animated: false, completion: nil)
        setUpPin()
    }
    func setUpPin(){
       // 播州赤穂JR
        let coordinate1 = CLLocationCoordinate2DMake( 34.756600, 134.393266)
        let pin1 = MKPointAnnotation()
                pin1.title = "播州赤穂JR"
                pin1.subtitle = "播州赤穂JR"
                // ピンに一番上で作った位置情報をセット
                pin1.coordinate = coordinate1
                // mapにピンを表示する
                mapView.addAnnotation(pin1)
        
        let coordinate2 = CLLocationCoordinate2DMake( 34.755970, 134.39326)
        let pin2 = MKPointAnnotation()
                pin2.title = "大石内蔵助像"
                pin2.subtitle = "大石内蔵助像"
                // ピンに一番上で作った位置情報をセット
                pin2.coordinate = coordinate2
                // mapにピンを表示する
                mapView.addAnnotation(pin2)
        
        let coordinate3 = CLLocationCoordinate2DMake(34.746452, 134.389057)
        let pin3 = MKPointAnnotation()
                pin3.title = "赤穂城跡"
                pin3.subtitle = "赤穂城跡"
                // ピンに一番上で作った位置情報をセット
                pin3.coordinate = coordinate3
                // mapにピンを表示する
                mapView.addAnnotation(pin3)
        
        let coordinate4 = CLLocationCoordinate2DMake(34.747366, 134.390457)
        let pin4 = MKPointAnnotation()
                pin4.title = "赤穂市歴史博物館"
                pin4.subtitle = "赤穂市歴史博物館"
                // ピンに一番上で作った位置情報をセット
                pin4.coordinate = coordinate4
                // mapにピンを表示する
                mapView.addAnnotation(pin4)
        
        let coordinate5 = CLLocationCoordinate2DMake(34.748601, 134.391502)
        let pin5 = MKPointAnnotation()
                pin5.title = "あこうぱん"
                pin5.subtitle = "あこうぱん"
                // ピンに一番上で作った位置情報をセット
                pin5.coordinate = coordinate5
                // mapにピンを表示する
                mapView.addAnnotation(pin5)
        
        let coordinate6 = CLLocationCoordinate2DMake(34.733154, 134.398405)
        let pin6 = MKPointAnnotation()
                pin6.title = "海浜公園"
                pin6.subtitle = "海浜公園"
                // ピンに一番上で作った位置情報をセット
                pin6.coordinate = coordinate6
                // mapにピンを表示する
                mapView.addAnnotation(pin6)
        
        let coordinate7 = CLLocationCoordinate2DMake(34.743147, 134.390908)
        let pin7 = MKPointAnnotation()
                pin7.title = "赤穂市民病院"
                pin7.subtitle = "赤穂市民病院"
                // ピンに一番上で作った位置情報をセット
                pin7.coordinate = coordinate7
                // mapにピンを表示する
                mapView.addAnnotation(pin7)
        
        let coordinate8 = CLLocationCoordinate2DMake(34.749945, 134.382306)
        let pin8 = MKPointAnnotation()
                pin8.title = "赤穂市立民俗資料館"
                pin8.subtitle = "赤穂市立民俗資料館"
                // ピンに一番上で作った位置情報をセット
                pin8.coordinate = coordinate8
                // mapにピンを表示する
                mapView.addAnnotation(pin8)
        
        let coordinate9 = CLLocationCoordinate2DMake(34.730808, 134.402144)
        let pin9 = MKPointAnnotation()
                pin9.title = "赤穂わくわくランド"
                pin9.subtitle = "赤穂わくわくランド"
                // ピンに一番上で作った位置情報をセット
                pin9.coordinate = coordinate9
                // mapにピンを表示する
                mapView.addAnnotation(pin9)
        
        let coordinate10 = CLLocationCoordinate2DMake( 34.753599837202664, 134.3899196251632)
        let pin10 = MKPointAnnotation()
                pin10.title = "大石神社"
                pin10.subtitle = "大石神社"
                // ピンに一番上で作った位置情報をセット
                pin10.coordinate = coordinate10
                // mapにピンを表示する
                mapView.addAnnotation(pin10)
        
        
        
        
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        
        switch view.annotation?.title {
            
        case "播州赤穂JR":
            placeNum = 1
         
        case "大石内蔵助像":
            placeNum = 2
            
        case "赤穂城跡":
            placeNum = 3
        
        case "赤穂市歴史博物館":
            placeNum = 4
            
        case "あこうぱん":
            placeNum = 5
            
        case "海浜公園":
            placeNum = 6
            
        case "赤穂市民病院":
            placeNum = 7
            
        case "赤穂市立民族資料館":
            placeNum = 8
            
        case "赤穂わくわくランド":
            placeNum = 9
        default:
            print("zennbuhazure")
 
        }
        //タップされたピンの位置情報
        print(view.annotation?.coordinate)
        //タップされたピンのタイトルとサブタイトル
        print(view.annotation?.title)
        print(view.annotation?.subtitle)
        showSemiModel()
        
    }
    
    func showSemiModel(){
        

        //　IDwo指定してViewControllerを取得する
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController else {
            return
        }
        

        
        //　モーダルにViewControllerを設定する
        half.set(contentViewController: vc)
        

        half.move(to: .half, animated: true, completion: nil)
        
    }
    


}

