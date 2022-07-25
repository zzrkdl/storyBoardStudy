//  ViewController.swift

import UIKit
import Firebase
import FirebaseAuth



class ViewController: UIViewController {

    @IBOutlet weak var labelLogin: UILabel!
    @IBOutlet weak var textfieldID: UITextField!
    @IBOutlet weak var textfieldPW: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        updateUI()
    }


    func updateUI(){
        if let user = Auth.auth().currentUser {
            //로그인 된 상태(세션지원- 자동로그인 유지 지원)
            labelLogin.text = "로그인상태 : \(user.email!)"
        }else {
            //로그아웃 된 상태
            labelLogin.text = "로그인상태 : 로그아웃"
        }
    }
    
    @IBAction func onBtnLogin(_ sender: UIButton) {
        if let textID =  textfieldID.text, let textPW = textfieldPW.text{
            if textID.count < 1 || textPW.count < 1 {
                print("아이디나 암호가 짧습니다.")
                return
            }
            Auth.auth().signIn(withEmail: textID, password: textPW ) {
                //후행 클로저
                [weak self] user, error in
                guard let _ = self else { return }
                print("로그인 되었습니다.")
                
                let user = Auth.auth().currentUser
                print("\(String(describing:user?.email)), \(String(describing: user?.uid))")
                self?.updateUI()
            }
        }else {
            print("로그인 계정 또는 암호를 확인해주세요.")
        }
    }
}

