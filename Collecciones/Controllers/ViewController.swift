import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coleccion: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.delegate = self
        coleccion.dataSource = self
        coleccion.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "celdaX")
    }

}


extension ViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 200
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaX", for: indexPath)
        
        let red = CGFloat(Int(arc4random_uniform(155)) + 100)
        let blue = CGFloat(Int(arc4random_uniform(155)) + 100)
        let green = CGFloat(Int(arc4random_uniform(155)) + 100)
        
        celda.backgroundColor = UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1.0)
        
        return celda
    }
    
}

extension ViewController: UICollectionViewDelegate {
    
}
