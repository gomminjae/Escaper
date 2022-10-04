//
//  HeaderView.swift
//  Escaper
//
//  Created by 권민재 on 2022/09/30.
//

import UIKit
import SnapKit

class HeaderView: UICollectionReusableView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        backgroundColor = .black
        addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints {
            $0.centerX.equalTo(self)
            $0.centerY.equalTo(self)
        }
    }
    
    //MARK: UI
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello world!"
        return label
    }()
    
    let subTitleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let imageView: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    
}
