//
//  LibraryHeaderView.swift
//  BookDB-tvOS
//
//  Created by Guilherme Valent Antonini on 06/04/22.
//

import UIKit

class LibraryHeaderView: UICollectionReusableView {
        
    @IBOutlet weak var sectionTitleLabel: UILabel!

    let sectionsTitles: [String] = ["Lendo agora", "Próximas leituras", "Lidos", "Quero ler"]
}
