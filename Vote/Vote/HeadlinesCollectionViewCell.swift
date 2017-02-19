//
//  HeadlinesCollectionViewCell.swift
//  Vote
//
//  Created by Simone on 2/19/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import UIKit
import SnapKit

class HeadlinesCollectionViewCell: UICollectionViewCell {
    
    var article: Article! {
        didSet {
            inputArticle()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewHierarchy()
        configureConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func inputArticle() {
        self.articleHeadlineLabel.text = self.article.headline
        //self.articleImageView.image
    }
    
    //MARK: - View Hierarchy and Constraints
    
    func setupViewHierarchy () {
        self.contentView.addSubview(articleImageView)
        self.contentView.addSubview(articleHeadlineLabel)
    }
    
    func configureConstraints () {
        articleImageView.snp.makeConstraints { (view) in
            view.trailing.leading.top.bottom.equalToSuperview()
        }
        
        articleHeadlineLabel.snp.makeConstraints { (view) in
            view.leading.trailing.bottom.equalToSuperview()
        }
    }
    
    //Views
    
    var articleImageView: UIImageView = {
        let view = UIImageView()
        return view
    }()
    
    var articleHeadlineLabel: UILabel = {
        let view = UILabel()
        view.numberOfLines = 0
        return view
    }()
}
