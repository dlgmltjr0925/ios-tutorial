//
//  ViewController.swift
//  tutorial
//
//  Created by 이희석 on 2022/03/05.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func clickMoveBtn(_ sender: Any) {
        // StoryBoard find controller(DetailController)
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "DetailController") {
            // move controller
            // push, add(?) controller = navi
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
    
    @IBAction func clickMoveToWebViewController(_ sender: Any) {
        if let controller = self.storyboard?.instantiateViewController(withIdentifier: "WebViewController") {
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}

