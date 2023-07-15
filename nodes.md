#### 15/07/2023

Curso de 
Swift: entendendo e praticando orientação a objetos

@01-Structures and Classes

@@01
Apresentação

Olá! Sou a Giovanna Moeller e sou instrutora aqui na Alura.
Autodescrição: sou uma mulher branca de cabelos loiros e estou vestindo uma blusa azul com estampa branca. Estou à frente de uma parede com fundo degradê das cores azul para rosa.
Quero te dar boas-vindas ao curso de Swift: orientação a objetos. Durante esse curso continuaremos nossos estudos na linguagem Swift, a linguagem que usamos para desenvolver aplicativos iOS.

Em cada uma das aulas será introduzido um novo conceito sobre a linguagem e ao final de cada aula será proposto um desafio. É extremamente importante que você faça os desafios para fixar melhor os seus conhecimentos.

Neste curso aprenderemos sobre:

Conceitos de orientação a objetos como structs e classes
Herança
Polimorfismo
diferentes tipos de propriedades (armazenadas, computadas e estáticas)
E também veremos sobre outros tipos de dados que são extremamente importantes na linguagem Swift:

Extensões
Protocolos
Enumerações
Pré-requisitos
Para fazer este curso você precisa ter familiaridade com a linguagem Swift. Por isso é importante que você tenha feito o curso Swift: entendendo a linguagem.

E aí, bora iniciar o curso? Te espero na primeira aula!

https://cursos.alura.com.br/course/swift-entendendo-linguagem

@@02
Preparando o ambiente

Olá!
Aqui é a Giovanna Moeller!

Neste curso, vamos simular a construção de códigos de um aplicativo de banco.

Neste curso, você vai utilizar a IDE Xcode e um tipo de arquivo chamado Playground para escrever o código Swift. Esse tipo de arquivo nos permite focar no aprendizado da linguagem, sem nos preocuparmos com a criação de um aplicativo propriamente dito.

Assim, siga o passo a passo abaixo:
Acesse as instruções de instalação do Xcode, clicando aqui;
Instale o Xcode na sua máquina;
Abra um novo arquivo para escrever os códigos.
Com esses passos feitos, vamos partir para o aprendizado!

https://developer.apple.com/xcode/

https://cursos.alura.com.br/course/swift-entendendo-linguagem/task/118477

@@03
Structs

Durante esse curso, vamos desenvolver uma espécie de projeto que sirva como código inicial para nossa aplicação.
Imagine que estamos fazendo o esboço de um aplicativo que representa um banco e precisamos de uma estrutura para simular uma conta-corrente.

Em uma conta-corrente podemos ter uma variável que represente o saldo, por exemplo. Também podemos ter métodos ou funções como Sacar, que vai tirar um valor desse saldo, e Depositar, que vai inserir um valor nesse Saldo.

Mas como podemos trazer esse exemplo para programação na linguagem Swift? Que tipo de dados podemos usar para criar nossas próprias variáveis, métodos e funções dentro desse tipo de dado?

Podemos criar um tipo de dados customizado que sirva como um molde para conta-corrente.

Se você já vem de alguma outra linguagem de programação, provavelmente já ouviu falar sobre Classes, é exatamente com isso que vamos trabalhar.

No Swift, além de classes também temos as Structs. Vamos iniciar nossos estudos pelas Structs, que são bem parecidas com as classes.

Structs
Como podemos definir uma struct e começar a utilizá-la?

Já estou com meu arquivo MyPlayground aberto. Precisamos começar a escrever o código definindo uma struct pela palavra-chave struct, seguida do nome dela que será ContaCorrente. É uma boa prática, ao criar um novo tipo de dado, que a primeira letra seja maiúscula. Em seguida vamos abrir e fechar chaves, porque todo o código relacionado a essa struct estará dentro das chaves.

struct ContaCorrente {

}COPIAR CÓDIGO
Começaremos criando a variável saldo e vamos atribuir a ela o valor 0.0, significando que é um tipo double, que é um número decimal.

