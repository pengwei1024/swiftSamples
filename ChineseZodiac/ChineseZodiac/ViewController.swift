//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by baidu on 15/8/29.
//  Copyright (c) 2015年 apkfuns. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        yearOfBirth.resignFirstResponder()
    }

    @IBAction func onSubmit(sender: AnyObject) {
        yearOfBirth.resignFirstResponder()
        if let year = yearOfBirth.text.toInt(){
            var imageNum = (year-4) % 12
            image.image = UIImage(named: String(imageNum))
        }
    }

}

