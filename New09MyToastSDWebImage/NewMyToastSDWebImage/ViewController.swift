//
//  ViewController.swift

//3rd party 라이브러리 사용하기
//깃허브 라이브러리 이용하기

//Cocoa Pod 이용하기
//CLI(Command Line Interface) : DOS창, 터미널

// Swift-Toast : 안드로이드 스타일의 토스트 팝업 구현
// SDWebImager : HTTP통신으로 이미지를 다운로드하고, ImagaView에 이미지를 로딩시켜줌. 캐시지원

//Cocoa Pod 이용순서
//0. 기본 xcodeproj프로젝트 닫기
//1. 파인더에서 프로젝트폴더 오른쪽 클릭해서 현재폴더에서 터미널 열기
//2. Cocoa Pod 유틸 설치
//   명령어: sudo gem install cocoapods 엔터
//   Cocoa Pod 업데이트
//   명령어: pod repo update 엔터
//3. 프로젝트 초기화
//   명령어: pod init
//4. 라이브러리 설치
//   명령어: pod install
//5. 프로젝트열기: xcodeproj -> xcworkspace 열기
//   워크스페이스 열기: 더블클릭 하거나 터미널 open 프로젝트이름.xcworkspace
//6. Xcode에서 pod 파일을 편집하기( 라이브러리 목록 기술 )
//7. 터미널에서 pod install 한번 더하기

//터미널 명령어 - 리눅스 명령어
//1.  pwd : 현재 폴더(디렉토리) 위치 보기
//2.  ls : 파일 목록 보기
//3.  ls -all : 파일 목록 자세히 보기
//4.  open : 파일 열기(실행)

import UIKit
import Toast_Swift
import SDWebImage

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.makeToast("토스트 창입니다.", duration: 5.0, position: .bottom )
    
        let url : URL = URL(string: "https://github.com/scalessec/Toast-Swift/raw/master/toast_swift_screenshot.jpg")!
        self.imageView.sd_setImage(with: url, completed: {(image, error, cacheType, imageURL) in
            print(imageURL!)
            
        })
    }


}

