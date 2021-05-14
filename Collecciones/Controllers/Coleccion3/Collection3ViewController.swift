import UIKit

class Collection3ViewController: UIViewController {

    @IBOutlet weak var coleccion: UICollectionView!
    
    let imagenesMostrar: [String] = [
        "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.dataSource = self
        coleccion.delegate = self
    }

}


extension Collection3ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagenesMostrar.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaX", for: indexPath) as! ImagenesCollectionViewCell
        
        cell.addImages(imagen: UIImage(named: imagenesMostrar[indexPath.row])!, nombre: "Imagen \(imagenesMostrar[indexPath.row])", descrip: "Esta es la descripcion numero \(imagenesMostrar[indexPath.row])")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let tamanioPantalla = UIScreen.main.bounds
        
        let ancho = tamanioPantalla.width * 0.94
        
        return CGSize(width: ancho, height: 220)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    }
    
}
