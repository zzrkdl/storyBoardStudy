//
//  MySideMenuNavigationController.swift


import UIKit
import SideMenu


class MySideMenuNavigationController: SideMenuNavigationController {

    //전역변수 선언
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        appDelegate.mySideMenu = self
        
        //설정 변경
        self.menuWidth = 320
        self.leftSide = false
        self.presentationStyle = .menuSlideIn
        
     
    }
    



}
