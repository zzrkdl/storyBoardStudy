//
//  SecondViewController.swift

import UIKit

//딜리게이트 Delegate -> 프로토콜 Protocol(자바 인터페이스)
//이벤트 전달자 : 이벤트 콜백 함수
//Delegate(대리자) : 프로토콜(이벤트 함수 구현시 주로 사용함)
class SecondViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var tfData: UITextField!
    @IBOutlet weak var tvData: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //텍스트 필드의 이벤트 처리다(대리자)는 나다!
        //self는 자신의 클래스를 의미
        //이게 빠지면 이벤트가 생기지 않음.
        tfData.delegate = self
    }
    
    //텍스트필드에 글자가 입력될 때마다 호출됨.
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        print(textField.text!)
        tvData.text = textField.text!
        //이벤트가 유효함.
        return true;
        //return false 로 하면, 이벤트 무시됨.
    }
    
    //글자입력이 완료될 때 한번 호출됨(키보드 완료버튼이나 포커스가 바뀔때)
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true;
    }
    
    //키보드 완료버튼(다음,서치)을 눌렀을 때
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        return true
    }
    
    //액션함수
    @IBAction func onSwitch(_ sender: UISwitch) {
        tvData.text = "스위치:" + String(sender.isOn)
     }
    @IBAction func onSegment(_ sender: UISegmentedControl) {
        tvData.text = "세그먼트: "
        +  String(sender.selectedSegmentIndex)
        switch sender.selectedSegmentIndex {
        case 0:
            print("0")
        case 1:
            print("1")
        case 2:
            print("2")
        default:
            print("etc")
        }
    }
    
    
}//end of class

