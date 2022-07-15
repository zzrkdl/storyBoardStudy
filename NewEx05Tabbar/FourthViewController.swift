//
//  FourthViewController.swift


import UIKit

class FourthViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.fourthVC = self

    }
    

}
