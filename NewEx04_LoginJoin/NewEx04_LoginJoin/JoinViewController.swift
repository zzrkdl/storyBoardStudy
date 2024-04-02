//
//  JoinViewController.swift


import UIKit

class JoinViewController: UIViewController {

    @IBOutlet weak var tfID: UITextField!
    @IBOutlet weak var tfPW: UITextField!
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfPhone: UITextField!
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onBtnJoin(_ sender: UIButton) {
        
        //약관동의 여부 확인
        if appDelegate.isAgree == false {
            print("약관동의 해주세요.")
            return
        }
        
        
        let id = tfID.text
        let pw = tfPW.text
        let name = tfName.text
        let phone = tfPhone.text
        
        //예외처리 - 사용할 만한 데이타인지 확인
        if let safeID = id,let safePW = pw,let safeName = name , let safePhone = phone{
            
            if safeID.count < 3 {
                print("아이디는 3글자 이상입니다.")
                return
            }
            if safePW.count < 8 {
                print("비밀번호는 8글자 이상입니다.")
                return
            }
            if safeName.count < 4 {
                print("이름은 3글자 입니다.")
                return
            }
            if safePhone.count < 11 {
                print("아이디는 11글자 입니다.")
                return
            }
            
            //서버와 통신!
            appDelegate.userInfo.id = safeID
            appDelegate.userInfo.pw = safePW
            appDelegate.userInfo.name = safeName
            appDelegate.userInfo.phone = safePhone
            print("회원가입이 완료되었습니다.")
            self.navigationController?.popViewController(animated: true)
        }else {
            print("아이디나 암호나 이름, 폰번호 중에 nil이 있습니다.")
        }
        
    }
    

}
