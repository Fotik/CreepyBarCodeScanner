//
//  ViewController.swift
//  CreepyBarCodeScanner
//
//  Created by cidr5 on 3/4/18.
//  Copyright © 2018 cidr5. All rights reserved.
//

import UIKit
import BarcodeScanner

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let viewController = BarcodeScannerViewController()
        viewController.codeDelegate = (self as! BarcodeScannerCodeDelegate)
        
        navigationController?.pushViewController(viewController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

