//
//  CollectionViewController.swift
//  BestThoughts
//
//  Created by Konstantin Korchak on 13.02.2023.
//

import UIKit

class ListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    private enum PresentationStyle: String, CaseIterable {
        case grid
        case table
        
        var buttonImage: UIImage {
            switch self {
            case .grid: return UIImage(imageLiteralResourceName: "default_grid")
            case .table: return UIImage(imageLiteralResourceName: "table")
            }
        }
    }
    
    lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(
            frame: UIScreen.main.bounds,
            collectionViewLayout: layout)
        collectionView.register(
            NoteCollectionViewCell.self,
            forCellWithReuseIdentifier: NoteCollectionViewCell.reuseID
        )
        collectionView.backgroundColor = .systemGray6
        return collectionView
    }()
    
    private lazy var addButton: UIButton = {
        let button = UIButton(type: .custom)
        button.layer.backgroundColor = UIColor.black.cgColor
        button.clipsToBounds = true
        button.setImage(UIImage(named: "buttonIcon"), for: .normal)
        button.layer.cornerRadius = 30
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOffset = CGSize(width: 2, height: 2)
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 5
        button.layer.masksToBounds = false
        return button
    }()
    
    private var selectedStyle: PresentationStyle = .table {
        didSet { updatePresentationStyle() }
    }
    
    private var styleDelegates: [PresentationStyle: CollectionViewSelectableItemDelegate] {
        let result: [PresentationStyle: CollectionViewSelectableItemDelegate] = [
            .grid: GriddedContentCollectionViewDelegate(),
            .table: TabledContentCollectionViewDelegate()
        ]
        result.values.forEach {
            $0.didSelectItem = { indexPath in
                print("Item selected \(indexPath.row)")
            }
        }
        return result
    }
    
    private var weakDelegate: CollectionViewSelectableItemDelegate? = TabledContentCollectionViewDelegate()
    private let mokTestModel = ListModel.getMokList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        
        navigationItem.title = "Best Thoughts"
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            image: selectedStyle.buttonImage,
            style: .plain,
            target: self,
            action: #selector(changeContentLayout)
        )
        navigationItem.rightBarButtonItem?.tintColor = .black
        
        updatePresentationStyle()
        
        view.addSubview(collectionView)
        view.addSubview(addButton)
        setupAddButtonConstraints()
    }
    
    private func updatePresentationStyle() {
        navigationItem.rightBarButtonItem?.image = selectedStyle.buttonImage
        weakDelegate = styleDelegates[selectedStyle]
        collectionView.delegate = weakDelegate
        collectionView.performBatchUpdates {
            collectionView.reloadData()
        }
    }
    
    @objc private func changeContentLayout() {
        let allCases = PresentationStyle.allCases
        guard let index = allCases.firstIndex(of: selectedStyle) else { return }
        let nextIndex = (index + 1) % allCases.count
        selectedStyle = allCases[nextIndex]
    }
    
    private func setupAddButtonConstraints() {
        addButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addButton.heightAnchor.constraint(equalToConstant: 60),
            addButton.widthAnchor.constraint(equalToConstant: 60),
            addButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            addButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -25)
        ])
    }


    // MARK: UICollectionViewDataSource

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return mokTestModel.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: NoteCollectionViewCell.reuseID, for: indexPath
        ) as? NoteCollectionViewCell else {
            fatalError("Wrong cell")
        }
        cell.setupCell()
        let test = mokTestModel[indexPath.row]
        cell.update(title: test.title, baseLine: test.discription)
        return cell
    }
}
