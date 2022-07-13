//
//  ThirdViewController.swift


import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    
    @IBAction func onBtnBack(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
        //self.navigationController?.popViewController(animated: true)
    }
    

}
