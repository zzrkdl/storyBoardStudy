//
//  ViewController.swift


import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
  
    

    @IBOutlet weak var tableView: UITableView!
    
    let names:[String] = [
        "아이린","태연","아이유","윤아","수지"
    ]
    
    let arts:[String] = [
        "빨간맛, 파워업", "호텔델루나, 사계" , "좋은날, 스물셋" ,
        "효리네민박, 바람이불면", "건축학개론, FacesOfLove"
    ]
    let images :[String] = [
        "image1.png", "image2.png","image3.png", "image4.png","image5.png"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //테이블뷰의 일반 이벤트 처리
        tableView.delegate = self
        //테이블뷰의 데이타소스 처리
        tableView.dataSource = self
    }
    
    //MARK: - 데이타소스
    //Section : Grouped TableView
    //아이템의 수를 리턴
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    //테이블뷰 셀의 객체(인스턴스,뷰)를 리턴
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //indexPath : section: 0
        //            row : 0,1,2,3,4
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        cell.idolImageView?.image = UIImage(named:images[indexPath.row])
        cell.labelName?.text = names[indexPath.row]
        cell.labelArt?.text = arts[indexPath.row]
        //기본 선택효과 제거
        cell.selectionStyle = .none
        return cell
    }
    
    //MARK: - 일반이벤트
    //셀의 높이값을 리턴
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("선택된 셀의 위치: 섹션-", indexPath.section)
        print("선택된 셀의 위치: 열-" , indexPath.row
        )
    }
}