struct ContaCorrente {
    var saldo = 0.0

}COPIAR CÓDIGO
Quando falamos de variáveis no contexto de structs e classes, nós as referenciamos como atributos.

Agora, vamos criar métodos. Métodos são funções. Quando falamos sobre structs e classes, e falamos sobre funções, na verdade, estamos falando sobre métodos. Assim como variáveis são chamadas de atributos.

Na linha 4, criaremos uma função chamada sacar() que vai receber valor do tipo double.

struct ContaCorrente {
    var saldo = 0.0

    func sacar(_ valor: Double){

    }
}COPIAR CÓDIGO
Dentro dessa função vamos tirar do saldo, então saldo sinal de menos e igual a valor: saldo -= valor.

struct ContaCorrente {
    var saldo = 0.0

    func sacar(_ valor: Double){
        saldo -= valor
     }
}COPIAR CÓDIGO
Você deve ter percebido que a linha saldo -= valor provocou um erro na nossa IDE, isso acontece porque quando utilizamos structs não podemos alterar um atributo da nossa struct dentro de uma função. Nesta linha estamos modificando o atributo saldo. Isso não é possível originalmente.

Mas podemos escrever a palavra-chave mutating antes de func sacar. Isso significa que essa função é do tipo mutating, ou seja, com ela indicamos que podemos alterar um atributo dessa struct dentro de um método.

Note que agora o código executou sem problemas. Em seguida vamos criar outro método, o depositar(), que vai receber valor double. Ele receberá saldo mais igual valor, saldo += valor.

struct ContaCorrente {
    var saldo = 0.0

    mutating func sacar(_ valor: Double){
        saldo -= valor
        }

        mutating func depositar(_ valor: Double){
        saldo += valor

        }

}COPIAR CÓDIGO
Se executarmos esse código, nada vai acontecer. Porque a struct funciona como um molde, estamos apenas representando os dados.

Agora precisamos, de fato, instanciar essa struct, criar objetos.

Na linha 13, vamos criar uma variável contaCorrenteGiovanna e vamos atribuir essa variável a uma instância de ContaCorrente:

var contaCorrenteGiovanna = ContaCorrente()COPIAR CÓDIGO
Agora, podemos acessar atributos e métodos da struct ContaCorrente. Se exibirmos no console contaCorrenteGiovanna.saldo, o console vai exibir que o saldo é de 0.0.

var contaCorrenteGiovanna = ContaCorrente()
print(contaCorrenteGiovanna.saldo)COPIAR CÓDIGO
0.0
Agora vamos utilizar o método depositar() colocaremos 1500 reais e vamos exibir o saldo novamente no console.

struct ContaCorrente {
var saldo = 0.0

mutating func sacar(_ valor: Double) {
saldo -= valor
}
mutating func depositar(_ valor: Double) {
saldo += valor
  }
}

var contaCorrenteGiovanna = ContaCorrente()
print(contaCorrenteGiovanna.saldo)
contaCorrenteGiovanna.depositar(1500)
print(contaCorrenteGiovanna.saldo)COPIAR CÓDIGO
0.0
1500.0

Agora o console retornou um saldo de 1500.

Claro que podemos explorar esses métodos de uma forma um pouco melhor. Por exemplo, não podemos depositar um valor negativo. Poderíamos criar uma condicional para não permitir esse tipo de ação.

Já instanciamos um objeto e podemos instanciar diversos outros.

Vamos criar uma nova variável chamada contaCorrenteCaio e instanciar a struct ContaCorrente novamente. Agora vamos depositar na conta do Caio o valor de 200 reais. E exibiremos o saldo da contaCorrenteCaio no console.

struct ContaCorrente {
var saldo = 0.0

mutating func sacar(_ valor: Double) {
saldo -= valor
}
mutating func depositar(_ valor: Double) {
saldo += valor
  }
}

var contaCorrenteGiovanna = ContaCorrente()
print(contaCorrenteGiovanna.saldo)
contaCorrenteGiovanna.depositar(1500)
print(contaCorrenteGiovanna.saldo)

