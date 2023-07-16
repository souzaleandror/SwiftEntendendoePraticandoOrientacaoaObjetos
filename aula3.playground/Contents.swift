//@@02
//Propriedades armazenadas, computadas e estáticas

class Conta {
    var saldo = 0.0
    var nome: String
    
    static var taxaTransferencia = 0.1 //Essa taxa de transferência se aplica para todas as instâncias de uma conta, logo, faz mais sentido essa propriedade ser específica de uma classe e não de uma instância. Por isso, ela pode ser chamada de propriedade estática.
    
    var negativada: Bool { //As propriedades computadas precisam ter o seu tipo declarado de forma explícita.
        return saldo < 0
    }

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

//Por exemplo, o atributo saldo é uma propriedade armazenada, pertencendo a uma classe ou struct, e possui algum valor. O atributo nome também é uma propriedade armazenada, dado que está armazenando algum valor.

//As propriedades computadas precisam ter o seu tipo declarado de forma explícita.

// Essa taxa de transferência se aplica para todas as instâncias de uma conta, logo, faz mais sentido essa propriedade ser específica de uma classe e não de uma instância. Por isso, ela pode ser chamada de propriedade estática.

var contaCorrente = Conta(nome: "Giovanna")
contaCorrente.sacar(20)
print(contaCorrente.negativada)
contaCorrente.depositar(100)
print(contaCorrente.negativada)
print(Conta.taxaTransferencia)

//@@05
//Observadores de propriedade

class Conta2 {
    var saldo = 0.0 {
        willSet {
            print("O salvo esta sendo alterado! O seu novo valor sera de \(newValue)")
        }
        
        didSet {
            print("O salvo esta sendo alterado! O seu valor antigo era de \(oldValue)")
        }
    }
    var nome: String
    
    static var taxaTransferencia = 0.1 //Essa taxa de transferência se aplica para todas as instâncias de uma conta, logo, faz mais sentido essa propriedade ser específica de uma classe e não de uma instância. Por isso, ela pode ser chamada de propriedade estática.
    
    var negativada: Bool { //As propriedades computadas precisam ter o seu tipo declarado de forma explícita.
        return saldo < 0
    }

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

var contaCorrente2 = Conta2(nome: "Giovanna")
contaCorrente2.depositar(100)
contaCorrente2.depositar(200)

class Conta3 {
    var saldo = 0.0 {
        willSet(NovoValor) {
            print("O salvo esta sendo alterado! O seu novo valor sera de \(NovoValor)")
        }
        
        didSet(AntigoValor) {
            print("O salvo esta sendo alterado! O seu valor antigo era de \(AntigoValor)")
        }
    }
    var nome: String
    
    static var taxaTransferencia = 0.1 //Essa taxa de transferência se aplica para todas as instâncias de uma conta, logo, faz mais sentido essa propriedade ser específica de uma classe e não de uma instância. Por isso, ela pode ser chamada de propriedade estática.
    
    var negativada: Bool { //As propriedades computadas precisam ter o seu tipo declarado de forma explícita.
        return saldo < 0
    }

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

var contaCorrente3 = Conta3(nome: "Giovanna")
contaCorrente2.depositar(100)
contaCorrente2.depositar(200)

//@@06
//Desafios

// Example 1

class Pessoa {
    var nome: String
    var idade: Int
    var altura: Double
    var peso: Double
    
    var imc: Double {
        return peso / (altura * altura)
    }
    
    var adulto: Bool {
        return idade > 18
    }
    
    init(nome: String, idade: Int, altura: Double, peso: Double) {
        self.nome = nome
        self.idade = idade
        self.altura = altura
        self.peso = peso
    }
}

var pessoa1 = Pessoa(nome: "Giovanna", idade: 20, altura: 1.60, peso: 60)
var pessoa2 = Pessoa(nome: "Caio", idade: 15, altura: 1.80, peso: 60)

print("O usuario \(pessoa1.nome) tem \(pessoa1.idade) e imc = \(pessoa1.imc) e adulto = \(pessoa1.adulto)")
print("O usuario \(pessoa2.nome) tem \(pessoa2.idade) e imc = \(pessoa2.imc) e adulto = \(pessoa2.adulto)")

// Example 2

class Empregado {
    var nome: String
    var salario: Double {
        willSet {
            if newValue > salario {
                print("Parabéns, você recebeu um aumento no salário.")
            } else if newValue == salario {
                print("Parece que não houve uma promoção dessa vez.")
            }
        }
        
        didSet {
            if salario < oldValue {
              print("O novo salário não pode ser menor do que era anteriormente.")
              salario = oldValue
            }
        }
    }
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

let empregado = Empregado(nome: "Daniel", salario: 3000)
empregado.salario = 3000
empregado.salario = 4000
empregado.salario = 3000
print(empregado.salario) // 4000
