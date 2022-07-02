//
//  SecondViewController.swift


import UIKit

//딜리게이트 Delegate -> 프로토콜 Protocol(자바 인터페이스)
//이벤트 전달자 : 이벤트 콜백 함수
//Delegate(대리자) : 프로토콜(이벤트 함수 구현시 주로 사용함)
class SecondViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var tfData: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //텍스트 필드의 이벤트 처리자(대리자)는 나다!
        //self는 자신의 클래스를 의미
        //이게 빠지면 이벤트가 생기지 않음.
        tfData.delegate = self
        
    }
    
    //텍스트필드에 글자가 입력될 때마다 호출됨
    func textField(_ textField: UITextField,
                   shouldChangeCharactersIn range: NSRange,
                   replacementString string : String ) -> Bool{
        
        print(textField.text!)
        //이벤트가 유효함.
        return true;
        //return false 로 하면, 이벤트 무시됨.
    }
}