var contaCorrenteCaio = ContaCorrente()
contaCorrenteCaio.depositar(200)
print(contaCorrenteCaio.saldo)
COPIAR CÓDIGO
0.0
1500.0

200.0

Agora, vamos sacar um valor da conta do Caio. Abaixo da linha contaCorrenteCaio.depositar(200) vamos inserir o método sacar() para sacar 100 reais: contaCorrenteCaio.sacar(100).

var contaCorrenteCaio = ContaCorrente()
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)COPIAR CÓDIGO
Ao executar o código teremos:

0.0
1500.0

100.0

O saldo da contaCorrenteCaio agora é de 100.

Podemos perceber que na struct temos um atributo que já está inicializado, porque quando criamos uma conta-corrente o nosso saldo começa vazio. Podemos ter um atributo que seja customizado para cada instância dessa struct.

Por exemplo, podemos criar uma variável nome. Não vou inicializá-la, por isso precisamos declarar explicitamente o tipo desse atributo var nome: string.

struct ContaCorrente {
var saldo = 0.0
var nome: String
mutating func sacar(_ valor: Double) {
saldo -= valor
}
mutating func depositar(_ valor: Double) {
saldo += valor
  }
}COPIAR CÓDIGO
Agora, na linha devar contaCorrenteGiovanna = ContaCorrente() e na linha de var contaCorrenteCaio = ContaCorrente() a IDE está indicando um erro "Missing argument for parameter'nome' in call", ou seja, informando que não passamos nenhum argumento relacionado a nome.

A indicação é que devemos colocar algo seguindo o modelo nome: String. Então na contaCorrenteGiovanna colocaremos nome: "Giovanna" e na contaCorrenteCaio colocaremos nome: "Caio".

var contaCorrenteGiovanna = ContaCorrente(nome: "Giovanna")
print(contaCorrenteGiovanna.saldo)
contaCorrenteGiovanna.depositar(1500)
print(contaCorrenteGiovanna.saldo)

var contaCorrenteCaio = ContaCorrente(nome: "Caio")
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)COPIAR CÓDIGO
Com isso, estamos passando valores customizados. Porque realmente o nome é diferente para cada instância, cada pessoa tem sua própria conta-corrente. Por isso passamos parâmetros customizados.

Recapitulando, as structs são um tipo de dado complexo e você pode definir suas próprias structs, com seus próprios atributos e métodos.

No próximo vídeo, aprenderemos sobre classes. Te espero lá!

@@04
Classes

Agora que você já aprendeu sobre structs, está na hora de aprender sobre classes. São bem parecidos, mas em breve vou explicar a diferença entre os dois e quando utilizar cada um deles.
Vamos continuar no código do vídeo anterior. Faremos algumas modificações nele.

Primeiro, precisamos mudar de struct para classe. Na linha 1, substituiremos struct por class.

