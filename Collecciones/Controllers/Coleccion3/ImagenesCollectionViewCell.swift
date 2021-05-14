import UIKit

class ImagenesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imagenView: UIImageView!
    @IBOutlet weak var vista: UIView!
    @IBOutlet weak var texto: UILabel!
    @IBOutlet weak var contenido: UILabel!
    
    func addImages(imagen: UIImage, nombre: String, descrip: String) -> Void {
        imagenView.image = imagen
        texto.text = nombre
        contenido.text = descrip
        vista.layer.cornerRadius = 20
        vista.backgroundColor = UIColor.red
        
        let path = UIBezierPath(roundedRect: imagenView.bounds, byRoundingCorners: [.topRight, .topLeft], cornerRadii: CGSize(width: 20, height: 20))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        imagenView.layer.mask = mask
        
    }
    
}
