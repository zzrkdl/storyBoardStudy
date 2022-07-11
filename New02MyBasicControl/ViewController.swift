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
    
    //화면이 로딩완료시 자동호출 되는 함수
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelTitle.backgroundColor = UIColor.cyan
        labelTitle.text = "타이틀입니다."
        labelTitle.textColor = UIColor.orange
        
    }

    //액션함수가 들어가는 곳

}

