//02
//Extensões

class Conta {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }

    init(nome: String) {
        self.nome = nome
    }
}

extension Conta {
    func transferir(_ contaDestino: Conta, _ valor: Double) {
        sacar(valor)
        contaDestino.depositar(valor)
    }
}

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(200)
print("Conta Giovanna saldo = \(contaGiovanna.saldo)")
var contaAnna = Conta(nome: "Ana")
contaGiovanna.transferir(contaAnna, 50)
print("Conta Giovanna saldo = \(contaGiovanna.saldo), tranferiu 50 para Anna")
print(contaGiovanna.saldo)
print("Conta Anna saldo = \(contaAnna.saldo)")
print(contaAnna.saldo)

func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}
var texto = "Giovanna"
print(contaCaracteresString(texto))

extension String {
    func contaCaracteres() -> Int {
        return self.count
    }
}

var texto2 = "Anna"
print(texto2.contaCaracteres())

//@@03
//Para saber mais: diferença entre Self e self

extension Int {
    func somaNumeroCom(_ numero: Self) -> Self {
        return numero + self
    }
}

let numero = 10
let resultadoSoma = numero.somaNumeroCom(20)
print(resultadoSoma) // Será exibido no console o valor 30

extension Int {
    func somaNumeroCom2(_ numero: Int) -> Int {
        return numero + self
    }
}

let numeroDez2 = 10
let resultadoSoma2 = numeroDez2.somaNumeroCom(20)
print(resultadoSoma2) // Será exibido no console o valor 30

//@@04
//Protocolos

protocol Conta2 {
    var saldo: Double {get set}
    
    func sacar(_ valor: Double)
    func depositar(_ valor: Double)
}

class ContaCorrente: Conta2 {
    var saldo: Double
    
    func sacar(_ valor: Double) {
        saldo -= valor
    }
    
    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    init() {
        saldo = 0.0
    }
}

//@@06
//Enumerações

class Conta3 {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: String) {
        switch tipoPagamento {
            case "pix": print("O pagamento sera efetuado por pix")
            case "boleto": print("O pagamento sera efetuado por boleto")
            case "saldoEmConta": print("O pagamento sera efetuado por saldoEmConta")
            default: break;
        }
    }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna3 = Conta3(nome: "Giovanna")
contaGiovanna3.pagamentoCartao("pix")

enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

class Conta4 {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case .pix: print("O pagamento sera efetuado por pix")
        case .boleto: print("O pagamento sera efetuado por boleto")
        case .saldoEmConta: print("O pagamento sera efetuado por saldoEmConta")
            default: break;
        }
    }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna4 = Conta4(nome: "Giovanna")
contaGiovanna4.pagamentoCartao(.pix)

enum Mes {
    case jan, fev, mar, abr, jun, jul, ago, set, out, nov, dez
}

var janeiro = Mes.jan
var fevereiro: Mes = .fev

//07
//Raw Values

enum Mes2: Int {
    case jan = 1, fev, mar, abr, jun, jul, ago, set, out, nov, dez
}

var janeiro2 = Mes2.jan
var fevereiro2: Mes2 = .fev

print(janeiro2.rawValue)
print(fevereiro2.rawValue)

enum Mes3: String {
    case jan = "Janeiro", fev, mar, abr, jun, jul, ago, set, out, nov, dez
}

var janeiro3 = Mes3.jan
var fevereiro3: Mes3 = .fev

print(janeiro3.rawValue)
print(fevereiro3.rawValue)

enum Moeda: Double {
    case umCentavo = 0.01
    case cincoCentavos = 0.05
    case dezCentavos = 0.10
    case vinteCincoCentavos = 0.25
    case cinquentaCentavos = 0.50
}

var moeda1 = Moeda.umCentavo;
var moeda2 = Moeda.cincoCentavos;
print(moeda1)
print(moeda1.rawValue)
print(moeda2)
print(moeda2.rawValue)

enum ResultadoSaque {
    case sucesso(novoValor: Double)
    case falha(erro: String)
}

class Conta5 {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) -> ResultadoSaque {
        if valor > saldo {
            return .falha(erro: "O valor \(valor) e maior do que seu saldo = \(saldo)")
        } else {
            saldo -= valor
            
            return .sucesso(novoValor: saldo)
        }
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
    
    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case .pix: print("O pagamento sera efetuado por pix")
        case .boleto: print("O pagamento sera efetuado por boleto")
        case .saldoEmConta: print("O pagamento sera efetuado por saldoEmConta")
        }
    }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna5 = Conta5(nome: "Giovanna")
contaGiovanna5.depositar(100)
var resultado = contaGiovanna5.sacar(20)

var resultado2 = contaGiovanna5.sacar(200)

switch resultado {
case .sucesso(let novoValor): print("O saque foi um sucesso, e o saldo e de \(novoValor)")
case .falha(let erro): erro
}

switch resultado2 {
case .sucesso(let novoValor): print("O saque foi um sucesso, e o saldo e de \(novoValor)")
case .falha(let erro): print(erro)
}

//@@08
//Desafios

// example 1
protocol Area {
    var area: Double {get}
}

class quadrado: Area {
    var area: Double
    
    init(_ area: Double) {
        self.area = area
    }
}

class triangulo: Area {
    var area: Double
    
    init(_ area: Double) {
        self.area = area
    }
    
}

// example 2

enum Moeda2: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50
}

let moedas: [Moeda2] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]

func somaMoedas(_ moedas: Array<Moeda2>) -> Int {
    var somaTotal: Int = 0
    
    for moeda in moedas {
        somaTotal = somaTotal + moeda.rawValue
    }
    
    return somaTotal
}

print(somaMoedas(moedas))


