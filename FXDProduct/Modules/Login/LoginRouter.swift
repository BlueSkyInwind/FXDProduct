//
//  LoginRouter.swift
//  FXDProduct
//
//  Created by admin on 2017/7/28.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class LoginRouter: BaseRouter {
    
    func pushViewControllerFromController(viewController : UIViewController) -> Void {
        
        let ctl = LoginViewController()
        self.viewController = ctl
        viewController.navigationController?.pushViewController(self.viewController!, animated: true)
        
    }
}
