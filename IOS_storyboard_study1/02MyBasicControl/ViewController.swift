//
//  ViewController.swift
//  02MyBasicControl
//
//  Created by 김성진 on 2022/07/01.
//

import UIKit

class ViewController: UIViewController {

    //아웃렛 변수가 들어가는 곳
    //컴파일지시어 메모리정책          ! 의미 강제언래핑
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet var buttons: [UIButton]!  //[] 배열임을 알 수 있음
    @IBOutlet weak var tfInput: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    
    //화면이 로딩완료시 자동호출 되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()

        labelTitle.backgroundColor = UIColor.cyan
        labelTitle.text = "타이틀입니다."
        labelTitle.textColor = UIColor.orange
        
        btn1.backgroundColor = UIColor.red
        
        for btn in buttons {
            btn.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            //alpha : 0.0 ~ 1.0
            //RGB : 0.0 ~ 1.0
            btn.backgroundColor = UIColor(red: 255/255, green: 100/255, blue: 100/255, alpha: 1)
        }
        buttons[0].backgroundColor = UIColor.blue
    }

    //액션함수가 들어가는 곳
    @IBAction func onBtn1Click(_ sender: UIButton) {
        //로그를 남기는 법
        print("btn1 클릭됨")
        labelTitle.text = "btn1 클릭됨"
        imageView.image = UIImage(named:"image1")
    }
    @IBAction func onBtnInput(_ sender: UIButton) {
        let titleText = tfInput.text
        labelTitle.text = titleText
    }
    @IBAction func onBtn2Click(_ sender: UIButton) {
        imageView.image = UIImage(named:"image2")
    }
    
    //화면캡쳐 단축키
    //CMD + SHIFT + 4
    // 부분 캡쳐
    //CMD + SHIFT + 2
}

