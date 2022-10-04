//
//  GoalCell.swift
//  Escaper
//
//  Created by 권민재 on 2022/09/30.

import UIKit
import SnapKit

class GoalCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .purple
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        addSubview(titleLabel)
        addSubview(contentLabel)
    }
    
    //MARK: UI
    let titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let contentLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    
    
}
