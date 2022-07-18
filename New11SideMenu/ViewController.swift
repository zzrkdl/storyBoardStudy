//
//  ViewController.swift

import UIKit

class ViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        appDelegate.mainVC = self
    }

    //코드로 이동하기
    func gotoLoginView(){
        //네비게이션 컨트롤러로 이동하기
        let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginVC") as! LoginViewViewController
        self.navigationController?.pushViewController(loginVC, animated: true)
    }

    
    func gotoNoticeView(){
        let noticeVC = self.storyboard?.instantiateViewController(withIdentifier: "NoticeVC") as! NoticeViewController
        self.navigationController?.pushViewController(noticeVC, animated: true)
    }
}

import SideMenu

extension ViewController : SideMenuNavigationControllerDelegate {
    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenuWillAppear")
    }
    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenuDidAppear")
    }
    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenuWillDisappear")
    }
    func sideMenuDidDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("sideMenuDidDisappear")
    }
}

