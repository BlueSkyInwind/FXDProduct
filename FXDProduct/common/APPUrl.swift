//
//  APPUrl.swift
//  FXDProduct
//
//  Created by admin on 2017/7/31.
//  Copyright © 2017年 admin. All rights reserved.
//

import Foundation


// MARK: 项目地址
#if DEBUG

//let _main_url = "http://192.168.6.133/fxd-esb/esb/"
//let _ValidESB_url = "http://192.168.6.133/fxd-esb/"
//let _P2P_url = "http://192.168.6.85:8080/p2p/"
//let _p2P_url = "http://192.168.6.133/fxd-esb/p2p/"
//let _H5_url = "http://192.168.6.133/fxd-h5/page/"
let _main_url = "https://h5.faxindai.com:8028/fxd-esb/esb/"
let _ValidESB_url = "https://h5.faxindai.com:8028/fxd-esb/"
let _P2P_url = "https://fintech.chinazyjr.com/p2p/"
let _p2P_url = "https://h5.faxindai.com:8028/fxd-esb/p2p/"
let _H5_url = "https://h5.faxindai.com:8028/fxd-h5/page/"
    
#else
    
//生产链接
let _main_url = "https://h5.faxindai.com:8028/fxd-esb/esb/"
let _ValidESB_url = "https://h5.faxindai.com:8028/fxd-esb/"
let _P2P_url = "https://fintech.chinazyjr.com/p2p/"
let _p2P_url = "https://h5.faxindai.com:8028/fxd-esb/p2p/"
let _H5_url = "https://h5.faxindai.com:8028/fxd-h5/page/"

#endif


//MARK: 项目url

//版本检查
let _checkVersion_jhtml = "appcommon/checkVersion.jhtml"
//获取验证吗
let _getCode_url = "common/sendSMS.jhtml"
//注册验证吗
let _regCode_url = "common/sendSMSH5.jhtml"
//注册
let _reg_url = "register/register.jhtml"
//登陆
let _login_url = "login/login.jhtml"
//退出登录
let _loginOut_url = "logout/logout.jhtml"
//更改设备号
let _updateDevID_url = "updateLoginEquipment/updateLoginEquipment.jhtml"
//忘记密码
let _forget_url = "findPasswordBack/findPasswordBack.jhtml"
//更换密码
let _changePassword_url = "updatePassword/updatePassword.jhtml"












