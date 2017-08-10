//: Playground - noun: a place where people can play

import UIKit

let x = trasnmit(x: "h")

//for i in characters{
//
//    on();
//    DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(timeLightPulse)){
//        off();
//    }
//    if (i == '0') {
//        DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(timeLow)) {
//        }
//    } else {
//        DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(timeHigh)) {
//        }
//    }
//}
//    on();
//    DispatchQueue.main.asyncAfter(deadline: .now() + .microseconds(timeHigh)) {
//        off();
//    }




func trasnmit(x: String) -> Array<Character> {
    let  y = toBinaryString(x: x)
    var final = ""
    for i in y {
        let str = String(i, radix: 2)
        let result = pad(string: str, toSize: 7)  // 00010110
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

//        for i in final{
//            on()
//            Thread.sleep(forTimeInterval: 0.045)
//            off()
//            if (i == "0") {
//                Thread.sleep(forTimeInterval: 0.045)
//            } else {
//                Thread.sleep(forTimeInterval: 0.085)
//            }
//            on()
//            Thread.sleep(forTimeInterval: 0.045)
//            off()
//        }

