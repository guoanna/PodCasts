//
//  ViewController.swift
//  PodCasts
//
//  Created by Anna Guo on 4/29/19.
//  Copyright © 2019 Anna Guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let castImageView = UIImageView(image: UIImage(named: "cast"))
    
    let titleTextView: UITextView = {
        let textView = UITextView()
        textView.text = "PodCasts"
        textView.font = UIFont.boldSystemFont(ofSize: 60)
        textView.textAlignment = .center
        textView.textColor = UIColor.purple
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    let appTextView: UITextView = {
        let textView = UITextView()
        textView.text = "PodCasts is an iOS application that can search up podcasts albums and episodes within the iTunes library. The app is able to search up podcasts through search terms in the title or artist name."
        textView.font = UIFont.boldSystemFont(ofSize: 20)
        textView.textAlignment = .center
        textView.textColor = UIColor.purple
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.isEditable = false
        textView.isScrollEnabled = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
      
        view.addSubview(castImageView)
        view.addSubview(appTextView)
        view.addSubview(titleTextView)

        setUpViewLayout()
    }
    
    func setUpViewLayout () {
        
        castImageView.translatesAutoresizingMaskIntoConstraints = false
        
        castImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        castImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        castImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        castImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        appTextView.topAnchor.constraint(equalTo: castImageView.bottomAnchor, constant: 50).isActive = true
        appTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        appTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        appTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        titleTextView.bottomAnchor.constraint(equalTo: castImageView.topAnchor, constant: -20).isActive = true
        titleTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }

}

