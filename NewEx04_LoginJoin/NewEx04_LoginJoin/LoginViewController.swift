//
//  LoginViewController.swift


import UIKit

class LoginViewController: UIViewController {

 
    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onBtnLogin(_ sender: UIButton) {
        //통신을 통해서 서버에 아이디/암호를 전달하고,
        //로그인 처리 결과를 알아온다.
        let id = tfID.text;
        let pw = tfPW.text;
        
        //예외처리 : 아이디와 암호가 제대로 입력됐는지 확인
        if let safeID = id, let safePW = pw {
            //true : safeID와 safePW가 모드 nil이 아님. 정상!
            if safeID.count < 5 || safePW.count < 8 {
                print("ID 또는 암호를 다시 입력하세요.")
                return
            }
            //통신하는 곳...
            //로그인 성공!
            appDelegate.userInfo.id = safeID
            appDelegate.userInfo.pw = safePW
            
            appDelegate.isLogin = true //로그인 성공!
            self.navigationController?.popViewController(animated: true)
            
        }else {
            //false
            print("ID나 PW가 nil입니다. ")
        }
    }
    
}
