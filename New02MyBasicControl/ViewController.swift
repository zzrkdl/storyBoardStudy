//
//  ViewController.swift
//  New02MyBasicControl
//
//  Created by 김성진 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    //아웃렛 변수가 들어가는 곳
    //컴파일지시어 메모리정책          ! = 옵셔널 강제언래핑
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet var buttons: [UIButton]!
    
    //화면이 로딩완료시 자동호출 되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.backgroundColor = UIColor.cyan
        labelTitle.text = "타이틀입니다."
        labelTitle.textColor = UIColor.orange
        
        //btn1.backgroundColor = UIColor.red
    }

    //액션함수가 들어가는 곳
    @IBAction func onBtn1Click(_ sender: UIButton) {
        //로그를 남기는 법
        print("btn1 클릭됨")
        labelTitle.text = "btn1 클릭됨"
    }
    
}

