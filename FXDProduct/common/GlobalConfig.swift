//
//   GlobalConfig.swift
//  FXDProduct
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 admin. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import Alamofire
import MBProgressHUD


//MARK: 项目配置信息

//服务器识别平台号
let PLATFORM = "1"

//产品型号
let SalaryLoan = "P001002"
let RapidLoan = "P001004"
let WhiteCollarLoan = "P001005"



// MARK: 设备信息获取
let  _k_w = UIScreen.main.bounds.size.width
let  _k_h = UIScreen.main.bounds.size.height
let name = UIDevice.current.name
let systemName = UIDevice.current.systemName
let deviceUUID = UIDevice.current.identifierForVendor?.uuidString

let KCharacterNumber = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

// MARK: 获取app的名字
func getAPPName() -> String{
    let nameKey = "CFBundleName"
    let appName = Bundle.main.object(forInfoDictionaryKey: nameKey) as? String   //这里也是坑，请不要翻译oc的代码，而是去NSBundle类里面看它的api
    return appName!
}

func getAPPVersion() -> String{
    let versionKey = "CFBundleShortVersionString"
    let appVersion = Bundle.main.object(forInfoDictionaryKey: versionKey) as? String
    return appVersion!
}
















