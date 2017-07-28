//
//  HomeHandler.swift
//  FXDProduct
//
//  Created by admin on 2017/7/26.
//  Copyright © 2017年 admin. All rights reserved.
//

import UIKit

class HomeHandler: BaseHandler,UITableViewDelegate,UITableViewDataSource {
    
    var productList = ["工薪贷","急速贷"]

    let cellIdentifier = "cell"
    
    override init() {
        super.init()
        self.router  = HomeRouter()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = productList[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        (self.router as! HomeRouter).pushViewControllerToLogin()
    }

}
