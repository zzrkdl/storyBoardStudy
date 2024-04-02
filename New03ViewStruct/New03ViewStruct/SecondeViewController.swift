//
//  SecondeViewController.swift


import UIKit

class SecondeViewController: UIViewController {
    //전역변수를 참조하는 방법
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var secondData : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //전역변수를 참조하여 출력함
        print(appDelegate.globalData)
        //첫번쨰 화면에서 전달받은 데이타 출력
        print(self.secondData)
    }
    

    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "ThirdVC") as! ThirdViewController
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    @IBAction func onBtnBack(_ sender: UIButton) {
        appDelegate.mainVC?.mainData = "두번째 화면에서 전달한 데이타"
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
