//
//  SideMenuViewController.swift


import UIKit

class SideMenuViewController: UIViewController {

    //전역변수 선언
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func onBtnLogin(_ sender: UIButton) {
        //사이드메뉴 닫기
        appDelegate.mySideMenu?.dismiss(animated: true, completion: nil)
        //메인화면에서 로그인화면으로 이동하기
        appDelegate.mainVC?.gotoLoginView()
    }
    
    @IBAction func onBtnNotice(_ sender: UIButton) {
        //사이드메뉴 닫기
        appDelegate.mySideMenu?.dismiss(animated: true, completion: nil)
        //메인화면에서 공지사항화면으로 이동하기
        appDelegate.mainVC?.gotoNoticeView()
    }
 
}
