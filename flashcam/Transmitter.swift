//
//  Transmitter.swift
//  flashcam
//
//  Created by KenLee on 2017/4/11.
//  Copyright © 2017年 kenlee. All rights reserved.
//
import Foundation

class transmitter{
    func trasnmit(x: String) -> Array<Character> {
        let  y = toBinaryString(x: x)
        var final = ""
        for i in y {
            let str = String(i, radix: 2)
            let result = pad(string: str, toSize: 8)  // 00010110
            final+=result
        }
        
        let characters = Array(final.characters)
        return characters
    }
    
    
    func toBinaryString(x :String) -> [UInt8] {
        let buf = [UInt8](x.utf8)
        return buf
    }
    
    func pad(string : String, toSize: Int) -> String {
        var padded = string
        for _ in 0..<(toSize - string.characters.count) {
            padded = "0" + padded
        }
        return padded
    }
}


//public void transmit(String str) throws InterruptedException {
//    String binaryString = toBinaryString(str);
//    Log.i("Transmitter", binaryString);
//    for (char c : binaryString.toCharArray()) {
//        on();
//        Thread.sleep(timeLightPulse);
//        off();
//        if (c == '0') {
//            Thread.sleep(timeLow);
//        } else {
//            Thread.sleep(timeHigh);
//        }
//    }
//    on();
//    Thread.sleep(timeLightPulse);
//    off();
//}

//private String toBinaryString(String str) {
//    String r = "";
//    byte[] bytes = str.getBytes();
//    
//    for (byte b : bytes) {
//        r += String.format("%8s", Integer.toBinaryString(b)).replace(' ', '0');
//    }
//    return r;
//    
//}
//public Transmitter(Camera cam) {
//    this.cam = cam;
//    this.paramOn = cam.getParameters();
//    this.paramOff = cam.getParameters();
//    this.paramOn.setFlashMode(Camera.Parameters.FLASH_MODE_TORCH);
//    this.paramOff.setFlashMode(Camera.Parameters.FLASH_MODE_OFF);
//}



//private void on() {
//    cam.setParameters(paramOn);
//}
//
//private void off() {
//    cam.setParameters(paramOff);
//}




