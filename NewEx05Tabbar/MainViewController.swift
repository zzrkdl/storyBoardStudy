//
//  MainViewController.swift


import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
 
       
    }

    override func viewDidAppear(_ animated: Bool) {
        if let index = self.tabBarController?.selectedIndex {
            print("tabIndex:", index)
        }else {
            print("nil")
        }

    }
    
    @IBAction func onBtnNext(_ sender: UIButton) {
        self.tabBarController?.selectedIndex = 1
    }
    
}

