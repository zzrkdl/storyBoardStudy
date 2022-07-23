//  ViewController.swift


import UIKit
import AVKit //애플 네이티브 SDK
import youtube_ios_player_helper

class ViewController: UIViewController {

    @IBOutlet weak var youtubePlayer: YTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playMovie (url : NSURL) {
        //playcontroller를 선언해준다
        let playController  = AVPlayerViewController()
        //player에 받아온 url값을 저장해준다
        let player = AVPlayer(url:url as URL)
        //playcontroller.player에 player값을 넣어준다
        playController.player = player
        //팝업을 띄어줌
        self.present(playController, animated: true){
            //동영상을 플레이함
            player.play()
        }
    }
    
    //내부 비디오 재생
    @IBAction func onBtnPlayerInner(_ sender: UIButton) {
        //파일 경로를 가져옴
        let filepath : String? = Bundle.main.path(forResource: "Video1", ofType: "mp4")
        let url = NSURL(fileURLWithPath: filepath!)
        playMovie(url : url)
  
    }
    //외부 비디오 재생
    @IBAction func onBtnPlayLink(_ sender: UIButton) {
        let url = NSURL(string:"http://nissisoft21.dothome.co.kr/Video1.mp4")
        playMovie(url: url!)
    }
   
    //유튜브 비디오 재생
    @IBAction func onBtnPlayYoutube(_ sender: UIButton) {
        self.youtubePlayer.load(withVideoId: "xGtVHDcMFAo")
    }
    
}

