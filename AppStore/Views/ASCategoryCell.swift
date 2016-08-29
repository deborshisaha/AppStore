//
//  ASCategoryCell.swift
//  AppStore
//
//  Created by Deborshi Saha on 8/29/16.
//  Copyright © 2016 Semicolon Design. All rights reserved.
//

import UIKit

class ASCategoryCell: UICollectionViewCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		bootstrapView()
	}
	
	
	let appCollectionView: UICollectionView = {
		
		let layout = UICollectionViewFlowLayout()
		layout.scrollDirection = .horizontal
		
		let collectionView = UICollectionView (frame: .zero, collectionViewLayout: layout)
		collectionView.backgroundColor = UIColor.white
		collectionView.translatesAutoresizingMaskIntoConstraints = false
		return collectionView
	}()

	func bootstrapView() {
		//
		backgroundColor = UIColor.green
		
		appCollectionView.delegate = self
		
		appCollectionView.dataSource = self
		
		appCollectionView.register(AppCell.self, forCellWithReuseIdentifier: "appCell")

		addSubview(appCollectionView)
		
		addConstraints((NSLayoutConstraint.constraints(withVisualFormat: "H:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":appCollectionView])))
		
		addConstraints((NSLayoutConstraint.constraints(withVisualFormat: "V:|[v0]|", options: NSLayoutFormatOptions(), metrics: nil, views: ["v0":appCollectionView])))
	}
	
	func numberOfSections(in collectionView: UICollectionView) -> Int {
		return 1
	}
	
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}
	
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "appCell", for: indexPath) as! AppCell
		return cell
	}
	
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: 100, height: frame.height)
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}

class AppCell: UICollectionViewCell {
	
	let imageView: UIImageView = {
		let iv = UIImageView()
		iv.image = UIImage(named: "airbnb")
		return iv
	}()

	override init(frame: CGRect) {
		super.init(frame: frame)
		
		bootstrapView()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	func bootstrapView() {
		//
		backgroundColor = UIColor.magenta
	}
	
}
