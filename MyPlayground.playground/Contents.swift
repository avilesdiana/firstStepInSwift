import UIKit

var str = "Hello, playground"


var stringExplícito : String = "Este es un string explícito" //Se pueden poner acentos y ñ en todo
var stringImplícito : String = "Este es un string implícito" //Se pueden poner acentos y ñ en todo

print("Este fue mi primer string: \(stringExplícito)")//Interpolación de string

var edad: Int
edad = 22
print ("Tengo \(edad) años")
edad = 28
print("... y ahora tengo \(edad)")
//edad = 4.5

let saludo : String
saludo = "Hola mundo"


var wave = saludo

let enSwiftNosGustanLosNombresDeVariablesQueSeanDescriptivos : String
enSwiftNosGustanLosNombresDeVariablesQueSeanDescriptivos = "Porque existe el autocompletado"

var 🦆 = 100
print("Ayer tenía \(🦆) pesos y hoy tengo \(🦆+20) pesos y voy a comprar un 🦆 ")

let 🐭 = "ratoncito"

3+7
saludo + 🐭
//saludo + 🦆 //ERROR
saludo + String(🦆)

var booleano = true //o false
var flotante = 3.1415926

var pi = 3.1416
pi = Double.pi
print (pi)

var miDoble = 9.0
miDoble.addingProduct(2.0,3.0)
miDoble.squareRoot()

extension Double{
    func saluda(){
        print("Hola, soy el double \(self)")
    }
}
miDoble.saluda()
7.5.saluda()

//COLECCIONES: ARRAY, DICTIONARY, SET


var arregloExplícito : Array<String> = ["Cosme Fulanito, saluda, 🐭"]
var arregloSemiExplícito : [String] = ["Moe", "Marge", "Bart"]
var arregloImplicito = ["Lisa", "Maggie", "Ayudante de Santa"]
var arregloVacio = [String]()
arregloImplicito[2]
arregloExplícito.count
arregloVacio.isEmpty
arregloExplícito.isEmpty
arregloSemiExplícito.description
miDoble.description

var changuitos = [String] (repeating: "🙈", count: 5)


var monitos = changuitos
print("changuitos tiene \(changuitos)")
print("monitos tiene \(monitos)")
changuitos [2] = "🐒"
print("changuitos tiene \(changuitos)")
print("monitos tiene \(monitos)")


for i in 0..<10{
    print(i)
}


for i in 0...10{
    print(i)
}

let 🐣 = "Chicken"
let 🐔 = "Hen"
let 📝 = "Pencil"
let 🖋 = "Pen"

var diccionario = [🐣,🐔, 📝 ,🖋]
for i in 0..<diccionario.count{
    print("Este es el elemento \(i): \(diccionario[i])")
}


for palabra in diccionario {
    print("Este es el elemento: \(palabra)")
}


for (lugar, palabra) in diccionario.enumerated(){
    print("La posición \(lugar) es de \(palabra)")
}

let multiplicando = 12
let multiplicador = 5
var resultado = 0

for _ in 1...multiplicando{
    resultado += multiplicando
}

print("\(multiplicando)x\(multiplicador)=\(resultado)")

   
var i = 0
while i < diccionario.count{
    print("\(diccionario[i])")
    i+=1
}

    
i = 0
repeat{
    print("\(diccionario[i])")
    i+=1
} while i<diccionario.count


let diccionarioES_DE: Dictionary<String,String> = ["Perro":"Hund", "Casa":"Haus", "Ceja":"Augenbraue","1":"Eins"]

var diccionarioEs_DE_numeros = [
    1:"Eins",
    2:"Zwei",
    3:"Drei",
    4:"Vier"]

print(diccionarioES_DE["Perro"]!)
let llaves = diccionarioES_DE.keys
let valore = diccionarioES_DE.values
diccionarioEs_DE_numeros.removeValue(forKey: 2)
diccionarioEs_DE_numeros.description

let casaEnAleman = diccionarioES_DE["Casa"]
let tiempoEnAleman = diccionarioES_DE["Tiempo"]
let cienEnAleman = diccionarioEs_DE_numeros[100]

