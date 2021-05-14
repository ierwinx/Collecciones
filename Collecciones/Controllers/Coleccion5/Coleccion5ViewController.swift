import UIKit

class Coleccion5ViewController: UIViewController {

    //MARK: Oulets
    @IBOutlet weak var coleccion: UICollectionView!
    
    //MARK: Properties
    let reuseIdentifier: String = "PhotoCelda"
    let imagenesMostrar: [String] = [
        "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete",
        "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete",
        "uno", "dos", "tres", "cuatro", "cinco", "seis", "siete"
    ]
    
    //MARK: Ciclo de Vida
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.dataSource = self
        coleccion.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        coleccion.reloadData()
    }

}

//MARK: Datasource
extension Coleccion5ViewController: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imagenesMostrar.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PinterestCollectionViewCell
        cell.llenaImagen(nombre: self.imagenesMostrar[indexPath.row])
        return cell
    }

}
//MARK: Delegate
extension Coleccion5ViewController: UICollectionViewDelegate {
    
}

//MARK: DelegateFlowLayout
extension Coleccion5ViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let tamanioPantalla = UIScreen.main.bounds
        let filas: CGFloat = 2.0
        let ancho = (tamanioPantalla.width / filas) * 0.8
        
        return CGSize(width: ancho, height: CGFloat.random(in: ancho...ancho * 2))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
    }
    
}
