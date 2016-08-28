//
//  ASHomeController.swift
//  AppStore
//
//  Created by Deborshi Saha on 8/28/16.
//  Copyright © 2016 Semicolon Design. All rights reserved.
//

import UIKit

class ASHomeController: UICollectionViewController {

	private let cellId = "cellId"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		collectionView!.backgroundColor = UIColor.red
		
		self.title = "Featured"
		
		self.collectionView?.register(CategoryCell.self, forCellWithReuseIdentifier: cellId)
	}
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 3
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! CategoryCell
		return collectionViewCell
	}
	
}

class CategoryCell: UICollectionViewCell {
	
	override init(frame: CGRect) {
		super.init(frame: frame)
		
		bootstrapView()
	}
	
	func bootstrapView() {
		//
		
		backgroundColor = UIColor.green
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