class ContaCorrente {
    var saldo = 0.0
    var nome: String

//código omitidoCOPIAR CÓDIGO
Se executarmos, vários erros serão apontados pela IDE, vamos passar em cada um deles e corrrigi-los.

O primeiro erro que quero pontuar é o erro da linha 5, mutating func sacar(_ valor: Double), ele indica que a palavra "mutating" não é válida em instâncias de classes.

'mutating' is not valid on instance methods in classes
Remove 'mutating'

Isso significa que não precisamos utilizar a palavra-chave mutating para alterar atributos de uma classe. Então vamos simplesmente apagar a palavra "mutating" da linha 5 e da linha 9.

Outro erro que está sendo indicado é na linha 1. Está indicando que a classe ContaCorrente não possui nenhum inicializador.

Class 'ContaCorrente' has no initializers
O que isso significa? O nosso atributo nome não é inicializado, simplesmente declaramos como uma string e passamos como parâmetro ao instanciar uma struct.

No caso das classes, precisamos utilizar o que chamamos de "Construtor", que é o método que vai inicializar essas variáveis. Então, na linha 13, abaixo da função depositar()vamos inserir o init():

init() {

}COPIAR CÓDIGO
Dentro desse init() precisamos inicializar todos os atributos da nossa classe. Então, no início no código, podemos apagar o 0.0 e escrever "Double", vamos definir explicitamente o tipo desse atributo.

class ContaCorrente {
    var saldo = Double
    var nome: String

//código omitidoCOPIAR CÓDIGO
Agora, no init() vamos escrever saldo igual a 0.0, para inicializar esse atributo saldo.

init() {
        saldo = 0.0
}COPIAR CÓDIGO
Além disso, precisamos inicializar também o atributo nome. Mas o atributo nome, como ele muda de instância para instância, precisamos passar como um parâmetro. Dentro do parênteses do init() vamos escrever nome: String.

init(nome: String) {
        saldo = 0.0
}COPIAR CÓDIGO
Agora precisamos que o atributo nome de dentro da classe seja igual ao parâmetro que estamos passando para o construtor. Mas se fizermos nome = nome não vai fazer muito sentido. Então, para referenciarmos o nome como um atributo da classe precisamos escrever self antes. Vamos escrever self.nome = nome.

    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }COPIAR CÓDIGO
O que isso significa? Significa que o atributo nome da classe ContaCorrente está sendo igualado a o que estamos recebendo como parâmetro nesse construtor.

Se executarmos o código agora, nenhum erro será apontado.

class ContaCorrente {
    var saldo: Double
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }

    init(nome: String) {
        saldo = 0.0
        self.nome = nome
    }
}

var contaCorrenteGiovanna = ContaCorrente(nome: "Giovanna")
print(contaCorrenteGiovanna.saldo)
contaCorrenteGiovanna.depositar(1500)
print(contaCorrenteGiovanna.saldo)

var contaCorrenteCaio = ContaCorrente(nome: "Caio")
contaCorrenteCaio.depositar(200)
contaCorrenteCaio.sacar(100)
print(contaCorrenteCaio.saldo)COPIAR CÓDIGO
Tivemos o seguinte retorno no console:

0.0
1500.0

100.0

Já vimos duas diferenças entre structs e classes. As structs precisam da palavra-chave mutating para as funções que alteram um atributo da struct. Porém, as structs possuem um inicializador que funciona "por debaixo dos panos", não precisamos defini-lo. Mas isso não acontece com classes. Com classes é obrigatório definir o construtor quando não estamos inicializando todos os atributos no momento de execução do código.

Agora você tem sua primeira classe criada. A maneira de instância é a mesma que da struct, nem mudamos nada em relação às variáveis que criamos para instanciar uma classe. Tudo está funcionando como esperado.

Ao longo desta aula vamos explorar outras diferenças entre structs e classes. Te espero no próximo vídeo!

@@05
Paradigma Orientado a Objetos

Agora que você já aprendeu a parte prática sobre structs e classes, preparei uma aprentação um pouco mais teórica para relembrarmos os principais conceitos. Falaremos também sobre o paradigma orientado a objetos.
A nossa classe funciona como um molde que possui atributos e métodos. Nas classes precisamos ter o inicializador que inicializa de fato todos os atributos.

Mas a nossa classe é só um molde, precisamos criar objetos que instanciam essa classe para utlizarmos atributos e métodos. Então, imagine que a classe é a nossa receita de bolo e a partir dessa receita podemos fazer diversos bolos diferentes.

O que é um paradigma?
Ao falar sobre classes e structs estamos falando sobre um paradigma orientado a objetos, mas o o que é um paradigma de programação?

Paradigma de programação são estilos, modos, jeitos que você pode escrever e estruturar seu código para resolver algum problema. É uma questão de ideias, boas práticas, que você pode seguir.

Paradigma orientado a objetos
Baseia-se no conceito de classes e objetos;
Classes possuem atributos e métodos;
No Swift, você pode usar struct e classes.
Como representar coisas do mundo real em código?
O paradigma orientado a objetos pega as coisas do mundo real, abstraimos essas ideias e as tranformamos em código.

