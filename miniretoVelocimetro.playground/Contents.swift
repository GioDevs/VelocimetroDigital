//: Velocimetro Digitital

import UIKit

enum Velocidades : Int {
    case Apagado        = 0
    case VelocidadBaja  = 20
    case VelocidadMedia = 50
    case VelocidadAlta  = 120
    
    init (velocidadInicial : Velocidades){
        self = velocidadInicial
    }
    
}

class Auto {
    var velocidad = Velocidades(velocidadInicial: .Apagado)
    
    init(velocidad : Velocidades){
        self.velocidad  = velocidad
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadean : String){
        
        let velActual = velocidad.rawValue
        let velActualCadena = velocidad
        
        if velocidad == .Apagado{
            velocidad = .VelocidadBaja
        }else{
            if velocidad == .VelocidadBaja {
                velocidad = .VelocidadMedia
            }else{
                if velocidad == .VelocidadMedia{
                    velocidad = .VelocidadAlta
                }else{
                    if velocidad == .VelocidadAlta{
                        velocidad = .VelocidadMedia
                    }
                }
            }
        }

        return (velActual , "\(velActualCadena)")
        
    }
}


var (actualInt,velocidadString) = (0,"")

var auto = Auto(velocidad: .Apagado)

for i in 0...20 {
    (actualInt, velocidadString) = auto.cambioDeVelocidad()
    print ( " \(i). \(actualInt), \(velocidadString) ")
    
}


