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

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func scanAction(_ sender: UIButton) {
        let viewController = BarcodeScannerViewController()
        viewController.codeDelegate = self
        
        present(viewController, animated: true, completion: nil)
    }
}

extension ViewController: BarcodeScannerCodeDelegate {
    func scanner(_ controller: BarcodeScannerViewController, didCaptureCode code: String, type: String) {
        controller.dismiss(animated: true, completion: nil)
        guard let url = URL(string: "http://ean13.info/\(code).html") else {
            return
        }
        webView.loadRequest(URLRequest(url: url))
    }
    
    
}
