import UIKit

class Collection4MenViewController: UIViewController {

    @IBOutlet weak var coleccion: UICollectionView!
    
    let reuseIdentifier: String = "celdaX"
    
    let imagenesMostrar: [String] = [
        "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.delegate = self
        coleccion.dataSource = self
    }
    
}

extension Collection4MenViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imagenesMostrar.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CeldaCollectionViewCell
    
        cell.setDatos(imagen: UIImage(named: imagenesMostrar[indexPath.row])!, nombre: "Imagen \(imagenesMostrar[indexPath.row])")
        
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