Exemplo prático
Imagine que você está construindo uma aplicação que precise realizar o cadastro de estudantes para uma maratona de programação. Você pode ter uma classe chamada Estudante que contenha diferentes atributos como:

nome: String
sobrenome: String
instituicaoEnsino: String
pontuacao: Double = 0
E também métodos como:

marcaPonto() -> Void
exibeResultado() -> Void
No caso, coloquei Void que significa que a função não tem nenhum retorno.

Imagine as informações acima como sendo um diagrama de classes. Não é de fato o código em determinada linguagem, mas é como a gente representaria uma classe Estudante.

Estudante 01
nome: "Giovanna"

sobrenome: "Moeller"

instituicaoEnsino: "UNESP"

Então, já vimos a parte prática e a parte teórica. Precisamos explorar um pouco mais as diferenças entre struct e classes. Te espero no próximo vídeo.

@@06
Instanciando uma classe

Você aprendeu como definir e instanciar structs e classes. Observe com atenção o trecho de código a seguir:
class Carro {
  var modelo: String
  var marca: String
  var ano: Int
  var combustivel: String

  init(modelo: String, marca: String, ano: Int) {
    self.modelo = modelo
    self.marca = marca
    self.ano = ano
    self.combustivel = "Gasolina"
  }
}COPIAR CÓDIGO
Segundo o código, quais são as diferentes maneiras pelas quais você pode instanciar a classe Carro? Selecione uma ou mais alternativas:

Alternativa correta
let Carro = Carro(modelo: "Ford", marca: "Fiesta", ano: 2014)
 
Alternativa correta
let carro = new Carro(modelo: "Ford", marca: "Fiesta", ano: 2014)
s
 
Alternativa correta
let carro = Carro(modelo: "Ford", marca: "Fiesta", ano: 2014)
 
Essa é uma possível maneira de inicializarmos uma classe, pois a sintaxe está correta.
Alternativa correta
let carro = Carro(modelo: "Ford", marca: "Fiesta", ano: 2014, combustivel: "Etanol")
 
Alternativa correta
let carro: Carro = .init(modelo: "Ford", marca: "Fiesta", ano: 2014)
 
Nesse caso, estamos especificando o tipo explícito do nosso dado, que é Carro, e então chamando diretamente o método .init().
Note que escrever .init(), já que o tipo está explicitamente definido, é a mesma coisa do que escrever Carro.init(), que por sua vez é a mesma coisa do que Carro().

@@07
Diferenças entre structs e classes

Vamos ver mais um pouco sobre as diferenças entre structs e classes e quando utilizar cada uma.
De volta ao código, eu escrevi um código com uma struct denominada ContaCorrenteStruct, criei os mesmos atributos e métodos que já fizemos anteriormente. Os atributos saldo e nome e os métodos sacar() e depositar().

Também criei uma instância da ContaCorrenteStruct, que denominei de contaCorrenteStruct01. Depositei o valor de 100 reais, e exibi no console saldo da contaCorrenteStruct01 igual a contaCorrenteStruct01.saldo.

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

var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
contaCorrenteStruct01.depositar(100)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")COPIAR CÓDIGO
Em seguida, na linha 19 criei a classe ContaCorrenteClass. Nela escrevi o mesmo código que já vimos no vídeo sobre classes. coloquei os atributos, mas agora inicializei o atributo saldo, não inicializei ele dentro do construtor, o que não tem nenhum problema, ele só precisa estar inicializado.

Tem o atributo nome e também os métodos sacar() e depositar().

Também criei as instâncias dessa classe. Criei uma variável chamada ContaCorrenteClasse01 e instanciei essa classe com o nome Ana, depositei o valor de 60 reais e exibi no console o saldo dessa conta-corrente.

