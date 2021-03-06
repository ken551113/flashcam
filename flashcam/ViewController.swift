//
//  ViewController.swift
//  flashcam
//
//  Created by KenLee on 2017/4/11.
//  Copyright © 2017年 kenlee. All rights reserved.
//

import UIKit
//導入AVFoundation庫來調用拍攝設備
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var btnLightButton: UIButton!
    
    //創建Video設備
    let device = AVCaptureDevice.defaultDevice(withMediaType: AVMediaTypeVideo)
    //手電筒顯示狀態標識
    var isLightOn = true
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //捕獲點擊按鈕
 
    @IBAction func hahaha(_ sender: UIButton) {
        let tras = stringConvertToBinary()
        let final = tras.trasnmit(x : "k")
//        let hi = 0.04
        if device==nil{
            return
        }
        do{
            try device?.lockForConfiguration()
//            on()
//            Thread.sleep(forTimeInterval: 0.06)
//            for i in final{
//                if (i == "0") {
//                    off()
//                } else {
//                    on()
//                }
//                Thread.sleep(forTimeInterval: 0.06)
//            }
//            off()
                    for i in final{
                        on()
                        Thread.sleep(forTimeInterval: 0.01)
                        off()
                        if (i == "0") {
                            Thread.sleep(forTimeInterval: 0.02)
                        } else {
                            Thread.sleep(forTimeInterval: 0.04)
                        }
                        on()
                        Thread.sleep(forTimeInterval: 0.01)
                        off()
                    }
            device?.unlockForConfiguration()
        }catch{
            return
        }
    }
    

    func on(){
        device?.torchMode = AVCaptureTorchMode.on

    }
    
    func off(){
        device?.torchMode = AVCaptureTorchMode.off
    }
}
