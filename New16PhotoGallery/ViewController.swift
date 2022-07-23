//  ViewController.swift


import UIKit
import MobileCoreServices //애플 자체 SDK 포토앨범, 카메라기능 기능추가

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    let imagePickerVC : UIImagePickerController! =  UIImagePickerController()
    //선택된 이미지 데이타
    var captureImage : UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onBtnGallery(_ sender: UIButton) {
        //포토앨범에 접근 가능한가?
        if(UIImagePickerController.isSourceTypeAvailable(.photoLibrary)) {
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .photoLibrary
            imagePickerVC.mediaTypes = [kUTTypeImage as String]
            //잘라내기 편집 기능 지원
            imagePickerVC.allowsEditing = true
            //팝업
            present(imagePickerVC, animated: true, completion: nil)
            
        }else {
            print("포토앨범에 접근할 수 없습니다.")
        }
    }
    
    //선택된 이미지를 받아오는 함수
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaType = info[UIImagePickerController.InfoKey.mediaType] as! String
        
        if mediaType.isEqual(kUTTypeImage as NSString as String) {
            if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
                imageView.image = editedImage
                captureImage = editedImage
            }
            else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                imageView.image = originalImage
                captureImage = originalImage
            }
            //피커뷰 창을 닫아줌.
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    //취소 버튼 클릭시
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true ,completion: nil)
    }
}

