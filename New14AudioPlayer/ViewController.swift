//  ViewController.swift


import UIKit
import AVFoundation //애플 네이티브 SDK에서 제공


class ViewController: UIViewController, AVAudioPlayerDelegate {

    //아웃렛변수 선언
    @IBOutlet weak var progressView: UIProgressView!
    @IBOutlet weak var sliderSeek: UISlider!
    @IBOutlet weak var labelCurrentTime: UILabel!
    @IBOutlet weak var labelEndTime: UILabel!
    @IBOutlet weak var btnPlay: UIButton!
    @IBOutlet weak var btnPause: UIButton!
    @IBOutlet weak var btnStop: UIButton!
    @IBOutlet weak var sliderVolume: UISlider!
    
    var audioPlayer : AVAudioPlayer!
    var audioFile : URL!
    var time: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        selectAudioFile()
        initPlayer()
    }

    //번들 클래스 안에 main에서 url을 가저옴 forResource 이름 extension 확장자
    func selectAudioFile() {
        audioFile = Bundle.main.url(forResource: "music", withExtension: "mp3")
 
    }
    
    func initPlayer() {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: audioFile)
        } catch let error as NSError {
            print( "error init player", error )
        }
        
        audioPlayer.delegate = self
        audioPlayer.prepareToPlay() //메모리에 음원을 넣어줌. 버퍼링
        audioPlayer.volume = 1.0
        

        labelCurrentTime.text = "00:00"  //현재재생시간
        let min = Int(audioPlayer.duration / 60)
        let sec = Int(audioPlayer.duration) % 60
        labelEndTime.text = "\(min):\(sec)"  //총재생시간
    }
    
    
    @IBAction func onBtnPlay(_ sender: UIButton) {
        audioPlayer.play()
    }
    @IBAction func onBtnPause(_ sender: UIButton) {
        audioPlayer.pause()
    }
    @IBAction func onBtnStop(_ sender: UIButton) {
        audioPlayer.stop()
        //기본적으로 stop를 지원하지 않음
        audioPlayer = nil
        initPlayer() 
    }
}

