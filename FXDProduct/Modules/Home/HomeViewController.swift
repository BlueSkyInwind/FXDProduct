//
//  HomeViewController.swift
//  FXDProduct
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    var homeHandler : HomeHandler?
    
   let productListTableView : UITableView = {
        let tableView = UITableView.init(frame: CGRect.zero, style: UITableViewStyle.plain)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.red
        self.navigationItem.title = "发薪贷"

        self.InitializeBusiness()
        // Do any additional setup after loading the view.
    }
    
    //MARK: 初始化业务
    func InitializeBusiness() -> Void {
        homeHandler = HomeHandler.init()
        homeHandler?.viewController = self
        self.productListTableView.delegate = homeHandler
        self.productListTableView.dataSource = homeHandler
        self.view.addSubview(productListTableView)
        productListTableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        APPConfig.shareInstance.checkAPPVersion()
        
    }
    
    func presentLoginVC() -> Void {
        let loginVC = LoginViewController.init()
        let navVC = BaseNavigationViewController.init(rootViewController: loginVC)
        app?.window?.rootViewController = navVC
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
