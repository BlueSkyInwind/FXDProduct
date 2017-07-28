//
//  APPColor.swift
//  FXDProduct
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class APPColor: NSObject {

    static let shareInstance = APPColor()
    
    var appTabBarTitleColor :UIColor = UIColor()
    
    var appMainBg : UIColor = UIColor()
    
    override init() {
        super.init()
        let plist = Bundle.main.path(forResource: "AppColors", ofType: "plist")
        let data = NSDictionary(contentsOfFile: plist!) as! Dictionary<String, AnyObject>;
        for (key, val) in data {
            let rgba = val as! [Int]
            if rgba.count != 4 {
                continue
            }
            let r: CGFloat = CGFloat(Float(rgba[0]) / 255.0)
            let g: CGFloat = CGFloat(Float(rgba[1]) / 255.0)
            let b: CGFloat = CGFloat(Float(rgba[2]) / 255.0)
            let a: CGFloat = CGFloat(Float(rgba[3]) / 100.0)
            let color = UIColor(red: r, green: g, blue: b, alpha: a)
            self.setValue(color, forKey: key)
        }
    }
}

extension UIColor {
    
   class func appMainBackground() -> UIColor {
        return APPColor.shareInstance.appMainBg
    }
    
   class func appTabBarTitleColor() -> UIColor {
        return APPColor.shareInstance.appTabBarTitleColor
    }

}