print(diccionarioES_DE["Ceja"]!)

if let palabraTraducida = diccionarioES_DE["Ceja"]
{

    print(palabraTraducida)
} else{
    print("La palabra no está en el diccionario")
}

var numeroTraducido = diccionarioEs_DE_numeros[1] ?? "No existe en el diccionario"
var numeroTraducido2 = diccionarioEs_DE_numeros[2] ?? "No existe en el diccionario"



    
func saluda(){
    print("Hallo Welt")
}

saluda()

func cuentaVotos(votosEmitidos: [String], sentidoDeVotoAContar: String) -> Int{
    var cuenta = 0
    for voto in votosEmitidos{
        if voto == sentidoDeVotoAContar{
            cuenta += 1
        }
    }
    return cuenta
}
let pregunta = "¿Te gustan los Simpson?"
let urna = ["si", "si", "no", "no se", "no", "si", "si", "si","si"]

let votosSi = cuentaVotos(votosEmitidos: urna, sentidoDeVotoAContar: "si")
let votosNo = cuentaVotos(votosEmitidos: urna, sentidoDeVotoAContar: "no")
let votosNulos = cuentaVotos(votosEmitidos: urna, sentidoDeVotoAContar: "no se")

print("A \(votosSi) personas le gustan los Simpson, a \(votosNo) no le gustan y \(votosNulos) no saben")

let jefes = cuentaVotos(votosEmitidos: ["Jefes","49s","49s","49s","Jefes","Jefes"], sentidoDeVotoAContar: "Jefes")


func cuentaTodosLosVotos (votosAContar:[String]) -> (votosSi:Int, votosNo:Int, votosNulos:Int){//La tupla va entre parentesis
    let votosSi = cuentaVotos(votosEmitidos: votosAContar, sentidoDeVotoAContar: "si")
    let votosNo = cuentaVotos(votosEmitidos: votosAContar, sentidoDeVotoAContar: "no")
    let votosNulos = votosAContar.count - votosSi - votosNo
    return (votosSi, votosNo, votosNulos)
}
let resultados = cuentaTodosLosVotos(votosAContar: urna)
print("Le gustan los Simpson a \(resultados.votosSi) personas")
print ("No le gustan los Simpson a \(resultados.1) personas")

let (si,no, _) = cuentaTodosLosVotos(votosAContar: urna)
print("Le gustan a \(si)")
print("No le gustan a \(no)")


func repiteLaFrase(frase: String, cuantasVeces: Int) ->String{
    var  resultado = ""
    for _ in 0..<cuantasVeces {
        resultado += frase
    }
    return resultado
}

repiteLaFrase(frase: "Hallo Welt", cuantasVeces: 4)

func repiteLaFrase2 (quieroRepetir frase: String, cuantasVeces n:Int) -> String{
    var  resultado = ""
       for _ in 0..<n{
           resultado += frase
       }
       return resultado
}
repiteLaFrase2(quieroRepetir: "D'oh", cuantasVeces: 3)

func repiteLaFrase3(_ frase: String, _ n: Int) ->String{
    var  resultado = ""
    for _ in 0..<n {
        resultado += frase
    }
    return resultado
    
}
repiteLaFrase3("Ay Caramba",10)

func encuentraPares(arregloDeEnteros: [Int]) -> Array<Int>? {
    if arregloDeEnteros.isEmpty{
        return nil
    }
    var numerosEncontrados = [Int] ()
    for numero in arregloDeEnteros {
        if numero % 2 == 0{
            numerosEncontrados.append(numero)
        }
    }
    return numerosEncontrados
}


if let hayPares = encuentraPares(arregloDeEnteros: []){
    print(hayPares[0])
} else {
    print("Se recibió nil")
}

if let hayPares = encuentraPares(arregloDeEnteros: [1,2,3,4,5]){ //Aquí imprime el 2
    print(hayPares[0])
} else {
    print("Se recibió nil")
}

