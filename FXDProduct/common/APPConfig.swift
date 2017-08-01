//
//  APPConfig.swift
//  FXDProduct
//
//  Created by admin on 2017/8/1.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit
import Alamofire

class APPConfig: NSObject {
    
    static let shareInstance = APPConfig()
    
    func InitializeAppSet() -> Void {
        
        netWorkStatus()
        userInfoInit()
        
    }
    
    // MARK: 网络监测
    func netWorkStatus() -> Void {
        let net = NetworkReachabilityManager()
        net?.listener = { status in
            switch status {
            case .notReachable , .unknown:
                APPUtilityInfo.shareInstance.networkState = false
                break
            case .reachable(.ethernetOrWiFi) , .reachable(.wwan):
                APPUtilityInfo.shareInstance.networkState = true
                break
            }
        }
        net?.startListening()
    }
    
    // MARK: 用户数据初始化
    func userInfoInit() ->  Void{
        
        
    }
    
    func checkAPPVersion() -> Void {
        let  checkAPPVersionParam = ["platform_type_":PLATFORM, "app_version_":getAPPVersion()]
        FXDNetWorkManager.shareInstance.postDataWithUrl(url: _main_url + _checkVersion_jhtml, paramDic: checkAPPVersionParam, requestTime: 30, isNeedWaitView: true, success: { (responseStatus, value) in
            
        }) { (responseStatus, error) in
            
            
        }
    }
}
