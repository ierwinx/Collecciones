import UIKit

class CeldaCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var texto: UILabel!
    
    public func setDatos(imagen: UIImage, nombre: String) -> Void {
        self.imagen.image = imagen
        self.texto.text = nombre
        
        self.imagen.layer.cornerRadius = 20
        self.imagen.layer.shadowColor = UIColor.black.cgColor
        self.imagen.layer.shadowOpacity = 1
        self.imagen.layer.shadowOffset = .zero
    }
    
}
