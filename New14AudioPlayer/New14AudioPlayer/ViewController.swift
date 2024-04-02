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
    var timer: Timer?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        //번들안의 mp3,ogg,wav 재생가능
        //selectAudioFile()
        //initPlayer()
        
        //온라인스트리밍
        //HTTP서버 상의 오디오 파일 재생 시
        let urlstring = "http://nissisoft21.dothome.co.kr/music.mp3"
        let url = URL(string: urlstring)
        downloadFileFromURL(url: url!)
    }
        
    
    func downloadFileFromURL( url : URL ) {
        var downloadTask : URLSessionDownloadTask
        downloadTask = URLSession.shared.downloadTask(with: url, completionHandler: { [weak self]( URL, responds, error) -> Void in
            //다운로드를 마쳤을 때
            self?.audioFile = URL! as URL
            self?.initPlayer()
        })
        downloadTask.resume()
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
        
        DispatchQueue.main.sync{
            labelCurrentTime.text = "00:00"  //현재재생시간
            let min = Int(audioPlayer.duration / 60)
            let sec = Int(audioPlayer.duration) % 60
            labelEndTime.text = "\(min):\(sec)"  //총재생시간
            
            //UI 초기화
            sliderVolume.maximumValue = 1.0
            sliderVolume.value = 1.0
           
            progressView.progress = 0 //노래 재생시간
            btnPlay.isEnabled = true    //비활성화
            btnPause.isEnabled = false  //활성화
            btnStop.isEnabled = false   //활성화
            
            sliderSeek.maximumValue = Float(audioPlayer.duration)
            sliderSeek.value = 0
            
            //타이머 //selector: 실행될때마다 반복되는 함수
            timer  = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(callbackTimer), userInfo: nil, repeats: true)
        
        }
    }
    
    //타이머 콜백함수
    @objc func callbackTimer(){
        let min = Int(audioPlayer.currentTime / 60)
        let sec = Int(audioPlayer.currentTime ) % 60
        labelCurrentTime.text = "\(min):\(sec)" //현재재생시간
        
        progressView.progress = Float(audioPlayer.currentTime / audioPlayer.duration)
    }
    
    //재생 시작
    @IBAction func onBtnPlay(_ sender: UIButton) {
        audioPlayer.play()
        btnPlay.isEnabled = false
        btnPause.isEnabled = true
        btnStop.isEnabled = true
    }
    
    //재생 잠시멈춤
    @IBAction func onBtnPause(_ sender: UIButton) {
        audioPlayer.pause()
        btnPlay.isEnabled = true
        btnPause.isEnabled = false
        btnStop.isEnabled = false
    }
    
    //재생멈춤
    @IBAction func onBtnStop(_ sender: UIButton) {
        audioPlayer.stop()
        //기본적으로 stop를 지원하지 않음
        audioPlayer = nil
        //initPlayer() // 음악 플레이어를 초기화해서 다시 실행시킴
        
        let urlstring = "http://nissisoft21.dothome.co.kr/music.mp3"
        let url = URL(string: urlstring)
        downloadFileFromURL(url: url!)
    }
 
    //재생시간 변경
    @IBAction func onSliderSeek(_ sender: UISlider) {
        audioPlayer.pause()
        audioPlayer.currentTime = Double(sender.value)
        
        progressView.progress = Float(audioPlayer.currentTime/audioPlayer.duration)
        audioPlayer.play()
    }
    
    //볼륨변경
    @IBAction func onSliderVolume(_ sender: UISlider) {
        audioPlayer.volume = sliderVolume.value
    }
}

