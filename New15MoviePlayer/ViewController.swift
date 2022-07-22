//
//  ViewController.swift


import UIKit
import AVKit //애플 네이티브 SDK 킷

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //내부동영상의 url 값을 가져온다.
    func playMovie(url: NSURL) {
        //애플 네이티브 SDK 킷의 avplyerViewcontroller 를 사용함
        let playController = AVPlayerViewController()
        // player에 AVPlayer url 값을 변환하여 넣는다
        let player = AVPlayer(url: url as URL)
        //playController.player에 위에서 선언한 player를 넣어준다
        playController.player = player
        //self.present를 사용해서 내부동영상을 실행해줌
        self.present(playController, animated: true) {
            player.play()
        }
    }
    
    
    @IBAction func onBtnPlayerInner(_ sender: UIButton) {
        // filepath 로 파일 경로를 가져옴, 비디오를 넣을때 addtotarget을 선택해서 애플 네이티브 bundle을 사용해서 파일 경로를 지정해줌
        let filepath : String? = Bundle.main.path(forResource: "Video1", ofType: "mp4")
        // 상수로 url을 선언해서 fileURLWithPath에 filepath를 넣어줌 위에서 선언할 때 옵셔널 변수로 지정했기 때문에 값을 가져올 떄 ! 사용하여 언래핑
        let url = NSURL(fileURLWithPath: filepath!)
        // playMovie를 호출해준다
        playMovie(url : url)
    }
    
    @IBAction func onBtnPlayLink(_ sender: UIButton) {
       let url = NSURL(string: "http://nissioft21.dothome.co.kr/Video1.mp4")
       playMovie(url : url!)
    }
    
    @IBAction func onBtnPlayYoutube(_ sender: UIButton) {
    }
    
}

