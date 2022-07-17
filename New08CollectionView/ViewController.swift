//
//  ViewController.swift
//  New08CollectionView
//
//  Created by 김성진 on 2022/07/17.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource, UICollectionViewDelegate , UICollectionViewFlowLayout{
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
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
        
        //일반이벤트 처리자를 자신으로
        collectionView.delegate = self
        //데이타소스이벤트 처리자를 자신으로
        collectionView.dataSource = self
    }

    
    //MARK: - 데이타소스 이벤트
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.idolImageView.image = UIImage(named: images[indexPath.row])
        cell.labelName.text = names[indexPath.row]
        cell.labelArt.text = arts[indexPath.row]
        return cell

    }

    
    //MARK: - 일반이벤트
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("아이템 선택됨 : ",  indexPath.row)
    }
    
    //MARK: - 플로우 레이아웃
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath)-> CGSize {
       return CGSize(width: CGFloat((180)), height: CGFloat(180))
    }
    
}

