//
//  BaseTabBarViewController.swift
//  FXDProduct
//
//  Created by admin on 2017/7/27.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {
    
    let seleteimageArr = ["home_tab_select","mine_tab_select","more_tab_select"]
    let imageArr = ["home_tab_default","mine_tab_default","more_tab_default"]
    let titleArr = ["首页","我的","更多"]
    let vcNameArr = ["HomeViewController","MyViewController","MoreViewController"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func setTabBarCon() -> Void {
        
        let resultArr = NSMutableArray()
        //swift使用 NSClassFromString 必须要获取app的名字
        let appname : String = getAPPName()
        for i in 0...vcNameArr.count {
            if let vc  = NSClassFromString(appname + "." + vcNameArr[i]) as? UIViewController.Type{
                let viewcontroller  = vc.init()
                resultArr.add(viewcontroller)
            }
            
            
            
        }
    }
    
    func tabBarNameAndImage(titleName : String,defaultImageName:String,selectImageName:String) -> Void {
        
        let image = UIImage.init(named:defaultImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        let chooseImage  = UIImage.init(named: selectImageName)?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        let item = UITabBarItem.init(title: titleName, image: image, selectedImage: chooseImage)
        item.setTitleTextAttributes({[NSForegroundColorAttributeName:UIColor.red]}(), for: UIControlState.normal)
        item.setTitleTextAttributes({[NSForegroundColorAttributeName:UIColor.red]}(), for: UIControlState.normal)

    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
