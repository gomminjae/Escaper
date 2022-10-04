//
//  HomeViewController.swift
//  Escaper
//
//  Created by 권민재 on 2022/09/30.
//

import UIKit
import SnapKit

class HomeViewController: BaseViewController {
    
    
    let dummy = ["Let's go","Let's go","Let's go","Let's go","Let's go","Let's go"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func configView() {
        title = "Escaper"
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemTeal
        collectionView.dataSource = self
        collectionView.delegate = self
    }
    
    override func configLaout() {
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(self.view.safeAreaLayoutGuide)
            $0.leading.equalTo(self.view)
            $0.trailing.equalTo(self.view)
            $0.bottom.equalTo(self.view.safeAreaLayoutGuide)
        }
    }

    
    //MARK: UI
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let view = UICollectionView(frame: .zero, collectionViewLayout: layout)
        view.register(GoalCell.self, forCellWithReuseIdentifier: GoalCell.reusableIdentifier)
        view.register(HeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: HeaderView.reusableIdentifier)
        return view
    }()
}

extension HomeViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: GoalCell.reusableIdentifier, for: indexPath) as? GoalCell else { return UICollectionViewCell() }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        if kind == UICollectionView.elementKindSectionHeader {
            let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: HeaderView.reusableIdentifier, for: indexPath)
            return header
        } else {
            return UICollectionReusableView()
        }
    }
    
}
extension HomeViewController: UICollectionViewDelegate {
    
}
