//
//  HomeRouter.swift
//  FXDProduct
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class HomeRouter: BaseRouter {

    var loginRouter : LoginRouter?

    func pushViewControllerToLogin() ->  Void {
           
        loginRouter?.pushViewControllerFromController(viewController: self.viewController!)
    }
}