class ContaCorrenteClass {
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

var contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")
contaCorrenteClasse01.depositar(60)
print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")COPIAR CÓDIGO
Analisando esses códigos, o que podemos perceber e o que eu já havia comentado em vídeos anteriores?

Quando precisamos alterar a struct dentro de uma função, devemos utilizar a palavra-chave mutating. Para classes isso não é necessário.

Struct já têm um construtor por padrão, que funciona por debaixo dos panos. Não precisamos definir, mas podemos se quisermos fazer algo mais customizado.

Já nas classes é obrigatório ter um método construtor caso os atributos não estejam todos inicializados.

Vamos para outra diferença. Na linha de var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna"), quando definimos um objeto instanciado com o struct, instanciei utilizando var, criando uma variável.

Mas, pensando bem, não estamos alterando nada específico dessa variável. Estamos alterando métodos internos dessa struct, mas a variável em si não está sendo alterada. Então vamos trocar de var para let, que significa constante.

let contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
contaCorrenteStruct01.depositar(100)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")COPIAR CÓDIGO
Com essa mudança a IDE vai indicar um erro falando que não podemos alterar o atributo de uma struct caso ela seja definida como uma constante.

Na linha 2, definimos o saldo como uma variável, var saldo. Então, tecnicamente, ele pode sim ser alterado. Mas pelo fato de termos declarado a instância da struct como uma constante, ele já não pode mais ser alterado, nenhum atributo interno dessa struct pode ser alterado. Então precisamos mudar para var novamente!

Mas o interessante é que com classes isso não acontece. Podemos mudar a var da classe para let.

let contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")
contaCorrenteClasse01.depositar(60)
print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")COPIAR CÓDIGO
Ao executar o código, nada muda, tudo funciona como esperado.

Isso acontece porque classes possuem um tipo chamado de "referência" e structs possuem um tipo de "valor". Essa é a principal diferença entre classes e structs.

vamos entender melhor. Vou fazer uma analogia com o mundo real. Imagine que você esteja editando um documento do GoogleDocs, quando você compartilha esse documento com um amigo e esse amigo entra no documento e começa a editar, essas edições vão aparecer para você, afinal vocês dois estão lá editando o mesmo documento.

Mas a partir do momento que você cria uma cópia desse documento e seu colega não tem acesso a essa cópia, as alterações não influenciam nada. Afinal seu amigo está editando em um documento e você criou uma cópia desse documento e está editando nela. Não tem ligação nenhuma a partir do momento em que você faz a cópia, certo?

Então, no caso em que temos uma pessoa editando no mesmo documento que a gente, imagine que isso será o tipo de referência, quando nós dois estamos no mesmo objeto editando as mesmas coisas. Quando criamos uma cópia do documento, essa cópia é do tipo de valor, porque não tem nada a ver um documento com o outro a partir do momento em que você faz essa cópia.

Entendemos que classes são do tipo referência e structs do tipo valor, mas o que isso implica no nosso código?

Voltando ao código, vamos para o trecho da struct e agora vamos instanciar um outro objeto. Criaremos uma variável contaCorrenteStruct02 e igualaremos essa instância a contaCorrenteStruct01.

Nessa contaCorrenteStruct02 também utilizaremos o método depositar(), vamos depositar 50 reais. Vamos inserir também um print() para exibir no console o contaCorrenteStruct02.saldo

var contaCorrenteStruct01 = ContaCorrenteStruct(nome: "Giovanna")
var contaCorrenteStruct02 = contaCorrenteStruct01
contaCorrenteStruct01.depositar(100)
contaCorrenteStruct02.depositar(50)
print("Saldo da conta corrente struct 01 = \(contaCorrenteStruct01.saldo)")
print("Saldo da conta corrente struct 02 = \(contaCorrenteStruct02.saldo)")COPIAR CÓDIGO
Vamos executar esse código. Tivemos no console o seguinte retorno:

Saldo da conta corrente struct 01 = 100.0
Saldo da conta corrente struct 02 = 50.0

Saldo da conta corrente struct 01 = 60.0

O fato de igualarmos a contaCorrenteStruct01 na contaCorrenteStruct02 não influencia em nada. Porque a contaCorrenteStruct02 está pegando uma cópia da contaCorrenteStruct01.

Vejamos qual será o comportamento se fizermos essa mesma modificação no trecho do código da classe.

let contaCorrenteClasse01 = ContaCorrenteClass(nome: "Ana")
let contaCorrenteClasse02 = contaCorrenteClasse01
contaCorrenteClasse01.depositar(60)
contaCorrenteClasse02.depositar(100)
print("Saldo da conta corrente classe 01 = \(contaCorrenteClasse01.saldo)")
print("Saldo da conta corrente classe 02 = \(contaCorrenteClasse02.saldo)")COPIAR CÓDIGO
Ao executar o código, o saldo da contaCorrenteClasse01 é 160 reais e o saldo da contaCorrenteClasse02 também é 160 reais.

Saldo da conta corrente struct 01 = 100.0
Saldo da conta corrente struct 02 = 50.0

Saldo da conta corrente struct 01 = 60.0

Saldo da conta corrente classe 01 = 160.0

Saldo da conta corrente classe 02 = 160.0

Na linha 41, depositamos 60 reais na classe 01 e na linha 42, depositamos 100 reais na classe 02. Não faz sentido as duas contas estarem com o mesmo saldo. Mas, na verdade, faz. Porque quando declaramos que a contaCorrenteClasse02 é igual a contaCorrenteClasse01, isso significa que de alguma forma esses objetos estão ligados.

Falando de uma maneira um pouco mais técnica, ele não recebe uma cópia da contaCorrenteClasse01 igual acontece na struct. Na verdade, ele está apontando para o mesmo objeto, o mesmo endereço de memória do nosso aplicativo.

O comportamento das structs, em que uma instância não afeta outra, é o mesmo comportamento de dados primitivos da linguagem Swift.

Não se preocupe se você ainda não conseguiu entender essas diferenças muito bem, vou deixar nas atividades o link de um artigo que explica mais um pouco sobre isso.

Inclusive, é importante ressaltar que classes têm funcionalidades extras em relação às structs. Por exemplo, herança, que é um conceito que veremos neste curso.

Eu te espero na próxima aula!

@@08
Desafios

Agora que você já entendeu como criar o seu próprio tipo de dado através de structs e classes, com diferentes propriedades e métodos, vamos partir para os desafios propostos dessa aula.
Desafio 1 - Calculadora
Vamos simular uma calculadora? Siga com atenção as dicas abaixo:

Crie uma classe/struct (a seu critério) chamada “Calculadora” que possua dois diferentes números como atributos;
A. Esses números podem ser inteiros ou decimais, à sua escolha, e precisam ser inicializados pelo construtor de acordo com o que foi recebido por parâmetro;
Produza 4 métodos referentes às operações básicas de cálculo: soma, subtração, divisão e multiplicação;
A. Esses métodos não recebem parâmetros, mas eles retornam um valor do tipo inteiro ou decimal (à sua escolha). Os métodos agem em cima das propriedades citadas anteriormente;
Instancie essa classe/struct com os dois valores em questão e chame todos os métodos citados;
Por fim, exiba no console o resultado de todas as operações.
Bons estudos!

Veja um exemplo abaixo, com os atributos inicializados com os valores 6 e 4:

Imagem que mostra um print do Playground do XCode em que podemos ler as informações: soma é igual a 10.0; subtração é igual a 2.0; divisão é igual a 1.5; e a multiplicação é igual a 24.0

Desafio 2 - Restaurante
Vamos praticar com um código que poderia compor um aplicativo de restaurante?

Crie uma classe/struct chamada “Restaurante” que tenha os seguintes atributos:

Nome;
Tipo de comida;
Número de pedidos (esse sempre será inicializado como 0 no construtor).
E então, implemente o seguinte método:

recebePedido() → esse método acrescenta em 1 o valor do atributo referente ao número de pedidos;
calculaTotalPedidos() → supondo que cada pedido tenha um valor fixo de R$35,00, crie um método que calcule e retorne o valor total em pedidos.
Mãos à obra!

Desafio 3 - Retângulo
Crie uma classe/struct chamada “Retângulo” que tenha os seguintes atributos:

Base;
Altura.
E então, implemente os seguintes métodos:

calcularArea() - retorna a área do retângulo, que é calculada por base multiplicado pela altura;
calcularPerimetro() - retorna o perimêtro do retângulo, que é calculado pela soma de todos os lados.

Vamos lá?

Opinião do instrutor

No exercício 1, você pode ter desenvolvido algo como:
struct Calculadora {
  let numero1: Double
  let numero2: Double

