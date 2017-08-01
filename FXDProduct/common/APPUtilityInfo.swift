//
//  APPUtilityInfo.swift
//  FXDProduct
//
//  Created by admin on 2017/8/1.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class APPUtilityInfo: NSObject {
    
    var loginFlage : Bool
    var networkState : Bool
    var isAppUpdate : Bool
    var userInfo : UserInfo

    static  let shareInstance  = APPUtilityInfo()
    
    override init() {
        
        loginFlage = false
        networkState = true
        isAppUpdate = false
        userInfo = UserInfo.init()
        
    }

}

struct UserInfo {
    
    //网络请求头信息
    var tokenStr : String?
    var juid : String?
    
    init() {
        tokenStr = nil
        juid = nil
    }
}

struct checkAPPVersionParam {
    
    
    
    
}







