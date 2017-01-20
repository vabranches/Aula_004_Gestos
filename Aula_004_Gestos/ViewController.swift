
import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var minhaView: UIView!
    @IBOutlet weak var minhaLegenda: UILabel!
    
    //MARK: Propriedades
    var habilitado = false


    override func viewDidLoad() {
        super.viewDidLoad()
        
        minhaView.backgroundColor = UIColor.gray
        habilitado = false

    }
    
    //MARK: Actions
    @IBAction func moverObj(_ sender: UIPanGestureRecognizer) {
        if habilitado == true {
            minhaView.center = sender.location(in: view)

        }
    }

    @IBAction func habilitarObj(_ sender: UITapGestureRecognizer) {
        
        if habilitado == false {
            minhaView.backgroundColor = UIColor.green
            habilitado = true
        } else {
            minhaView.backgroundColor = UIColor.gray
            habilitado = false
        }
        
    }
    

}