if let hayPares = encuentraPares(arregloDeEnteros: [1,3,5,7,9]){
    if hayPares.isEmpty{
        print("No hubo números pares")
    } else {
    print(hayPares[0])
    }
} else {
   print("Se recibió nil")
}


func despidete() {
    print("Auf Wiedersehen")
}
despidete()

let chao = despidete
chao()

func funcionQueRecibeUnaFuncion(argumento: () -> ()){
    for i in 1...3{
        print (i)
        argumento()
    }
}

funcionQueRecibeUnaFuncion(argumento: chao)

funcionQueRecibeUnaFuncion {
    print("Ya no soy Auf Wiedersehen")
let funcionQueImprimeLaFecha = {
    let fecha = Date()
    print(fecha)
}
funcionQueRecibeUnaFuncion(argumento: funcionQueImprimeLaFecha)
func convierteEnteroAFlotante(enteroAConvertir: Int) -> Float{
    return(Float(enteroAConvertir))
}

//funcionQueRecibeUnaFuncion(argumento: convierteEnteroAFlotante(enteroAConvertir: 42))

func elevaAlCuadrado(numero: Int ,funcion: (Int) -> Float) -> Float {
    let resultado = powf(funcion(numero), 2.0)
    return(resultado)
}
elevaAlCuadrado(numero: 5, funcion: convierteEnteroAFlotante(enteroAConvertir:))

func factorial(de: Int) -> Float{
    var resultado = 1
    for i in 2...de {
        resultado *= i
    }
    return (Float(resultado))
}
factorial(de:10)
elevaAlCuadrado(numero: 10, funcion: factorial(de:))//(x!)^2 "Equis factorial al cuadrado"

let divideEnteroAFlotante = {
    (entero: Int) -> Float in
    return (Float(entero/2))
}
elevaAlCuadrado(numero: 7, funcion: divideEnteroAFlotante)

func enterosQueCumplenUnaCondicion(enterosAProbar: [Int], condicion: (Int) -> Bool) -> [Int]? {
    if enterosAProbar.isEmpty{return nil}
    var arregloARegresar = [Int] ()
    for numero in enterosAProbar {
        if condicion(numero){
            arregloARegresar.append(numero)
        }
    }
    return arregloARegresar
}
let misEnteros = [-2,4,9,-12,8,0,19]
func mayorATres(numero:Int) -> Bool{
    return numero > 3
}
enterosQueCumplenUnaCondicion(enterosAProbar: misEnteros, condicion: mayorATres(numero:))

let multiplosDeDos = { //Condicion
    (entero: Int) -> Bool in
    return entero%2 == 0
}
enterosQueCumplenUnaCondicion(enterosAProbar: misEnteros, condicion: multiplosDeDos)

enterosQueCumplenUnaCondicion(enterosAProbar: misEnteros) {(numero) -> Bool in
return numero < 0
}
 
var familiaSimpson = ["Marge", "Bart", "Lisa", "Abraham", "Ayudante de Santa", "Bola de Nieve", "Patty", "Homero", "Selma", "Bola de Nieve 2", "Herbert"]
familiaSimpson.sorted()
familiaSimpson.description

func ordenDescendiente (string1: String, string2: String) -> Bool{ //Recibe elemeneto, elemento y regresa Booleano
    return string1 > string2
}
familiaSimpson.sorted(by: ordenDescendiente(string1:string2:))
ordenDescendiente(string1: "Zumbes", string2: "Zumbe")

let ordenDescendienteInLine = {
    (string1: String, string2: String) -> Bool in
    return string1 > string2
}
familiaSimpson.sorted(by: ordenDescendienteInLine)
familiaSimpson.sorted(by: {
    (string1: String, string2: String) -> Bool in
    return string1 > string2
})

familiaSimpson.sorted(by: {
    string1, string2 in return string1 > string2
})

familiaSimpson.sorted(by: {
    string1, string2 in  string1 > string2
})

print (familiaSimpson.sorted(by:{$0 > $1}))
print (familiaSimpson.sorted(by: > ))

}
