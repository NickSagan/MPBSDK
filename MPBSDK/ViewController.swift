//
//  ViewController.swift
//  MPBSDK
//
//  Created by Nick Sagan on 20.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var collectionView: UICollectionView = {
        let collection = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collection.backgroundColor = .systemYellow
        collection.showsVerticalScrollIndicator = false
        collection.delegate = self
        collection.dataSource = self
        return collection
    }()
    
    private lazy var layout: UICollectionViewFlowLayout = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.minimumLineSpacing = 10
        layout.itemSize.width = view.frame.width - 40
        layout.itemSize.height = view.frame.width * 0.8
        return layout
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        setup()
    }
    
    // MARK: - Private
    
    private func setup() {
        view.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.topMargin)
            make.leading.bottom.trailing.equalToSuperview()
        }
    }

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
    
}

extension ViewController: UICollectionViewDelegate {
    
}
