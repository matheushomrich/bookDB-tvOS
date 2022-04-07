//
//  BookModel.swift
//  BookDB-tvOS
//
//  Created by Guilherme Valent Antonini on 05/04/22.
//

import Foundation

struct Book {
    let title: String
    let author: String
    let overview: String
    let isOwned: Bool
    let price: Double
    let rate: Double

    static var books: [Book] {
        [
            Book(title: "Steve Jobs",
                 author: "Walter Isaacson",
                 overview: "O livro, baseado em mais de quarenta entrevistas com Jobs ao longo de dois anos - e entrevistas com mais de cem familiares, amigos, colegas, adversários e concorrentes -, narra a vida atribulada do empresário extremamente inventivo e de personalidade forte e polêmica, cuja paixão pela perfeição e cuja energia indomável revolucionaram seis grandes indústrias: a computação pessoal, o cinema de animação, a música, a telefonia celular, a computação em tablet e a edição digital.",
                 isOwned: true,
                 price: 49.90,
                 rate: 4.9),

            Book(title: "Essencialismo",
                 author: "Greg Mckeown",
                 overview: "O ESSENCIALISTA NÃO FAZ MAIS COISAS EM MENOS TEMPO – ELE FAZ APENAS AS COISAS CERTAS.  Se você se sente sobrecarregado e ao mesmo tempo subutilizado, ocupado, mas pouco produtivo, e se o seu tempo parece servir apenas aos interesses dos outros, você precisa conhecer o essencialismo.  O essencialismo é mais do que uma estratégia de gestão de tempo ou uma técnica de produtividade. Trata-se de um método para identificar o que é vital e eliminar todo o resto, para que possamos dar a maior contribuição possível àquilo que realmente importa",
                 isOwned: false,
                 price: 49.90,
                 rate: 4.8),

            Book(title: "O Poder do Hábito",
                 author: "Charles Duhigg",
                 overview: "Durante os últimos dois anos, uma jovem transformou quase todos os aspectos de sua vida. Parou de fumar, correu uma maratona e foi promovida. Em um laboratório, neurologistas descobriram que os padrões dentro do cérebro dela mudaram de maneira fundamental. Publicitários da Procter & Gamble observaram vídeos de pessoas fazendo a cama. Tentavam desesperadamente descobrir como vender um novo produto chamado Febreze, que estava prestes a se tornar um dos maiores fracassos na história da empresa.",
                 isOwned: true,
                 price: 29.90,
                 rate: 4.8),

            Book(title: "Não Me Faça Pensar",
                 author: "Steve Krug",
                 overview: "Dê um basta aos problemas de usabilidade! Clássico do autor Steve Krug ganha nova edição pela Alta Books.Quantas vezes você se sentiu perdido em um site? Quantas outras falhou ao tentar entender como funcionava um aplicativo? Na maioria das vezes, a culpa não é sua. Muitos são os sites ou aplicativos com falhas de desenvolvimento que dificultam sua compreensão e uso. Profissionais de usabilidade estão aí para assegurar que isso não aconteça, indo na raiz do problema, identificando através de testes os pontos em que os usuários 'travam' e propondo soluções.Steve Krug trabalha como consultor de usabilidade desde os tempos da conexão discada.",
                 isOwned: false,
                 price: 73.60,
                 rate: 4.8),

            Book(title: "A Sutil Arte de Ligar o F*da-se",
                 author: "Mark Manson",
                 overview: "Coaching, autoajuda, desenvolvimento pessoal, mentalização positiva — sem querer desprezar o valor de nada disso, a grande verdade é que às vezes nos sentimos quase sufocados diante da pressão infinita por parecermos otimistas o tempo todo. É um pecado social se deixar abater quando as coisas não vão bem. Ninguém pode fracassar simplesmente, sem aprender nada com isso. Não dá mais. É insuportável. E é aí que entra a revolucionária e sutil arte de ligar o foda-se.",
                 isOwned: false,
                 price: 29.90,
                 rate: 4.6)
        ]
    }
}
