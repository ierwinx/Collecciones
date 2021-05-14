import UIKit

private let reuseIdentifier = "Cell"

class Collection2ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 200
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
        
        let red = CGFloat(Int(arc4random_uniform(155)) + 100)
        let blue = CGFloat(Int(arc4random_uniform(155)) + 100)
        let green = CGFloat(Int(arc4random_uniform(155)) + 100)
        
        cell.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
    
        return cell
    }
    
    // MARK: UICollectionViewDelegateFlowLayout
    //Cambiamos el tamalo de la celda y decimos cuantas filas tenemos
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let tamanioPantalla = UIScreen.main.bounds
        // el numero 3.0 hace que pueda tener 3 filas
        let ancho = (tamanioPantalla.width / 3.0) * 0.8
        
        return CGSize(width: ancho, height: ancho)
    }
    
    // Agregamos espacio entre las lineas y agregamos margen de 10
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
    }

}
