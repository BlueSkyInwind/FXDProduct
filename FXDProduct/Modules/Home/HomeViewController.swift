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
        homeHandler = HomeHandler.init()
        
        self.productListTableView.delegate = homeHandler
        self.productListTableView.dataSource = homeHandler
        self.view.addSubview(productListTableView)
        productListTableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
        
        // Do any additional setup after loading the view.
        
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
