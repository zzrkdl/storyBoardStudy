//
//  ViewController.swift
//  New12PageView
//
//  Created by 김성진 on 2022/07/19.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var pageControl: UIPageControl!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
        appDelegate.mainVC = self
       
    }


}

