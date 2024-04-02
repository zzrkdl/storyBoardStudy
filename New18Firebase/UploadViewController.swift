//
//  UploadViewController.swift


import UIKit
import Firebase
import FirebaseStorage

class UploadViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func onBtnUpload(_ sender: UIButton) {
        uploadImage()
    }
    

    func uploadImage(){
        let storage = Storage.storage()
        let storageRef = storage.reference()
        let data = imageView.image!.pngData()
     
        //타임스탬프 : 1970년 1월 1일 0시0분0초를 기준으로 밀리세컨드 단위의 시간을 나타내는 정수
        //유니크한 파일이름을 정할 때 사용
        let timeStamp = Int(NSDate.timeIntervalSinceReferenceDate*1000)
        let imageFileName = "idol" + String(timeStamp) + ".png"
        
        let serverImageRef = storageRef.child(imageFileName)
        
        //메타데이타 추가
        let metadata = StorageMetadata()
        metadata.contentType = "image/png"
        
        let uploadTask = serverImageRef.putData(data!, metadata: metadata) {
            //후행클로저
            (metadata, error) in
            guard metadata != nil else {
                print("업로드 실패함")
                self.textView.text.append("\n업로드 실패함")
                return
            }
            
                print("업로드 성공함")
                self.textView.text.append("\n업로드 성공함")
        
                //download URL
                serverImageRef.downloadURL(){
                //후행 클로저
                (url, error) in
                guard let downloadURL = url else {
                    return
                }
                self.textView.text.append("\n\(downloadURL.absoluteURL)")
                print("downloadURL:" ,downloadURL.absoluteURL)
                
                //DB에 쓰기 기능 추가하면 됨
            }
        }
    }
}
