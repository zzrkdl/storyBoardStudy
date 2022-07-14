//
//  MainViewController.swift

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var lableStatus: UILabel!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    //화면이 생성될 떄 딱 한번만 호출됨.
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    //화면이 보일떄마다 호출됨
    override func viewWillAppear(_ animated: Bool) {
        //로그인 상태 갱신
        if appDelegate.isLogin {
            lableStatus.text = "로그인상태: 로그인됨\(appDelegate.userInfo.id)"
        }else {
            lableStatus.text = "로그인상태: 로그아웃됨"
        }
    }
    
    //로그아웃
    @IBAction func onBtnLogout(_ sender: UIButton) {
        appDelegate.isLogin = false
        lableStatus.text = "로그인상태: 로그아웃됨"
    }
    
}

