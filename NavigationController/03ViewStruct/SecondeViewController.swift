//
//  SecondeViewController.swift


import UIKit

class SecondeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    @IBAction func onBtnBack(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
