//
//  ViewController.swift

//  화면을 이동하는 방법 2가지
//  1. 네비게이션 컨트롤러 이용(navigation Controller) - 권장! , 수평이동
//     (코드로 이동(Push, Pop), Segue로 이동)
//     수평적인 이동 : 카카오택시 앱 -> 예약: 자기정보 -> 콜정보 -> 옵션1 -> 옵션2 -> 옵션3 ...
//  2. 팝업 창으로 이동 : 간단한 이벤트 화면(로그인, 회원가입) , 수직이동
//     (코드로 이동(Present, Dismiss), Segue로 이동)
//     수직적인 이동 : 간단히 떴다가 사라지는 화면

import UIKit

class ViewController: UIViewController {

    //Outlet 들어가는 곳
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    //Action 함수 들어가는 곳
    
    //네비게이션 컨트롤러에서 코드로 이동하기
    @IBAction func onBtnNext(_ sender: UIButton) {
        let newVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondVC") as! SecondeViewController
        self.navigationController?.pushViewController(newVC, animated: true)
    }
    
}

