//
//  ViagemTableViewCell.swift
//  AppViagens
//
//  Created by João Víctor Benetti Filipim on 19/06/25.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var statusCancelamentoViagemLabel: UILabel!
    
    func configuraCelula(_ viagem: Viagem?) {
        
        viagemImage.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subtituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0.00)"
        
        let atributoString: NSMutableAttributedString = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0)")
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoString.length))
        precoSemDescontoLabel.attributedText = atributoString
        
        if let numerodeDias = viagem?.diaria, let numeroDeHospedes = viagem?.hospedes {
            let diarias = numerodeDias == 1 ? "Diária" : "Diárias"
            let hospedes = numeroDeHospedes == 1 ? "Pessoa" : "Pessoas"
            
            diariaViagemLabel.text = "\(numerodeDias) \(diarias) - \(numeroDeHospedes) \(hospedes)"
        }
        
        precoSemDescontoLabel.text = "R$ \(viagem?.precoSemDesconto ?? 0.00)"
        
        // MARK: - Adiciona sombra por meio de Extensions/UIView+Extension.swift
        DispatchQueue.main.async {
            self.backgroundViewCell.addSombra()
        }
    }
}
