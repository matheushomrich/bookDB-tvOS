//
//  DetailsViewController.swift
//  BookDB-tvOS
//
//  Created by Enzo Degrazia on 05/04/22.
//

import UIKit


class DetailsViewController: UIViewController {
    
    var book: Book? = nil
    
    @IBOutlet weak var bookCover: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionTitleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var reviewLabel: UILabel!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var buyBtn: UIButton!
    @IBOutlet weak var listBtn: UIButton!
    @IBOutlet weak var previewBtn: UIButton!
    @IBOutlet var buyView: UIView!
    @IBOutlet var listView: UIView!
    @IBOutlet var previewView: UIView!
    @IBOutlet var backgroundImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtons()
        setLabels()
        setBackgroundImage()
        
        
        // Do any additional setup after loading the view.
    }
    
    func setBackgroundImage() {
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        backgroundImage.addSubview(blurEffectView)
        
        backgroundImage.image = UIImage(named: book?.title ?? "")
        
    }
    
    func setLabels() {
        
        bookTitleLabel.text = book?.title
        
        authorLabel.text = book?.author
        descriptionLabel.text = book?.overview
        descriptionTitleLabel.text = "Description"
        reviewLabel.text = "60 Reviews"
        bookCover.image = UIImage(named: book?.title ?? "")
        bookCover.layer.cornerRadius = 20
    }
    
    func setButtons() {
        var buyTitle = "Owned"
        
        if book?.isOwned == true {
            buyBtn.setTitle(buyTitle, for: .normal)
            
        } else {
            buyBtn.setTitle("Buy | R$\(book?.price ?? 49.90)", for: .normal)
    }
        
        buyBtn.layer.cornerRadius = 50
        buyBtn.clipsToBounds = true
        buyBtn.layer.borderColor = UIColor(named: "Color")?.cgColor
        buyBtn.layer.borderWidth = 5
        buyBtn.titleLabel?.font = UIFont(name: "SFProText-Bold", size: 10)
        buyBtn.tintColor = UIColor(named: "Color")
        
        listBtn.layer.cornerRadius = 50
        listBtn.clipsToBounds = true
        listBtn.layer.borderColor = UIColor(named: "Color")?.cgColor
        listBtn.layer.borderWidth = 5
        listBtn.setTitle("Add to list", for: .normal)
        listBtn.titleLabel?.font = UIFont(name: "SFProText-Bold", size: 10)
        listBtn.tintColor = UIColor(named: "Color")
        
        previewBtn.layer.cornerRadius = 50
        previewBtn.clipsToBounds = true
        previewBtn.layer.borderColor = UIColor(named: "Color")?.cgColor
        previewBtn.layer.borderWidth = 5
        previewBtn.setTitle("Preview", for: .normal)
        previewBtn.titleLabel?.font = UIFont(name: "SFProText-Bold", size: 10)
        previewBtn.tintColor = UIColor(named: "Color")
        
    }
    
}
