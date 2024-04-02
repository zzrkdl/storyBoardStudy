//
//  PopupViewController.swift

import UIKit

class PopupViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func onBtnClose(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
   

}
