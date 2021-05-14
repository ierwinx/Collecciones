import UIKit

class PinterestCollectionViewCell: UICollectionViewCell {
    
    //MARK: Outlets
    @IBOutlet weak var imagen: UIImageView!
    
    public func llenaImagen(nombre: String) -> Void {
        imagen.image = UIImage(named: nombre)
    }
    
}
