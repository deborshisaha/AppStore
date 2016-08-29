//
//  ASHomeController.swift
//  AppStore
//
//  Created by Deborshi Saha on 8/28/16.
//  Copyright © 2016 Semicolon Design. All rights reserved.
//

import UIKit

class ASHomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

	private let cellId = "cellId"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		collectionView?.delegate = self
		
		collectionView!.backgroundColor = UIColor.white
		
		self.title = "Featured"

		collectionView?.register(ASCategoryCell.self, forCellWithReuseIdentifier: cellId)
	}
	
	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 3
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		
		let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! ASCategoryCell
		return collectionViewCell
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return CGSize(width: view.frame.width, height: 150)
	}
}
