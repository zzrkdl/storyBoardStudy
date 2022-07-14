//
//  AgreeViewController.swift


import UIKit

class AgreeViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        if sender.isOn {
            appDelegate.isAgree = true
        }else {
            appDelegate.isAgree = false
        }
    }
    
    @IBAction func onBtnDone(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
