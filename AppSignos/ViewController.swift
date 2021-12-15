//
//  ViewController.swift
//  AppSignos
//
//  Created by Carol Pinho on 14/12/21.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos : [String] = []
    var significadosSignos: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //signos
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gemeos")
        signos.append("Cancer")
        signos.append("Leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricórnio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        
        
        //configure significados
        significadosSignos.append("Dinâmicos e sinceros, quem tem sol em Áries costuma ter um forte contato com a sua individualidade, que pode parecer egoísmo em alguns momentos. Arianas e arianos tendem a ser alegres e muito extrovertidos, mas também podem ser bastante competitivos e soar um pouco autoritários.")
        significadosSignos.append("Calmo e persistente, se você tem sol no signo de Touro, provavelmente não costuma se irritar com facilidade. Em geral, suas posses e bens materiais são importantes para você. E, dependendo do restante do seu Mapa Astral, você pode usar isso ao seu favor, desenvolvendo uma tendência natural para acumular bens materiais, além de um ótimo senso de organização financeira. ")
        significadosSignos.append("2")
        significadosSignos.append("3")
        significadosSignos.append("4")
        significadosSignos.append("5")
        significadosSignos.append("6")
        significadosSignos.append("7")
        significadosSignos.append("8")
        significadosSignos.append("9")
        significadosSignos.append("10")
        significadosSignos.append("11")
        
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let celulaReuso = "celulaReuso"
        
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        var conteudo = celula.defaultContentConfiguration()
        conteudo.text = signos[indexPath.row]
        
        celula.contentConfiguration = conteudo
        
        return celula
    }

}

