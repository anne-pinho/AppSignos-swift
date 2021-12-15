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
        
        significadosSignos.append("Calmo e persistente, se você tem sol no signo de Touro, provavelmente não costuma se irritar com facilidade. Em geral, suas posses e bens materiais são importantes para você.")
        
        significadosSignos.append("Curioso e bem humorado, quem tem sol no signo de Gêmeos costuma fazer amigos sem grandes dificuldades, tem uma verdadeira vocação para manter um círculo social diverso, com todas as tribos possíveis. ")
        
        significadosSignos.append("Emotivos e sensíveis, quem tem sol no signo de Câncer costuma ter uma forte conexão com as lembranças do passado, que podem contribuir para posturas muito sentimentais ou até melancólicas.")
        
        significadosSignos.append("Vaidade e bom humor podem ser marca registrada na personalidade de quem tem o sol no signo de Leão. Carismáticos e naturalmente destacáveis, leoninas e leoninos típicos tendem a ser bem extrovertidos.")
        
        significadosSignos.append("A busca pela perfeição pode ser bem presente na personalidade de quem tem o sol no signo de Virgem. Naturalmente adeptos da praticidade, virginianas e virginianos podem melhorar sua auto-estima se sentindo mais úteis e produtivos.")
        
        significadosSignos.append("A empatia e a diplomacia podem ser bem presentes na personalidade de quem tem o sol no signo Libra. Libra é regido por Vênus, e isso dá ao signo um apreço natural a tudo que pode ser considerado belo.")
        
        significadosSignos.append("Uma forte intuição é uma das marcas registradas de quem tem Sol no signo Escorpião, geralmente orientados pelas suas emoções, escorpianos e escorpianas conseguem enxergar nas entrelinhas e identificar o que não foi dito.")
        
        significadosSignos.append("Vaidosos e bem humorados, quem tem sol no signo de Sagitário costuma enxergar com facilidade o lado positivo de cada situação. Cidadãos do mundo, sagitarianas e sagitarianos geralmente são pessoas extrovertidas, espontâneas e comunicativas que não gostam nenhum pouco de solidão.")
        
        significadosSignos.append("Praticidade e maturidade são típicas características de Capricórnio. Independentes, costumam fazer seu próprio caminho e não confiar muito em rotas traçadas por outras pessoas.")
        
        significadosSignos.append("A busca por inovação e independência podem ser características fortes em pessoas com o sol no signo de Aquário. Com criatividade sempre em alta, costumam ser bastante inventivas e direcionadas a solução de problemas. ")
        
        significadosSignos.append("A empatia e a humildade podem ser fortes características de Peixes. Sempre conectados com sua intuição, piscianos e piscianas costumam captar as coisas no ar, muitas vezes são pessoas bem discretas e observadoras que conseguem perceber o mundo através da observação de si.")
        
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
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Significado", message: significadosSignos[indexPath.row], preferredStyle: .alert)
        
        let actionConfirm = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(actionConfirm)
        
        present(alertController, animated: true, completion: nil)
   
    }
}