  func soma() -> Double {
    return numero1 + numero2
  }

  func subtracao() -> Double {
    return numero1 - numero2
  }

  func divisao() -> Double {
    return numero1 / numero2
  }

  func multiplicacao() -> Double {
    return numero1 * numero2
  }
}

let calculadora = Calculadora(numero1: 6, numero2: 4)
print("Soma = \(calculadora.soma())")
print("Subtração = \(calculadora.subtracao())")
print("Divisão = \(calculadora.divisao())")
print("Multiplicação = \(calculadora.multiplicacao())")
COPIAR CÓDIGO
Enquanto no exercício 2, eu cheguei nessa conclusão:

struct Restaurante {
  var nome: String
  var tipoComida: String
  var numeroPedidos: Int = 0

  mutating func recebePedido() {
    self.numeroPedidos += 1
  }

  func calculaTotalPedidos() -> Double {
    return 35.0 * Double(self.numeroPedidos)
  }
}

var restaurante = Restaurante(nome: "Restaurante da Gi", tipoComida: "Brasileira")
restaurante.recebePedido()
restaurante.recebePedido()
restaurante.calculaTotalPedidos()
COPIAR CÓDIGO
E por fim, no exercício 3, cheguei nesse resultado:

class Retangulo {
  var base: Double
  var altura: Double

