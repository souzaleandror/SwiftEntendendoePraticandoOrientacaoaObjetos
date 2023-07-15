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

class ContaPoupanca : Conta {
    
    var possuiCartaoDebito: Bool
    
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O Cliente esta solicitando cartao de Debito")
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 10
    }
    
    init(nome: String, possuiCartaoDebito: Bool) {
        self.possuiCartaoDebito = possuiCartaoDebito
        super.init(nome: nome)
    }
    
}

var contaPoupanca = ContaPoupanca(nome: "Giovanna", possuiCartaoDebito: false)
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)
print(contaPoupanca.possuiCartaoDebito)
contaPoupanca.solicitarDebito()
print(contaPoupanca.possuiCartaoDebito)

class ContaCorrente : Conta {
    
    func solicitarEmprestimo(_ valor: Double) {
        print("O Cliente esta solicitando emprestimo no valor R$ \(valor)")
        super.depositar(valor)
    }
    
    override func sacar(_ valor: Double) {
        saldo -= valor + 5
    }
}

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.depositar(100)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)

//@@03
//Para saber mais: como prevenir uma classe de ser herdada?

final class Pessoa {}

// class Estudante: Pessoa {} -> Erro! Pessoa não pode ser herdada

//@@04
// Super

print(contaCorrente.saldo)

//@@05
//Override

contaPoupanca.sacar(20)
print(contaPoupanca.saldo)

contaCorrente.sacar(20)
print(contaCorrente.saldo)

//@@07
//Polimorfismo e Typecasting

func exibeSaldoDaConta(_ conta: Conta) {
    if conta is ContaCorrente {
        print("Conta e do tipo conta corrente e o saldo: \(conta.saldo)")
    }
    
    if let contaCorrente = conta as? ContaCorrente {
        print("Conta e do tipo conta corrente e o saldo: \(conta.saldo)")
        contaCorrente.solicitarEmprestimo(200)
    }
    
    guard let contaPoupanca = conta as? ContaPoupanca else {return}
    print(contaPoupanca.possuiCartaoDebito)
    
//    Error
//    var contaCorrente2 = conta as! ContaCorrente
//    contaCorrente2.solicitarEmprestimo(200)
    
    if let contaPoupanca = conta as? ContaPoupanca {
        print("Conta e do tipo conta poupanca e o saldo: \(conta.saldo)")
        contaPoupanca.solicitarDebito()
    }
}

exibeSaldoDaConta(contaCorrente)
exibeSaldoDaConta(contaPoupanca)

// @@08
// Desafios

// Example 1
class Empregado {
    var nome: String
    var salario: Double
    
    init(nome: String, salario: Double) {
        self.nome = nome
        self.salario = salario
    }
}

class Gerente : Empregado {
    var departamento: String
    
    init(nome: String, salario: Double, departamento: String) {
        self.departamento = departamento
        super.init(nome: nome, salario: salario)
    }
}

var gerente1 = Gerente(nome: "Valdo", salario: 2000.00, departamento: "RH")
print(gerente1.nome)
print(gerente1.salario)
print(gerente1.departamento)

// Example 2

class Vendedor : Empregado {

    func percentualComissao(numVendas: Double) {
        salario = salario + ((50 * numVendas) * 0.10)
    }

}


var vendedor1 = Vendedor(nome: "Kleber", salario: 2000.00)
print(vendedor1.nome)
print(vendedor1.salario)
vendedor1.percentualComissao(numVendas: 10)
print(vendedor1.salario)

func verificaTipo(empregrado: Empregado) {
    
    if let gerente = empregrado as? Gerente {
        print("O(a) empregado(a) \(gerente.nome) é um(a) gerente e está no departamento \(gerente.departamento)")
    }
    
    if let vendedor = empregrado as? Vendedor {
        print("O(a) empregado(a) \(vendedor.nome) é um(a) vendedor.")
    }
    
}

verificaTipo(empregrado: gerente1)
verificaTipo(empregrado: vendedor1)
