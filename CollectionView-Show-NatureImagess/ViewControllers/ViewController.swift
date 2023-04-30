//
//  ViewController.swift
//  CollectionView-Show-NatureImagess
//
//  Created by Mac on 30/04/23.
//

import UIKit

class ViewController: UIViewController {

    var natureImagess = ["nature1","nature2","nature3","nature4","nature5","nature6","nature7","nature8","nature9","nature10"]
    var noOfImage = [1,2,3,4,5,6,7,8,9,10]
    @IBOutlet weak var natureCollectionVC: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return noOfImage.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = natureCollectionVC.dequeueReusableCell(withReuseIdentifier: "NatureCollectionViewCell", for: indexPath) as! NatureCollectionViewCell
        collectionCell.natureImage.image = UIImage(named: natureImagess[indexPath.row])
        collectionCell.noOfImageLbl.text = noOfImage[indexPath.row].description
        collectionCell.layer.cornerRadius = 10
        collectionCell.layer.borderWidth = 1
        collectionCell.layer.borderColor = UIColor.black.cgColor
        return collectionCell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-40)/2
        return CGSize(width: size, height: size)
    }
}
