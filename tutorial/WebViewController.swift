//
//  WebViewController.swift
//  tutorial
//
//  Created by 이희석 on 2022/03/05.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://www.google.com"
        if let url = URL(string: urlString) { // unwrapp
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
        }
    }
}
