//
//  NoteCollectionViewCell.swift
//  BestThoughts
//
//  Created by Konstantin Korchak on 15.02.2023.
//

import UIKit

class NoteCollectionViewCell: UICollectionViewCell {
    static let reuseID = String(describing: NoteCollectionViewCell.self)
    
    private lazy var view = UIView()

    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.numberOfLines = 1
        return label
    }()
    
    private lazy var baseLineLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.sizeToFit()
        return label
    }()
    
    func setupCell() {
        self.layer.cornerRadius = 7
        self.backgroundColor = .white

        addShadow()
        addSubviews()
        setupConstraints()
    }
    
    func update(title: String, baseLine: String) {
        titleLabel.text = title
        baseLineLabel.text = baseLine
    }
    
    private func addShadow() {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.05
        self.layer.shadowRadius = 5
        self.layer.shadowOffset = CGSize(width: 1.2, height: 1.2)
    }
    
    private func addSubviews() {
        contentView.addSubview(view)
        view.addSubview(titleLabel)
        view.addSubview(baseLineLabel)
    }
    
    private func setupConstraints() {
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 7),
            view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -7),
            view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 7),
            view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -7)
        ])
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 7),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 7),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -7),
            titleLabel.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.30)
        ])
        baseLineLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            baseLineLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 7),
            baseLineLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 7),
            baseLineLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -7),
            baseLineLabel.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -7)
        ])
    }
}
