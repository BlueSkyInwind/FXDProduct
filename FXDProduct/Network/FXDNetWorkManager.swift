//
//  FXDNetWorkManager.swift
//  FXDProduct
//
//  Created by admin on 2017/7/31.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit
import Alamofire
import MBProgressHUD

public enum httpResponseStatus : Int{
    
    ///返回数据正确
  case  Enum_SUCCESS = 0
    ///返回数据出错
  case   Enum_FAIL = 1
    ///连接不上服务器
  case  Enum_NOTCONNECTED = 2
    ///超时连接
  case  Enum_CONNECTEDTIMEOUT = 3
}

typealias SuccessResponse = (_ responseStatus:httpResponseStatus, _ responseObject:AnyObject) -> Void
typealias FailureResponse = (_ responseStatus:httpResponseStatus, _ responseError:Error) -> Void


class FXDNetWorkManager: NSObject {
    
    static let shareInstance = FXDNetWorkManager()
    
    
    func postDataWithUrl(url:URL,paramDic:Dictionary<String , Any> ,headers:Dictionary<String, String>, success:@escaping SuccessResponse, failure: @escaping FailureResponse) ->  Void{
            let method = "POST"
            self.obtainDataWithUrl(url: url, method: method, paramDic: paramDic, headers: headers, success: success, failure: failure)
    }
    
    func getDataWithUrl(url:URL,paramDic:Dictionary<String , Any> ,headers:Dictionary<String, String>, success:@escaping SuccessResponse, failure: @escaping FailureResponse) ->  Void{
        let method = "GET"
        self.obtainDataWithUrl(url: url, method: method, paramDic: paramDic, headers: headers, success: success, failure: failure)
    }
    
    func deleteDataWithUrl(url:URL,paramDic:Dictionary<String , Any> ,headers:Dictionary<String, String>, success:@escaping SuccessResponse, failure: @escaping FailureResponse) ->  Void{
        let method = "DELETE"
        self.obtainDataWithUrl(url: url, method: method, paramDic: paramDic, headers: headers, success: success, failure: failure)
    }
    
    //MARK：底层网络请求
    func obtainDataWithUrl(url:URL,method:String,paramDic:Dictionary<String , Any> ,headers:Dictionary<String, String> , success:@escaping SuccessResponse, failure: @escaping FailureResponse) -> Void {
        
        let urlMethod = HTTPMethod.init(rawValue: method)
        Alamofire.request(url, method: urlMethod!, parameters: paramDic, encoding: URLEncoding.default, headers: headers).responseJSON { (response) in
            //发起请求的URL
            print("\(String(describing: response.response?.url))")
            //成功返回
            if (response.error != nil) {
                failure(.Enum_FAIL,response.error!)
            }
            //失败返回
            if (response.value != nil) {
                success(.Enum_SUCCESS,response.value as AnyObject)
            }
        }
    }
    
    // MARK: 网络请求加载动画
//    func loadingHUD() -> MBProgressHUD {
//        
//        let Arr = ["load4","load3","load2","load1"]
//        let imageV = UIImageView.init(frame: CGRect(x:0,y:0,width:70,height:70))
//        var imgArr = [UIImage]()
//        for imgIndex in 0...Arr.count - 1 {
//            imgArr.append(UIImage.init(named: Arr[imgIndex])!)
//
//        }
//        
//
//    }
    
    
    
    
    
}
