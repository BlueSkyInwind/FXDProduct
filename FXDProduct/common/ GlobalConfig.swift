//
//   GlobalConfig.swift
//  FXDProduct
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 admin. All rights reserved.
//

import Foundation
import UIKit

//TODO 设备信息获取
let  _k_w = UIScreen.main.bounds.size.width
let  _k_h = UIScreen.main.bounds.size.height
let name = UIDevice.current.name
let systemName = UIDevice.current.systemName
let deviceUUID = UIDevice.current.identifierForVendor?.uuidString


let KCharacterNumber = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

func getAPPName() -> String{
    let nameKey = "CFBundleName"
    let appName = Bundle.main.object(forInfoDictionaryKey: nameKey) as? String   //这里也是坑，请不要翻译oc的代码，而是去NSBundle类里面看它的api
    return appName!
}