  init(base: Double, altura: Double) {
    self.base = base
    self.altura = altura
  }

  func calcularArea() -> Double {
    return base * altura
  }

  func calcularPerimetro() -> Double {
    return base * 2 + altura * 2
  }
}

let retangulo = Retangulo(base: 10, altura: 20)
retangulo.calcularArea()
retangulo.calcularPerimetro()COPIAR CÓDIGO
Observação: não se preocupe se seu código ficou muito diferente do meu, existem diversas maneiras de chegar em um mesmo resultado. Apenas certifique-se de que você está escrevendo um código legível, com nomes bem definidos, etc.

@@09
Para saber mais: classes e structs

Aqui na Alura, temos um artigo produzido explicando as diferenças entre classes e structs e também sobre tipo de valor e tipo de referência. Caso seja do seu interesse ler e complementar seus estudos, você pode acessá-lo aqui.
Bons estudos!

https://www.alura.com.br/artigos/ios-swift-classes-struct-diferencas-usar?_gl=1*uaq9dl*_ga*MTgwMzIzMjk2Ni4xNjg4ODE5OTcz*_ga_59FP0KYKSM*MTY4OTQyMDQ5MS4xMy4xLjE2ODk0MjQ4ODQuMC4wLjA.*_fplc*SHNaNHVDQWExeEFuMWtoVlM1TUJIbkRjdUUlMkZkT01PenNJNW5KJTJGMjl3V0JNQUhZSlR6bW80UE4yWDFKbXBqTXJOaTdKZzRENnE2RjJ1V3ElMkZWTGdvTXlJN2lyaGVrYVY2ZTM2VE84WTlTdkxrJTJCMjBQRkE3a0xwVGdsMEElMkJ1dyUzRCUzRA..

@@10
O que aprendemos?

Nesta aula, você aprendeu a:
Criar e utilizar uma struct para representar uma conta;
Criar e utilizar uma classe para representar uma conta;
Definir métodos e propriedades em structs/classes;
Criar instâncias de structs/classes;
Entender as principais diferenças entre structs e classes.
Esses são os fundamentos para criar qualquer aplicativo iOS.

Nos vemos na próxima aula!