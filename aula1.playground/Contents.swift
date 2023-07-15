//@@03
//Structs

print("@@03 - Structs")

struct ContaCorrente {
    var saldo = 0.0
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

print("Example 1")
var contaCorrenteGiovanna = ContaCorrente();
print("Saldo da Giovanna inicial: \(contaCorrenteGiovanna.saldo)")
contaCorrenteGiovanna.depositar(1500)
print("Saldo da Giovanna final apos deposito. Saldo: \(contaCorrenteGiovanna.saldo)")
print("##################")
print("")
print("Example 2")
var contaCorrenteCaio = ContaCorrente();
print("Saldo do Caio inicial: \(contaCorrenteCaio.saldo)")
contaCorrenteCaio.depositar(200)
print("Saldo do Caio final apos deposito. Saldo: \(contaCorrenteCaio.saldo)")
contaCorrenteCaio.sacar(100)
print("Saldo do Caio final apos sacar 100. Saldo: \(contaCorrenteCaio.saldo)")
print("##################")
print("")

struct ContaCorrente2 {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}
print("")
print("Example 3")
var contaCorrenteGiovanna2 = ContaCorrente2(nome: "Giovanna");
print("Saldo da \(contaCorrenteGiovanna2.nome) inicial: \(contaCorrenteGiovanna2.saldo)")
contaCorrenteGiovanna.depositar(1500)
print("Saldo da \(contaCorrenteGiovanna2.nome) apos deposito. Saldo \(contaCorrenteGiovanna.saldo)")
print("##################")
print("")
print("Example 4")
var contaCorrenteCaio2 = ContaCorrente2(nome: "Caio");
print(contaCorrenteCaio2.saldo)
contaCorrenteCaio2.depositar(200)
print(contaCorrenteCaio2.saldo)
contaCorrenteCaio2.sacar(100)
print(contaCorrenteCaio2.saldo)
print("##################")
print("")
//@@04
//Classes
print("")
print("@@04 - Classes")
print("")
class ContaCorrente3 {
    var saldo: Double
    var nome: String
    
    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
}
print("")
print("Example 1")
var contaCorrenteGiovanna3 = ContaCorrente3(nome: "Giovanna");
print("Saldo da \(contaCorrenteGiovanna3.nome) inicial: \(contaCorrenteGiovanna3.saldo)")
contaCorrenteGiovanna.depositar(1500)
print("Saldo da \(contaCorrenteGiovanna3.nome) apos deposito. Saldo \(contaCorrenteGiovanna3.saldo)")
print("##################")
print("")
print("Example 2")
var contaCorrenteCaio3 = ContaCorrente3(nome: "Caio");
print("Saldo do \(contaCorrenteCaio3.nome) inicial: \(contaCorrenteCaio.saldo)")
contaCorrenteCaio.depositar(200)
print("Saldo do \(contaCorrenteCaio3.nome) final apos deposito. Saldo: \(contaCorrenteCaio.saldo)")
contaCorrenteCaio.sacar(100)
print("Saldo do \(contaCorrenteCaio3.nome) final apos sacar 100. Saldo: \(contaCorrenteCaio.saldo)")
print("##################")
print("")

//@@05
// Paradigma Orientado a Objetos

//@@06
// Instanciando uma classe

//@@07
//Diferenças entre structs e classes

print("")
print("@@07 - Diferenças entre structs e classes")
print("")

struct ContaCorrenteStruct {
    var saldo = 0.0
    var nome: String
    
    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }
}

print("")
print("Example 1 - Struct")
var contaCorrenteStruct1 = ContaCorrenteStruct(nome: "Giovanna");
var contaCorrenteStruct2 = contaCorrenteStruct1
contaCorrenteStruct1.depositar(1500)
contaCorrenteStruct2.depositar(50)
print("Saldo da Struct 1 \(contaCorrenteStruct1.nome) inicial: \(contaCorrenteStruct1.saldo)")
print("Saldo da Struct 1 \(contaCorrenteStruct1.nome) apos deposito. Saldo \(contaCorrenteStruct1.saldo)")
print("Saldo da Struct 2 \(contaCorrenteStruct2.nome) inicial: \(contaCorrenteStruct2.saldo)")
print("Saldo da Struct 2 \(contaCorrenteStruct2.nome) apos deposito. Saldo \(contaCorrenteStruct2.saldo)")
print("##################")
print("")

class ContaCorrenteClass {
    var saldo = 0.0
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
}

print("")
print("Example 2 - Class")
let contaCorrenteClass1 = ContaCorrenteClass(nome: "Ana");
let contaCorrenteClass2 = contaCorrenteClass1
contaCorrenteClass1.depositar(200)
contaCorrenteClass2.depositar(100)
print("Saldo da contaCorrenteClass1 \(contaCorrenteClass1.nome) inicial: \(contaCorrenteClass1.saldo)")
print("Saldo da contaCorrenteClass1 \(contaCorrenteClass1.nome) apos deposito. Saldo \(contaCorrenteClass1.saldo)")

print("Saldo da contaCorrenteClass2 \(contaCorrenteClass2.nome) inicial: \(contaCorrenteClass2.saldo)")
print("Saldo da contaCorrenteClass2 \(contaCorrenteClass2.nome) apos deposito. Saldo \(contaCorrenteClass2.saldo)")
print("##################")
print("")

//@@08
//Desafios

print("")
print("@@08 - Desafios")
print("")

print("")
print("Example 1 - Calculadora")

class Calculadora {
    var num1: Double
    var num2: Double
    
    init(num1: Double, num2: Double) {
        self.num1 = num1
        self.num2 = num2
    }
    
    func soma() -> Double {
        return(num1 + num2)
    }
    
    func sub() -> Double {
        return(num1 - num2)
    }
    
    func multi() -> Double {
        return(num1 * num2)
    }
    
    func divi() -> Double {
        return(num1 / num2)
    }
}

var calculadora = Calculadora(num1: 6, num2: 4)
print(calculadora.soma())
print(calculadora.sub())
print(calculadora.multi())
print(calculadora.divi())
print("##################")
print("")

print("")
print("Example 2 - Restaurante")
class Restaurante {
    var nome: String
    var tipoComida: String
    var numPedido: Int = 0
    
    init(nome: String, tipoComida: String) {
        self.nome = nome
        self.tipoComida = tipoComida
    }
    
    func recebePedido() {
        numPedido += 1
    }
    
    func calculaTotalPedidos() -> Double {
        return Double(numPedido) * 35.00
    }
}

var customer1 = Restaurante(nome: "Feijoca", tipoComida: "Prato")
customer1.recebePedido()
customer1.recebePedido()
print(customer1.calculaTotalPedidos())

var customer2 = Restaurante(nome: "Arroz frito", tipoComida: "Prato")
customer2.recebePedido()
customer2.recebePedido()
customer2.recebePedido()
print(customer2.calculaTotalPedidos())

print("##################")
print("")

print("")
print("Example 3 - Retangulo")

class Retangulo {
    var base: Double
    var altura: Double
    
    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura
    }
    
    func calcularArea() -> Double {
        return(base * altura)
    }
    
    func calcularPerimetro() -> Double {
        return(base * 2 + altura * 2)
    }
    
}

var retaungulo = Retangulo(base: 6, altura: 3)
print(retaungulo.calcularArea())
print(retaungulo.calcularPerimetro())
print("##################")
print("")
