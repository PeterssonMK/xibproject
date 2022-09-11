//
//  OrdinaryTableViewCell.swift
//  XibBasedLayout
//
//  Created by Alexandr on 09.09.2022.
//

import UIKit

class OrdinaryTableViewCell: UITableViewCell {
 
    let leftLabel: UILabel = {
        let label = UILabel()
        label.text = "🧸"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let rightLabel: UILabel = {
        let label = UILabel()
        label.text = "This cell is made from UITableViewCell"
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
 
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.contentView.addSubview(leftLabel)
        self.contentView.addSubview(rightLabel)
        setUpConstraints()

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpConstraints(){
        leftLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        
        leftLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12).isActive = true
        
      
        leftLabel.widthAnchor.constraint(equalToConstant: 22).isActive = true
        
        rightLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 12).isActive = true
        
        rightLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true

        leftLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        rightLabel.setContentHuggingPriority(.defaultLow, for: .horizontal)
        
        
        
    }

}
