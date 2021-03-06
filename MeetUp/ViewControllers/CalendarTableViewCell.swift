//
//  CalendarTableViewCell.swift
//  MeetUp
//
//  Created by Cappillen on 7/16/18.
//  Copyright © 2018 Cappillen. All rights reserved.
//

import UIKit

class CalendarTableViewCell: UITableViewCell {
    
    private let topTimeLabel = UILabel()
    private let bottomTimeLabel = UILabel()
    
    private let separatorLine = UIView()
    private let topSeperatorLine = UIView()
    
    var topTime: String = "" {
        didSet {
            topTimeLabel.text = topTime
        }
    }
    var bottomTime: String = "" {
        didSet {
            bottomTimeLabel.text = bottomTime
        }
    }
    
    var selectedTime: Bool = false
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        
        contentView.addSubview(topTimeLabel)
        contentView.addSubview(bottomTimeLabel)
        contentView.addSubview(separatorLine)
        contentView.addSubview(topSeperatorLine)
        
        topTimeLabel.textColor = UIColor.gray
        topTimeLabel.textAlignment = .right
        bottomTimeLabel.textColor = UIColor.gray
        bottomTimeLabel.textAlignment = .right
        separatorLine.backgroundColor = UIColor.gray
        topSeperatorLine.backgroundColor = UIColor.gray
        
        
        bottomTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        topTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        separatorLine.translatesAutoresizingMaskIntoConstraints = false
        topSeperatorLine.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            bottomTimeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            bottomTimeLabel.centerYAnchor.constraint(equalTo: self.bottomAnchor),
            bottomTimeLabel.widthAnchor.constraint(equalToConstant: 50),
            topTimeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            topTimeLabel.centerYAnchor.constraint(equalTo: self.topAnchor),
            topTimeLabel.widthAnchor.constraint(equalToConstant: 50),
            separatorLine.leftAnchor.constraint(equalTo: bottomTimeLabel.rightAnchor, constant: 8),
            separatorLine.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            separatorLine.heightAnchor.constraint(equalToConstant: 1),
            separatorLine.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            topSeperatorLine.leftAnchor.constraint(equalTo: bottomTimeLabel.rightAnchor, constant: 8),
            topSeperatorLine.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            topSeperatorLine.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            topSeperatorLine.heightAnchor.constraint(equalToConstant: 1),
            ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func removeTopSeperatorLine() {
        self.topSeperatorLine.isHidden = true
    }

}
