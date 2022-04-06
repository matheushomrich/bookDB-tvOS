//
//  DetailsViewController.swift
//  BookDB-tvOS
//
//  Created by Enzo Degrazia on 05/04/22.
//

import UIKit


class DetailsViewController: UIViewController {
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setButtons()
        setLabels()
        
        
        // Do any additional setup after loading the view.
    }
    
    func setLabels() {
        bookTitleLabel.text = "Steve Jobs"
        authorLabel.text = "Walter Isaacson"
        descriptionLabel.text = "O livro, baseado em mais de quarenta entrevistas com Jobs ao longo de dois anos - e entrevistas com mais de cem familiares, amigos, colegas, adversários e concorrentes -, narra a vida atribulada do empresário extremamente inventivo e de personalidade forte e polêmica, cuja paixão pela perfeição e cuja energia indomável revolucionaram seis grandes indústrias: a computação pessoal, o cinema de animação, a música, a telefonia celular, a computação em tablet e a edição digital."
        descriptionTitleLabel.text = "Description"
        reviewLabel.text = "60 Reviews"
    }
    
    func setButtons() {
        //variaveis temporarias
        let price = "49,90"
        var isOwned = false
        
        if isOwned == true {
            buyBtn.setTitle("Owned", for: .normal)
            buyView.layer.backgroundColor = UIColor.gray.cgColor
            buyView.layer.borderColor = UIColor.gray.cgColor
        } else {
            buyBtn.layer.cornerRadius = 10
            buyBtn.clipsToBounds = true
            buyBtn.setTitle("Buy | R$\(price)", for: .normal)
            buyView.layer.backgroundColor = UIColor.orange.cgColor
            buyView.layer.borderColor = UIColor.orange.cgColor
            buyView.layer.borderWidth = 10
        }
        
        listBtn.layer.cornerRadius = 10
        listBtn.clipsToBounds = true
        listBtn.setTitle("Add to list", for: .normal)
        buyView.layer.backgroundColor = .none
        buyView.layer.borderColor = UIColor.orange.cgColor
        buyView.layer.borderWidth = 10
        
        previewBtn.layer.cornerRadius = 10
        previewBtn.clipsToBounds = true
        previewBtn.setTitle("Preview", for: .normal)
        buyView.layer.backgroundColor = .none
        buyView.layer.borderColor = UIColor.orange.cgColor
        buyView.layer.borderWidth = 10
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
