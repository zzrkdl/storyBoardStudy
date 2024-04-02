//
//  PoketmonCell.swift
//  PokemonDoGam
//
//  Created by 김성진 on 2022/08/03.
//

import UIKit

class PoketmonCell:UICollectionViewCell {
    
    // MARK : Properties
    lazy var imageView : UIImageView = {    //이미지 뷰 생성
        let iv = UIImageView()
        iv.backgroundColor = UIColor.tertiarySystemGroupedBackground
        iv.contentMode = .scaleAspectFit
        return iv
    }()
    
    lazy var textView : UIView = {  //UI뷰 생성
        let view = UIView()
        view.backgroundColor = UIColor.mainColor
        view.addSubview(self.poketmonName)
        poketmonName.translatesAutoresizingMaskIntoConstraints = false
        poketmonName.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true //
        poketmonName.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true // UIView 가운데 정렬
        return view
    }()
   
    lazy var poketmonName : UILabel = {
        let label = UILabel()
        label.text = "SeongjinMon"
        label.font = UIFont.systemFont(ofSize: 14)
        return label
    }()

    
    // MARK : Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK : Helpers
    func configureViewComponents(){
        self.layer.cornerRadius = 10    // UIView 마진을 처리
        self.layer.masksToBounds = true
        
        self.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false                 //UIView의 이미지를 autolayout처럼 정의
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        imageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.7).isActive = true
        
        self.addSubview(textView)
        
    }
}
