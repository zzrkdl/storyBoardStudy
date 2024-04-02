//
//  ListViewController.swift


import UIKit
import Firebase
import FirebaseFirestore
import CoreMedia

class ListViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    struct IdolData {
        var name : String = ""
        var imageString : String = ""
        //Firebase DB에 들어가는 데이타 구조
        //클래스, 구조체가 들어갈 수 없음.
        //1. Number
        //2. String
        //3. Array
        //4. Dictionary
        func getDic () -> [String:String] {
            let dict = ["name":self.name, "imageString":self.imageString]
            return dict
        }
    }
    //구조체 배열
    var idolArray : Array<IdolData> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    @IBAction func onBtnAdd(_ sender: UIButton) {
        addListData()
    }
    @IBAction func onBtnRead(_ sender: UIButton) {
        readListData()
    }
    
    func addListData() {
        var idol = IdolData()
        idol.name = "태연"
        idol.imageString = "image3.png"
        //DB에 접근하면서 Dictionnary로 변환
        let idolDic = idol.getDic()
        //DB연동
        let db = Firestore.firestore()
        
        var ref : DocumentReference? = nil
        ref = db.collection("idols").addDocument(data: idolDic) {
            //후행클로저
            err in
            if let error = err {
                print("쓰기 에러 발생:" ,error)
                self.textView.text.append("\n쓰기 에러 발생")
            }else {
                print("도큐먼트 쓰기 성공")
                print("도큐먼트 ID : ", ref!.documentID)
                self.textView.text.append("\n도큐먼트 쓰기 성공")
            }
        }
    }
    
    func readListData() {
        let db = Firestore.firestore()
        
        db.collection("idols").whereField("name", isEqualTo: "태연").getDocuments() {
            //후행 클로저
            (QuerySnapshot,err) in
            if let error = err {
                print("읽기 에라 발생", error.localizedDescription)
                self.textView.text.append("\n읽기오류 발생")
            }else {
                for document in QuerySnapshot!.documents {
                    print("\(document.documentID) ==> \(document.data())")
                    
                    let dataDic = document.data() as NSDictionary
                    let name = dataDic["name"] as? String ?? "이름없음"
                    let imageString = dataDic["imageString"] as? String ?? "이미지없음"
                    
                    //구조체에 데이타를 넣어줌
                    var idol = IdolData()
                    idol.name = name
                    idol.imageString = imageString
                    self.idolArray.append(idol)
                }
                
                for idol in self.idolArray {
                    self.textView.text.append("\n\(idol.name)")
                    self.textView.text.append("\n\(idol.imageString)")
                }
            }
        }
    }

}
