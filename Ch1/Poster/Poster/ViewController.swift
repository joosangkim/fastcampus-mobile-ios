//
//  ViewController.swift
//  Poster
//
//  Created by Joosang Kim on 29/06/2019.
//  Copyright © 2019 Joosang Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentValue:Int = 0
    @IBOutlet weak var bountyLabel:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        refresh()
    }
    
    @IBAction func showAlert(){
//        print("Hello World!")
        // Add Alert
        let message = "현상금은 \(currentValue) 입니다."
        
        let alert = UIAlertController(title: "hello", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: { action in
            self.refresh()
        })
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    func refresh() {
        let randomNum = arc4random_uniform(100000) + 1
        currentValue = Int(randomNum)
        bountyLabel.text = "￦\(currentValue)"
    }
    
//    @IBAction func showMyAlert(){
//        let alert = UIAlertController(title: "MyAlert", message: "This is my alert", preferredStyle: .alert)
//        let action = UIAlertAction(title: "My Ok", style: .default, handler: nil)
//        alert.addAction(action)
//
//        present(alert, animated: true, completion: nil)
//    }


}

