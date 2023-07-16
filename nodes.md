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

@02-Heranca e Polimorfismo

@@01
Projeto da aula anterior

Foi criado um playground com exemplos similares ao que vimos na aula anterior. Você pode ir acompanhando o passo a passo do desenvolvimento do nosso código no Github e, caso deseje, pode baixar o código da aula anterior.
Observação: o código fica dentro do arquivo “Contents.swift”, dentro de cada pasta do Playground.
Bons estudos!

https://github.com/alura-cursos/swift-orientacao-a-objetos/tree/aula-01

https://github.com/alura-cursos/swift-orientacao-a-objetos/archive/refs/heads/aula-01.zip

@@02
Herança

Você já entendeu as principais diferenças entre Classes e Structs. Eu disse que as Classes têm uma funcionalidade extra, a Herança.
Mas o que isso significa? No contexto de aplicativo de banco, imagine que você precisa implementar uma nova Classe chamada "Conta Poupança". Ela possui um método específico chamado "solicitar cartão de débito".

Na classe Conta Corrente, temos a tarefa de implementar o método "solicitar empréstimo", que não está disponível para a Conta Poupança. Do mesmo modo, a Conta Corrente não possui o método "solicitar cartão de débito".

Sabemos que, em uma conta corrente, também é possível solicitar um cartão de débito, mas manteremos dessa forma para fins de aprendizado. Ambas possuem atributos de saldo, nome e os métodos "Sacar" e "Depositar".

Pensando nisso, será que precisamos criar as duas classes e reescrever todos os métodos e atributos em comum? Será que não existe uma maneira mais eficiente para fazermos isso?

Existe, sim! É aí que entra o conceito de Herança: podemos ter uma "classe pai", com os atributos e métodos, e podemos criar as "classes filhas", que herdarão estes atributos e métodos da primeira classe.

Vamos ao código para entender isso, na prática.

Criarei uma classe chamada Conta que terá o atributo saldo iniciado em 0.0. Também criarei o atributo nome do tipo string, os métodos de sacar(), passando o valor decimal como parâmetro.

Na linha 6, definirei o saldo -= valor, para realizar o saque. Na linha 9, criarei o método depositar(), tendo como parâmetro o valor decimal. Na linha seguinte, escreverei saldo += valor.

Preciso criar também o inicializador init(), passando o nome do tipo string como parâmetro. Dentro das chaves, escrevemos self.nome = nome.

class Conta {

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }

    init(nome: String) {
        self.nome = nome
    }
}COPIAR CÓDIGO
Executarei o código e nada acontecerá porque ainda não instanciamos a classe. Agora, precisamos criar uma classe Poupança que herde a partir da classe Conta.

Podemos fazer isso escrevendo class ContaPoupanca: Conta. Assim, a classe ContaPoupanca herdará todos os métodos e atributos da classe Conta.

class ContaPoupanca: Conta {

}COPIAR CÓDIGO
Para provar isso, instanciarei a classe ContaPoupanca. Criarie uma variável chamada contaPoupanca e vou instanciar a ContaPoupanca, passando o nome como parâmetro.

Agora, depositarei um valor de R$ 50,00. Perceba que já estamos usando métodos da classe pai, porque a classe Poupança que se encontra entre as linhas 18 e 20 não tem nenhum método depositar, mas ela herda os métodos da classe Conta.

Por fim, exibiremos no console o saldo da conta poupança:

class ContaPoupanca: Conta {

}

var contaPoupanca = ContaPoupanca(nome: "Giovanna")
contaPoupanca.depositar(50)
print(contaPoupanca.saldo)COPIAR CÓDIGO
Se executarmos o código acima, o console mostrará o valor de "50.0".

Pulando uma linha, podemos criar outra classe, chamada ContaCorrente. Ela também herdará os atributos e os métodos de Conta.

Perceba que teremos o mesmo comportamento da Conta Poupança: declararemos uma variável chamada contaCorrente e instanciaremos a ContaCorrente, passando o nome "Ana" como parâmetro.

Também podemos usar os métodos e atributos da classe Conta. Então, depositaremos um valor de R$ 100,00 e exibiremos o saldo da conta corrente no console.

class ContaCorrente: Conta {

}

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.depositar(100)
print(contaCorrente.saldo)COPIAR CÓDIGO
Ao executar o código, observaremos no console que o saldo da conta é de R$ 100,00.

Além daquilo que é herdado da classe pai, podemos ter atributos e métodos específicos em cada classe filha. Na linha 19, na classe Conta Poupança, simplesmente escreverei uma função chamada solicitarDebito() e exibirei no console a frase "O cliente está solicitando cartão débito".

Além disso, podemos criar atributos dessa própria classe. Por isso, declararei um atributo possuiCartaoDebito, que corresponderá a uma variável booleana. Ela será iniciada como falsa.

No método solicitarDebito(), escreverei possuiCartaoDebito = true. Com isso, estamos apenas manipulando um atributo.


class ContaPoupanca: Conta {
    var possuiCartaoDebito = false
    func solicitarDebito() {
        possuiCartaoDebito = true
        print("O cliente está solicitando cartão débito")
    }
}COPIAR CÓDIGO
Na linha 29, escreveremos contaPoupanca.solicitarDebito() e executaremos o código. Com isso, o console exibirá a mensagem "O cliente está solicitando cartão débito".

Esse método não está disponível na conta corrente. Se tentarmos escrever na linha 38 contaCorrente.solicitarDebito(), perceberemos que o Xcode não nos mostra nenhuma sugestão de método. Isso acontece porque este método pertence apenas à conta poupança.

Dentro da classe ContaCorrente, escreveremos o método solicitarEmprestimo(), recebendo como parâmetro um valor do tipo Double. Dentro do escopo dessa função, escreveremos no console "O cliente está solicitando um empréstimo no valor de \(valor)". O trecho \() permite que coloquemos uma variável dentro da string.

class ContaCorrente: Conta {
    func solicitarEmprestimo(_ valor: Double) {
        print("O cliente está solicitando um empréstimo no valor de \(valor)")
    }
}COPIAR CÓDIGO
Não criarei nenhum atributo aqui, mas você poderia fazer isso.

Na linha 40, escreverei contaCorrente.solicitarEmprestimo(20000). Se executarmos o código, o console exibirá a mensagem "O cliente está solicitando um empréstimo no valor de 20000.00".

Essa característica de herança entre classes é muito utilizada no mundo de orientação a objetos. Ela é uma funcionalidade específica de classes na linguagem Swift.

Os Structs não têm a funcionalidade de herança. Esse é um motivo para usar a classes em vez de structs: herdar atributos e métodos de uma classe pai (ou superclasse) para uma ou mais classes filhas (as subclasses).

Eu te espero no próximo vídeo!

@@03
Para saber mais: como prevenir uma classe de ser herdada?

Você sabia que há uma maneira de fazer com que uma classe não seja herdada por outra?
Para impedir uma classe de herdar outra, você precisa apenas adicionar a palavra-chave final antes de class. Veja um exemplo abaixo:

final class Pessoa {}

// class Estudante: Pessoa {} -> Erro! Pessoa não pode ser herdada

@@04
Super

Você já aprendeu sobre heranças e continuaremos falando desse assunto neste vídeo.
Imagine que você precisa chamar um método da classe pai na classe filho. Por exemplo, na classe ContaCorrente, dentro da função solicitarEmprestimo(), podemos chamar um método da classe pai para depositar o valor que estamos solicitando por meio de empréstimo.

Eu sei que não é exatamente assim que funciona, mas trabalharemos dessa forma. Para chamar o método da classe pai, podemos usar a palavra super, usada quando fazemos referência à classe pai.

Na linha 34, escreveremos super.depositar(valor). Já na linha 40, exibiremos contaCorrente.saldo no console para verificarmos o valor do saldo.

// Trecho de código suprimido

super.depositar(Valor)

// Trecho de código suprimido

print(contaCorrente.saldo)
COPIAR CÓDIGO
Observe no console que o nosso saldo atual é de R$ 20.100,00, porque depositamos R$ 100,00, instanciando a classe contaCorrente e solicitamos um empréstimo de R$ 20.000,00, chamando o método depositar da classe pai.

Na classe Poupança, inicializamos o atributo possuiCartaoDebito como falso em um primeiro momento, mas imagine que gostaríamos de receber esse parâmetro de forma customizada, ou seja, precisamos passar um parâmetro por meio do inicializador.

Como podemos fazer isso em uma classe filha? Para isso, apagaremos a inicialização da variável possuiCartaoDebito em falso e escreverei o tipo de forma explícita (Bool).

class ContaPoupanca: Conta {
    var possuiCartaoDebito: Bool

// Trecho de código suprimidoCOPIAR CÓDIGO
Se executarmos este código, obteremos um erro indicando que a classe ContaPoupanca não possui nenhum inicializador.

Pularemos uma linha após a função solicitarDebito() e criaremos o nosso construtor recebendo possuiCartaoDebito enquanto parâmetro.

init(possuiCartaoDebito: Bool) {
    self.possuiCartaoDebito = possuiCartaoDebitoCOPIAR CÓDIGO
Se executarmos o código, obteremos outro erro, porque não passamos como parâmetro da conta poupança o atributo possuiCartaoDebito. Assim, adicionaremos uma vírgula dentro dos parênteses de ContaPoupanca e escreveremos possuiCartaoDebito: false.

var contaPoupanca = ContaPoupanca(nome: "Giovanna", possuiCartaoDebito: false)COPIAR CÓDIGO
Ao executar este código, obteremos um erro indicando que há um argumento extra chamado "nome". Se a minha classe ContaPoupanca é filha da classe Conta e esta recebe no inicializador um nome do tipo string, a classe Poupança também precisa receber um nome do tipo string.

Porém, como sobrescrevemos o inicializador da conta poupança e estamos recebendo apenas o parâmetro possuiCartaoDebito, isso não está acontecendo, ou seja, não estamos recebendo o nome.

Para corrigir isso, reescreveremos os parâmetros do inicializador: init(nome: String, possuiCartaoDebito: Bool). Acontece que não temos um atributo nome na classe ContaPoupanca, mas só na classe Conta.

Nesse caso, precisamos chamar o inicializador da classe pai. Faremos isso após o self.possuiCartaoDebito, na linha 27. Assim, chamaremos o inicializador da classe pai na linha 28 do código usando o super.

Escreveremos super.init() e, ao pressionar a tecla "Enter", os parênteses serão preenchidos automaticamente com o parâmetro nome: String. Substituiremos o String pelo nome que recebemos no nosso inicializador da classe da Conta Poupança:

super.init(nome: nome)COPIAR CÓDIGO
Se executarmos este código, observaremos que não encontramos nenhum erro e tudo funciona conforme o esperado.

Recapitulando: já que escrevemos novamente o inicializador em uma classe filha, precisamos receber nos parâmetros de uma classe pai e, em seguida, chamar o inicializador desta usando o super.init com o parâmetro necessário, ou seja, nome.

Na linha 13, perceba que temos o inicializador recebendo um nome. Este é o inicializador da nossa classe pai.

Neste vídeo, aprendemos a chamar métodos da classe pai em uma classe filha. Te vejo daqui a pouco!

@@05
Override

Agora, imagine que precisamos aplicar taxas ao método de saque.
É muito comum irmos ao banco e precisarmos pagar uma taxa para fazer o saque no caixa eletrônico. Imagine que, se a pessoa tem uma conta corrente, a taxa de saque é R$ 5,00. Se ela tiver uma conta poupança, a taxa de saque é de R$ 10,00.

Como podemos representar isso com código? Precisaremos sobrescrever os métodos sacar nas classes filhas, mas como fazemos isso? Usaremos a palavra override, que significa sobrescrever.

Na nossa classe ContaPoupanca, logo após a função solicitarDebito(), pularemos uma linha e escreveremos uma função para saque, mas a sobrescreveremos a partir do método sacar da classe pai. Escreveremos override func sacar.

Se pressionarmos a tecla "Enter", os parâmetros serão preenchidos automaticamente.

override func sacar(_ valor: Double) {

}COPIAR CÓDIGO
Basta escrevermos o código agora. Lembrando que, se for uma conta poupança, a taxa é de R$ 10,00 para saque. Podemos escrever saldo -= valor + 10, pois estamos somando o valor de R$ 10,00. Se executarmos o código, nada acontecerá porque não estamos usando o método sacar.

Na linha 37, depositamos R$ 50,00. Na linha seguinte, sacaremos R$ 20,00:

contaPoupanca.sacar(20)COPIAR CÓDIGO
Executarei o código já na linha 39 para recebermos menos coisas no console. Observe que, ao executá-lo, o console exibe o saldo de "20.0". Isso acontece porque depositamos R$ 50,00, sacamos R$ 20,00, mas tivemos que pagar um valor de R$ 10,00 em taxas pelo saque. Com isso, sobrescrevemos o método da classe pai.

Faremos o mesmo para a conta corrente. Logo após a função solicitarEmprestimo(), sobrescreveremos o método sacar e pressionaremos a tecla "Enter" para as informações de parâmetros serem preenchidas automaticamente.

Dentro do método, escreveremos saldo -= valor + 5, sendo que R$ 5,00 é a taxa da conta corrente para saque.

override func sacar(_ valor: Double) {
    saldo -= valor + 5
}COPIAR CÓDIGO
Logo após depositarmos o valor de R$ 100,00 na conta corrente, sacaremos R$ 20,00 para fazer o teste.

var contaCorrente = ContaCorrente(nome: "Ana")
contaCorrente.depositar(100)
contaCorrente.sacar(20)
print(contaCorrente.saldo)
contaCorrente.solicitarEmprestimo(20000)
print(contaCorrente.saldo)COPIAR CÓDIGO
Exibindo o saldo no console, obteremos o valor de R$ 75,00, pois a taxa de R$ 5,00 também foi subtraída da operação.

Essa é uma característica importante da orientação a objetos: sobrescrever métodos da classe pai em uma classe filha. Agora que você já aprendeu sobre o override, é hora de avançarmos nos nossos estudos. Te vejo em breve!

@@06
Herança

Você aprendeu sobre herança e o uso do super/override em classes filhas.
Analise o código, prestando atenção nas duas classes e o que uma herda da outra:

class Carro {
  var modelo: String
  var marca: String
  var ano: Int

  init(modelo: String, marca: String, ano: Int) {
      self.modelo = modelo
      self.marca = marca
      self.ano = ano
    }
}

class Ford: Carro {
  var tipoCombustivel: String
  init(modelo: String, ano: Int, tipoCombustivel: String) {
    self.tipoCombustivel = tipoCombustivel
    super.init(modelo: modelo, marca: "Ford", ano: ano)
  }

    func alteraTipoCombustivel(novoTipo: String) {
    self.tipoCombustivel = novoTipo
  }
}

let fiesta = Ford(modelo: "Fiesta", ano: 2014, tipoCombustivel: "Etanol")
fiesta.alteraTipoCombustivel(novoTipo: "Gasolina")COPIAR CÓDIGO
A partir do que observou, assinale a alternativa correta:

O código contém um erro, pois, ao alterar um atributo da classe com a função alteraTipoCombustivel(), a instância precisa ser definida com o uso de var em vez de let.
 
Alternativa correta
O código contém um erro. A classe “Ford”, por ser extendida de “Carro”, não pode obter atributos diferentes da sua classe pai.
 
Alternativa correta
O código contém um erro, já que o super.init() precisa ser chamado antes de inicializar as variáveis da classe filha.
 
Alternativa correta
A classe está definida e instanciada de maneira correta.
 
A classe “Ford” possui um atributo exclusivo, que é o tipoCombustivel e usa do super para inicializar os outros atributos da classe pai.

@@07
Polimorfismo e Typecasting

Uma classe Corrente é uma classe filha, derivada da classe pai Conta. Pelo fato de ela derivar de uma classe Conta, é possível usar uma instância da conta corrente ou da poupança em qualquer função que recebe uma instância do tipo Conta.
Para entendermos melhor, vamos à prática:

Descerei até o fim do código e criarei uma função solta, fora de qualquer classe, chamada exibeSaldoDaConta(). Passaremos como parâmetro um objeto do tipo Conta.

Atenção: o objeto será apenas Conta, sem ser conta poupança nem corrente.
Dentro do escopo da função, exibiremos no console o saldo da conta (print(conta.saldo)).

func exibeSaldoDaConta(_ conta: Conta) {
    print(conta.saldo)
}COPIAR CÓDIGO
Perceba que ele recebe um objeto do tipo conta, mas tanto a conta corrente quanto a poupança também são contas. Por isso, se chamaremos a função exibeSaldoDaConta, passando contaCorrente como parâmetro, e executar o código, o console exibe o saldo da conta corrente (R$ 2.075,00).

O mesmo acontece com a conta poupança. Se usarmos a função exibeSaldoDaConta passando a instância da contaPoupanca, também teremos no console o seu saldo de R$ 20,00.

Isso ocorre porque contaCorrente e contaPoupanca serem classes filhas da classe pai Conta. Assim, elas também se comportam como Conta. Esse comportamento é chamado de Polimorfismo.

O que é o polimorfismo?
Polimorfismo é a habilidade de tratar os objetos de maneira diferente a depender do contexto em que estão inseridos.
No exemplo acima, recebemos um objeto do tipo Conta. contaCorrente e contaPoupanca também são objetos desse tipo. Por isso, podemos tratá-los como uma Conta.

Podemos também fazer verificações para descobrir se a instância é do tipo Conta, contaCorrente ou contaPoupanca. Como fazemos isso? A primeira maneira é usando a palavra is.

Na função exibeSaldoDaConta, excluiremos a linha que indica a exibição do saldo no console e faremos uma verificação, escrevendo if conta is ContaCorrente. Abriremos chaves e pediremos ao console para exibir a seguinte frase "Conta é do tipo conta corrente".

Executando o código, podemos observar que a mensagem surgiu no console apenas uma vez. Nesse caso, não recebemos nenhuma mensagem se a conta for do tipo poupança. Porém, o problema com essa abordagem é que ela não permite que acessemos atributos nem métodos da classe contaCorrente.

Após a linha que imprime a mensagem no console, chamaremos o método solicitarEmprestimo da contaCorrente. Perceba que o autocomplete não aparece. Se executarmos esse código, receberemos um erro indicando que o tipo Conta não possui nenhum método chamado solicitarEmprestimo.

Fizemos uma verificação para saber se a conta é do tipo corrente, mas ela não nos permite acessar atributos nem métodos da classe específica. Precisamos usar outra verificação para isso, a Type Casting, cujo operador é as?.

Apagaremos a linha que está causando o erro e escreveremos, logo após o primeiro if:

if let contaCorrente = conta as? ContaCorrente {

}COPIAR CÓDIGO
Lembre-se que o let é uma maneira de desembrulharmos uma opcional. O as? retorna uma opcional. Então, ele está verificando se a conta passada como parâmetro da função exibeSaldoDaConta é corrente. Se for, podemos escrever qualquer código dentro do if let.

Chamaremos o méotdo da conta corrente solicitarEmprestimo. Neste caso, o autocomplete aparece, pois ele consegue identificar os atributos e métodos desta classe em questão. Passaremos um valor qualquer, 200.

func exibeSaldoDaConta(_ conta: Conta) {
    if conta is ContaCorrente {
        print("Conta é do tipo conta corrente")
    }

    if let contaCorrente = conta as? ContaCorrente {
        contaCorrente.solicitarEmprestimo(200)
    }
}COPIAR CÓDIGO
Executando o código, perceberemos que ele chamou o método da classe da conta corrente, exibindo a mensagem "O cliente está solicitando um empréstimo no valor de 200.0".

Existem outras maneiras de desembrulhar também. Podemos usar:

`guard let contaPoupanca = conta as? ContaPoupanca else {
    return }
print(ContaPoupanca.possuiCartaoDebito)COPIAR CÓDIGO
Caso a conta não seja do tipo poupança, ele simplesmente sairá da função. Observe que ele também consegue pegar o atributo possuiCartaoDebito, que é específico da ContaPoupanca. Executando o código, obtemos um true no console, o que significa que a conta tem um cartão de débito.

Estamos tratando de opcionais porque o as? nos retorna um opcional. Porém, podemos forçar o desembrulho também. Fazemos isso declarando uma variável chamada contaCorrente2, apenas para simular.

var contaCorrente2 = conta as! ContaCorrente
contaCorrente2.solicitarEmprestimo(100)
COPIAR CÓDIGO
Colocaremos um ponto de exclamação (!) depois de as, para forçar o desembrulho. Mas, ao executar o código, obteremos outro erro. Isso acontece porque, quando passamos contaPoupanca, não se trata de uma conta corrente: estamos forçando o desembrulho de uma opcional que, na verdade, é nula.

Isso não é recomendado em nenhum momento. Por isso, excluiremos essas duas últimas linhas do nosso código. Até aqui, você aprendeu a identificar os tipos de determinada classe e as características do polimorfismo. Te vejo em breve!

@@08
Desafios

agora que você já entendeu sobre herança, polimorfismo e typecasting, vamos partir para os desafios propostos dessa aula envolvendo situações do mundo real.
É bastante importante que você pratique os três desafios, pois são essenciais ao seu aprendizado.

Vamos lá?

Desafio 1 - Registrando o empregado e gerente
Vamos simular uma situação de cadastro de funcionários!

Crie uma classe Empregado que possuirá os seguintes atributos:
A. Nome (String);
B. Salário (Double).
Crie uma classe filha de Empregado, a Gerente. Afinal de contas, gerente é um tipo de empregado.
Na classe “Gerente”, adicione como atributo “departamento”, que deve ser uma String que diga a qual departamento o gerente pertence. Lembre de usar o super.init() para inicializar os atributos da classe pai.
Desafio 2 - Calculando o salário do vendedor
Agora, com base no desafio anterior, vamos aprofundar!

Crie uma outra classe filha chamada Vendedor.
Faça um método chamado percentualComissao, que recebe como parâmetro o número de vendas que o vendedor realizou. Cada vendedor possui uma comissão de 10% sobre cada venda. Essa comissão é adicionada ao salário final. Retorne o valor final que o vendedor irá receber, supondo que cada venda possui um valor de R$50,00.
Desafio 3 - Verificando tipos
Ainda com base no desafio anterior, vamos verificar os tipos de “Empregado”, se a instância é do tipo “Gerente” ou “Vendedor”.

Crie uma função chamada verificaTipo que recebe, como parâmetro, uma instância do tipo Empregado;
Faça o uso do typecasting para verificar se a instância é um gerente, vendedor ou apenas um outro empregado;
Mostre no console o nome do empregado e a sua função. Caso o empregado for um gerente, mostre seu departamento também. O resultado final será parecido com esse:
“O(a) empregado(a) Felipe é um(a) gerente e está no departamento RH.”
“O(a) empregado(a) Daniel é um(a) vendedor.”
Vamos lá?

Opinião do instrutor

No desafio 1, você pode ter desenvolvido algo como:
class Empregado {
  var nome: String
  var salario: Double

  init(nome: String, salario: Double) {
    self.nome = nome
    self.salario = salario
  }
}

class Gerente: Empregado {
  var departamento: String
  init(nome: String, salario: Double, departamento: String) {
    self.departamento = departamento
    super.init(nome: nome, salario: salario)
  }
}
COPIAR CÓDIGO
Enquanto no desafio 2, eu cheguei nessa conclusão:

class Vendedor: Empregado {
  func percentualComissao(_ numeroVendas: Int) -> Double {
    return (0.1 * 50.0 * Double(numeroVendas)) + self.salario
  }
}COPIAR CÓDIGO
E por fim, no desafio 3, cheguei nesse resultado:

func verificaTipo(_ empregado: Empregado) {
  if let gerente = empregado as? Gerente {
    print("O(a) empregado(a) \(gerente.nome) é um(a) gerente e está no departamento \(gerente.departamento).")
  } else if let vendedor = empregado as? Vendedor {
    print("O(a) empregado(a) \(vendedor.nome) é um(a) vendedor(a).")
  } else {
    print("O(a) empregado(a) \(empregado.nome) é de um outro tipo.")
  }
}

let vendedor = Vendedor(nome: "Daniel", salario: 2300)
let gerente = Gerente(nome: "Felipe", salario: 4000, departamento: "RH")
verificaTipo(vendedor)
verificaTipo(gerente)COPIAR CÓDIGO
Observação: não se preocupe se seu código ficou muito diferente do meu, existem diversas maneiras de chegar em um mesmo resultado. Apenas certifique-se de que você está escrevendo um código legível, com nomes bem definidos, etc.

@@09
O que aprendemos?

Nessa aula, você aprendeu como:
Utilizar o conceito de herança aplicadas em classes;
Chamar métodos da classe pai com o uso do super;
Sobreescrever métodos da classe pai com o uso do override;
Aplicar o conceito de polimorfismo;
Realizar verificações de tipos com o uso do typecasting.
Finalizamos a aula 2! Espero você na próxima aula.

#### 16/07/2023

@03-Propriedades

@@01
Projeto da aula anterior

Foi criado um playground com exemplos similares ao que vimos na aula anterior. Você pode ir acompanhando o passo a passo do desenvolvimento do nosso código no Github e, caso deseje, pode baixar o código da aula anterior.
Observação: o código fica dentro do arquivo “Contents.swift”, dentro de cada pasta do Playground.
Bons estudos!

https://github.com/alura-cursos/swift-orientacao-a-objetos/tree/aula-02

https://github.com/alura-cursos/swift-orientacao-a-objetos/archive/refs/heads/aula-02.zip

@@02
Propriedades armazenadas, computadas e estáticas

Nesta aula, exploraremos mais sobre propriedades ou atributos de uma classe e de uma struct. Há alguns tipos de propriedades, dentre elas, temos:
Propriedade Armazenada
Propriedade Computada
Propriedade Estática
A primeira, a propriedade armazenada é uma propriedade comum.

MyPlayground
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
}COPIAR CÓDIGO
Por exemplo, o atributo saldo é uma propriedade armazenada, pertencendo a uma classe ou struct, e possui algum valor. O atributo nome também é uma propriedade armazenada, dado que está armazenando algum valor.

Em alguns cenários, desejamos calcular algum valor a partir de alguma propriedade. Vamos supor que precisamos calcular se um usuário está negativado, ou seja, se possui um saldo inferior a zero.

Em um primeiro momento, podemos pensar: "Vou criar o método chamado de VerificaNegativado, e vou retornar um valor booleano para saber se está negativado ou não".

Contudo, há outra maneira de aplicarmos essa lógica: podemos realizar cálculos através das propriedades computadas. Estas, são bem interessantes e vamos declará-las no nosso código.

No arquivo MyPlayground, abaixo na variável nome, criaremos outra variável chamada de negativado.

var negativadoCOPIAR CÓDIGO
As propriedades computadas precisam ter o seu tipo declarado de forma explícita.
Na sequência, acrescentamos dois pontos (":") e o tipo, que será booleano e depois abrimos e fechamos chaves.

var negativado: Bool {

}COPIAR CÓDIGO
Dentro das chaves, vamos refazer o cálculo e passaremos qual o valor dessa propriedade. E qual é o valor? Desejamos saber se o saldo é menor que zero, portanto, daremos um return saldo < 0 (retorna o saldo menor do que zero).

var negativado: Bool {
        return saldo < 0
}COPIAR CÓDIGO
Ele irá retornar para essa propriedade negativado.

MyPlayground
class Conta {
    var saldo = 0.0
    var nome: String

    var negativado: Bool {
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
}COPIAR CÓDIGO
Vamos executar o código, clicando no botão com o ícone de play "▶", do lado esquerdo na última linha do código. Não vai acontecer nada, dado que temos somente uma classe.

Mas agora vamos instanciar um objeto no final do arquivo. Após o último fechar de chaves, criaremos a variável chamada de contaGiovanna (ou um nome que preferir), inicializando a conta (= Conta(nome: "Giovanna")) passando o nome para o inicializador.

MyPlayground
//código omitido

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")COPIAR CÓDIGO
Em seguida, vamos sacar um valor. Observe que o saldo inicial é zero, e se sacarmos R$20, ficamos com - R$20. Para isso, pegamos a variável contaGiovanna e na sequência passamos o método sacar() passando R20.

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.sacar(20)COPIAR CÓDIGO
Então, exibiremos no console a conta da Giovanna negativada.

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.sacar(20)
print(contaGiovanna.negativado)COPIAR CÓDIGO
Ao clicarmos no botão "▶", temos como retorno no console:

true
Ou seja, o valor dessa propriedade é verdadeiro, sendo uma propriedade computada.

Agora depositaremos R$100 e verificaremos se está negativado. Para isso, usamos o contaGiovanna com o método depositar(100). E na linha seguinte exibimos novamente no console para analisarmos.

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.sacar(20)
print(contaGiovanna.negativado)
contaGiovanna.depositar(100)
print(contaGiovanna.negativado)COPIAR CÓDIGO
Ao clicarmos no botão "▶", obtemos:

true
false

Não estamos mais negativados, o valor dessa propriedade negativado é falso. Essa é uma propriedade computada, que calcula o valor de forma automática.

Há outro tipo de propriedade também, chamada de estática. Imagine a seguinte situação: temos uma taxa de transferência de 10% para transferir o valor de uma conta para outra.

Essa taxa de transferência se aplica para todas as instâncias de uma conta, logo, faz mais sentido essa propriedade ser específica de uma classe e não de uma instância. Por isso, ela pode ser chamada de propriedade estática.

Logo após a variável nome, pulamos uma linha e criaremos outra variável iniciando com static var nomeada de taxaTransferencia, que vai receber os 10% mas em valor decimal.

static var taxaTransferencia = 0.1COPIAR CÓDIGO
Agora, vamos ao final do arquivo para exibirmos no console a conta da Giovanna com a taxa de transferência. Para tal, usamos o print() passando Conta.taxaTransferencia. Observe que nem aparece o autocomplete do Xcode.

print(contaGiovanna.taxaTransferencia)COPIAR CÓDIGO
Assim, o nosso arquivo ficará:

class Conta {
    var saldo = 0.0
    var nome: String

    static var taxaTransferencia = 0.1

    var negativado: Bool {
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

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.sacar(20)
print(contaGiovanna.negativado)
contaGiovanna.depositar(100)
print(contaGiovanna.negativado)
print(contaGiovanna.taxaTransferencia)COPIAR CÓDIGO
Logo após, clicamos no botão de play.

O autocomplete não aparece, porque a taxaTransferencia não pertence a instância de uma classe Conta, e sim, à própria classe Conta. Assim, podemos acessá-la não por uma instância, e sim, escrevemos "Conta.taxaTransferencia" (por ser uma propriedade estática que pertence a classe em si e não a uma instância).

print(Conta.taxaTransferencia)COPIAR CÓDIGO
Ao clicarmos no botão "▶", obtemos:

true
false

0.1

Retornou os 10%! Então, para usar essa propriedade mesmo dentro da classe, escrevemos "Conta.taxaTransferencia".

Outro ponto importante que esqueci de mencionar, é que quando falamos de propriedades computadas por calcular um valor de forma automática, elas não podem ser definidas como let (constante).

Ou seja, no caso da variável negativado não poderia ser "let negativado: Bool{}". Isso porque o valor será alterado se precisarmos recalcular essa propriedade novamente e toda vez que acessarmos essa propriedade computada, estamos calculando um novo valor, e, portanto, alterando o seu valor. Por isso, ela só pode ser definida como var.

Aprendemos sobre as propriedades armazenadas, computadas e estáticas. Te espero na próxima aula para continuarmos!

@@03
Para saber mais: Getters e Setters

As propriedades computadas podem utilizar de getters e setters. Na verdade, quando você escreve uma variável computada, como na maneira abaixo:
var area: Double {
    return lado * lado
}COPIAR CÓDIGO
O que você realmente está escrevendo é:

var area: Double {
    get {
        return lado * lado
    }
}COPIAR CÓDIGO
O get fica implícito na sua variável, mas ele existe e está lá. Já o set é opcional. Basicamente, o get permite que você acesse a propriedade e seu valor que será calculado, enquanto o set permite que você realize algo quando essa propriedade for alterada para um novo valor.

Leia mais sobre essa funcionalidade na documentação da linguagem Swift.

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/properties/

@@04
Propriedades

Você aprendeu sobre diferentes tipos de propriedade. Analise o código abaixo e selecione a alternativa que representa o que será exibido no console e que define o tipo de propriedade da variável contagemEstudantes:
class Estudante {
    var nome: String
    var idade: Int
    static var contagemEstudantes = 0

    init(nome: String, idade: Int) {
        self.nome = nome
        self.idade = idade
        Estudante.contagemEstudantes += 1
    }
}

let estudante1 = Estudante(nome: "João", idade: 28)
let estudante2 = Estudante(nome: "Carlos", idade: 32)
let estudante3 = Estudante(nome: "Ana", idade: 29)
print(Estudante.contagemEstudantes) // O que será exibido?

Será exibido no console o valor 3 e a propriedade contagemEstudantes é uma propriedade computada.
 
Alternativa correta
Será exibido no console o valor 3 e a propriedade contagemEstudantes é uma propriedade armazenada.
 
Alternativa correta
O código contém um erro, pois a propriedade contagemEstudantes pertence a uma instância da classe Estudante, e estamos acessando como uma propriedade da própria classe.
 
Alternativa correta
Será exibido no console o valor 3 e a propriedade contagemEstudantes é uma propriedade estática.
 
O valor 3 será exibido no console e a propriedade contagemEstudantes é uma propriedade estática, pertencente a classe Estudante.

@@05
Observadores de propriedade

Há cenários em que desejamos monitorar alterações de atributos de classes ou structs no nosso código. Por exemplo, supondo um aplicativo real, podemos querer realizar alguma alteração no layout da página quando uma variável for alterada.
Isso é possível através dos observadores de propriedades.

No nosso exemplo da classe Conta, podemos obter a informação de quando ela for alterada. Por exemplo, ao usarmos o método sacar o atributo saldo é modificado, e quando usamos o método depositar também. Conseguimos monitorar todas essas variações através dos observadores willSet e didSet.

willSet: Novo valor
didSet: Valor antigo
Vamos visualizar na prática como eles funcionam!

No arquivo da classe Conta, na variável saldo após ela receber o seu valor vamos abrir e fechar chaves.

MyPlayground
// Trecho de código suprimido

class Conta {
    var saldo = 0.0 {

        }
    var nome: String

// Trecho de código suprimido

}COPIAR CÓDIGO
Dentro das chaves, escrevemos willSet e na sequência abrimos e fechamos as chaves novamente.

// Trecho de código suprimido

class Conta {
    var saldo = 0.0 {
                willSet {

                }
        }
    var nome: String

// Trecho de código suprimido

}COPIAR CÓDIGO
Esse observador chamado de willSet será disparado quando um atributo for modificado e ele obterá informações de qual será o novo valor desse atributo.

Dentro do observador, exibiremos no console a frase "O saldo está sendo alterado! O seu novo valor será de ()", sendo (\()) a interpolação de uma variável numa string.

// Trecho de código suprimido

class Conta {
    var saldo = 0.0 {
                willSet {
                        print("O saldo está sendo alterado! O seu novo valor será de \()")
                }
        }

// Trecho de código suprimidoCOPIAR CÓDIGO
Por padrão, o willSet já possui um valor chamado de newValue. Perceba que ao escrevermos "new" já aparece o autocomplete do Xcode. O newValue é, por padrão, o novo valor que o atributo saldo vai ter.

// Trecho de código suprimido

class Conta {
    var saldo = 0.0 {
                willSet {
                        print("O saldo está sendo alterado! O seu novo valor será de \(newValue)")
                }
        }

// Trecho de código suprimidoCOPIAR CÓDIGO
Por enquanto, o nosso arquivo ficará:

class Conta {
    var saldo = 0.0 {
                willSet {
                        print("O saldo está sendo alterado! O seu novo valor será de \(newValue)")
                }
        }
    var nome: String

    static var taxaTransferencia = 0.1

    var negativado: Bool {
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

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.sacar(20)
print(contaGiovanna.negativado)
contaGiovanna.depositar(100)
print(contaGiovanna.negativado)
print(Conta.taxaTransferencia)COPIAR CÓDIGO
No final do arquivo, removeremos todos os prints e deixaremos somente a variável contaGiovanna e o método sacar alteraremos para depositar.

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(20)COPIAR CÓDIGO
Assim, ficamos com:

class Conta {
    var saldo = 0.0 {
                willSet {
                        print("O saldo está sendo alterado! O seu novo valor será de \(newValue)")
                }
        }
    var nome: String

    static var taxaTransferencia = 0.1

    var negativado: Bool {
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

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(20)COPIAR CÓDIGO
Logo após, clicamos no botão de play "▶" do lado esquerdo na última linha do arquivo.

No console, obtemos:

O saldo está sendo alterado! O seu novo valor será de 20.0
Legal! Esse é o observador de propriedade chamado de willSet.

Temos também outro observador de propriedade chamado de didSet, que escreveremos abaixo do willSet, dentro da variável saldo.

// Trecho de código suprimido

class Conta {
    var saldo = 0.0 {
                willSet {
                        print("O saldo está sendo alterado! O seu novo valor será de \(newValue)")
                }

                didSet {

                }
        }

// Trecho de código suprimidoCOPIAR CÓDIGO
Contudo, esse observador de propriedade didSet irá armazenar antigo do atributo saldo. Exibiremos no console a seguinte mensagem usando o print(): "O saldo está sendo alterado! O seu valor antigo era de ()".

// Trecho de código suprimido

class Conta {
    var saldo = 0.0 {
                willSet {
                        print("O saldo está sendo alterado! O seu novo valor será de \(newValue)")
                }

                didSet {
                        print("O saldo está sendo alterado! O seu valor antigo era de \()")
                }
        }

// Trecho de código suprimidoCOPIAR CÓDIGO
Dentro da interpolação de variáveis, por padrão, colocaremos a variável oldValue, sendo o valor anterior desse atributo saldo que foi alterado.

// Trecho de código suprimido

class Conta {
    var saldo = 0.0 {
                willSet {
                        print("O saldo está sendo alterado! O seu novo valor será de \(newValue)")
                }

                didSet {
                        print("O saldo está sendo alterado! O seu valor antigo era de \(oldValue)")
                }
        }

// Trecho de código suprimidoCOPIAR CÓDIGO
Agora clicamos no botão de play "▶" do lado esquerdo na última linha do arquivo.

No console, obtemos:

O saldo está sendo alterado! O seu novo valor será de 20.0
O saldo está sendo alterado! O seu valor antigo era de 0.0

Com isso, conseguimos monitorar quando o nosso atributo está sendo modificado. Isso é muito legal!

No observador willSet, o "will" traduzindo para a língua portuguesa é "vai"; já o "did" é "foi". Portanto, will é futuro (novo valor) e did é passado (valor antigo).

Aí você pensa: "Tá, legal. Mas não gostei do nome newValue no valor. Quero definir outro nome para essa variável". Para isso, vamos abrir e fechar parênteses após o nome do observador willSet e passar o valor desejado.

No caso, vamos apenas traduzir para "novoValor", assim, trocamos esse valor no print() também. Faremos a mesma coisa para o didSet, nomeando de "valorAntigo".

// Trecho de código suprimido

class Conta {
    var saldo = 0.0 {
                willSet (novoValor) {
                        print("O saldo está sendo alterado! O seu novo valor será de \(novoValor)")
                }

                didSet (valorAntigo) {
                        print("O saldo está sendo alterado! O seu valor antigo era de \(valorAntigo)")
                }
        }

// Trecho de código suprimidoCOPIAR CÓDIGO
Em seguida, selecionamos o botão "▶" do lado esquerdo na última linha do arquivo.

No console, observe que não tivemos alterações:

O saldo está sendo alterado! O seu novo valor será de 20.0
O saldo está sendo alterado! O seu valor antigo era de 0.0

Mas continua funcionando conforme o esperado!

Aprendemos sobre observadores de propriedades que monitoram as alterações realizadas nos atributos, sendo uma funcionalidade muito interessante da linguagem Swift.

Te espero na próxima aula!

@@06
Desafios

Agora que você já entendeu sobre os diferentes tipos de propriedades, como elas funcionam, e como podemos captar suas alterações, está na hora de praticarmos com desafios.
Desafio 1 - Propriedades computadas
Crie uma classe/struct “Pessoa” que possua os seguintes atributos, que funcionarão como propriedades armazenadas:

Nome (String);
Idade (Int);
Altura (Double);
Peso (Double).
E então, crie duas propriedades computadas:

IMC (que retorna o índice de massa corporal da pessoa a partir da sua altura e peso);
Adulto (que retorna se a pessoa é maior de 18 ou não, a partir do atributo “idade”).
Caso não saiba, o IMC é calculado por peso / (altura * altura).

Desafio 2 - Observadores de propriedades
Na aula anterior, quando vimos sobre herança, criamos a classe “Empregado” que possuía como atributo o salário, lembra-se disso?

Agora, vamos criar um observador de propriedade para esse atributo. Caso o salário seja alterado para um valor maior do que era, exiba no console a mensagem: “Parabéns, você recebeu uma promoção”. Caso o novo valor seja o mesmo que o anterior, exiba então a mensagem: “Parece que não houve uma promoção dessa vez.”.

Por fim, se o novo valor do salário for menor do que já era anteriormente, bloqueie essa operação e exiba no console a mensagem: “O novo salário não pode ser menor do que era anteriormente”.

Lembre-se que para pegar o valor antigo, use o didSet, e para pegar o valor novo, use o willSet.

Vamos lá?

Opinião do instrutor

No exercício 1, você pode ter desenvolvido algo como:
struct Pessoa {
  let nome: String
  let idade: Int
  let altura: Double
  let peso: Double

  var imc: Double {
    return peso / (altura * altura)
  }

  var adulto: Bool {
    return idade >= 18
  }
}
COPIAR CÓDIGO
Enquanto no exercício 2, eu cheguei nessa conclusão:

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
print(empregado.salario) // 4000COPIAR CÓDIGO
Observação: não se preocupe se seu código ficou muito diferente do meu, existem diversas maneiras de chegar em um mesmo resultado. Apenas certifique-se de que você está escrevendo um código legível, com nomes bem definidos, etc.

//@@07
Para saber mais: modificadores de acesso em atributos e métodos

Você pode tornar um atributo ou um método privados. Isso significa que a instância não pode acessar esse atributo/método.
Para fazer isso, basta colocar a palavra-chave private antes do atributo/método, como no exemplo abaixo:

struct Pessoa {
  var nome: String
  var idade: Int
  var altura: Double
  var peso: Double

  private var imc: Double {
    return peso / (altura * altura)
  }

  var adulto: Bool {
    return idade >= 18
  }
}

let pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)
// pessoa.imc -> Erro!COPIAR CÓDIGO
Agora, apenas a classe/struct em que você a definiu é quem pode acessar de fato esse atributo “IMC”. A instância não pode.

Mas e se quisermos acessar uma propriedade mas prevenir de ser alterada? Para isso, basta utilizar o private(set). Veja no exemplo abaixo:

struct Pessoa {
  // ... restante do código
  private(set) var altura: Double
}

var pessoa = Pessoa(nome: "Felipe", idade: 26, altura: 1.78, peso: 75)
print(pessoa.altura) // 1.78
// pessoa.altura = 1.80 -> Erro!COPIAR CÓDIGO
Agora, a instância pode ler a propriedade “altura”, mas não pode modificá-la.

@@08
O que aprendemos?

Nessa aula, você aprendeu a:
Utilizar de propriedades armazenadas em classes e structs;
Calcular propriedades com o uso de propriedades computadas;
Criar e utilizar uma propriedade estática;
Controlar o uso das propriedades com os observadores de propriedades.
Se precisar de esclarecimentos, aciona a gente lá pelo fórum ou discord!

Nos vemos na próxima aula!

https://github.com/alura-cursos/swift-orientacao-a-objetos/tree/aula-03

https://github.com/alura-cursos/swift-orientacao-a-objetos/archive/refs/heads/aula-03.zip

@04-Extensões, Protocolos e Enumerações

@@01
Projeto da aula anterior

Foi criado um playground com exemplos similares ao que vimos na aula anterior. Você pode ir acompanhando o passo a passo do desenvolvimento do nosso código no Github e, caso deseje, pode baixar o código da aula anterior.
Observação: o código fica dentro do arquivo “Contents.swift”, dentro de cada pasta do Playground.
Bons estudos!

02
Extensões

Imagine que precisamos implementar um método que transfira o valor de uma conta para outra. Para isso, após o método depositar, criaremos um novo chamado de transferir() passando dois parâmetros: contaDestino (do tipo Conta) e valor (do tipo double).
Para isso, escrevemos func transferir(_ contaDestino: Conta, _ valor: Double) {}.

// Trecho de código suprimido

    func depositar(_ valor: Double) {
        saldo += valor
    }

        func transferir(_ contaDestino: Conta, _ valor: Double) {

        }

    init(nome: String) {
        self.nome = nome
    }
}

// Trecho de código suprimidoCOPIAR CÓDIGO
Ao transferirmos de uma conta para outra, precisamos, primeiro, sacar o valor dessa conta e, então, na contaDestino depositamos esse valor.

// Trecho de código suprimido

        func transferir(_ contaDestino: Conta, _ valor: Double) {
                sacar(valor)
                contaDestino.depositar(valor)
        }

// Trecho de código suprimido

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(200)

var contaAna = Conta(nome: Ana)COPIAR CÓDIGO
Logo após, clicamos no botão de play "▶".

Já temos a instância contaGiovanna criada, que possui o nome "Giovanna" e está depositando o valor de R$200. Também declaramos outra instância chamada de contaAna, com o nome "Ana" que não executa nada, isto é, o saldo inicial é zero.

Agora, transferiremos da contaGiovanna para a contaAna. Para tal, abaixo da conta da Ana, escrevemos que desejamos transferir da conta da Giovanna para a conta da Ana um valor de R$50: "contaGiovanna.transferir(contaAna, 50)".

// Trecho de código suprimido

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(200)

var contaAna = Conta(nome: Ana)
contaGiovanna.transferir(contaAna, 50)COPIAR CÓDIGO
Depois, exibimos no console o saldo da conta da Giovanna e da Ana.

// Trecho de código suprimido

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(200)

var contaAna = Conta(nome: Ana)
contaGiovanna.transferir(contaAna, 50)

print(contaGiovanna.saldo)
print(contaAna.saldo)COPIAR CÓDIGO
Logo após, clicamos no botão de play "▶".

No console, obteremos o seguinte retorno:

150.0
50.0

Então a Giovanna possui R$150 na conta, e a Ana R$50.

Agora, imagine que o nosso protótipo de projeto fique muito grande e complexo ao longo do tempo. Para fins organizacionais, podemos reunir todos os métodos envolvendo transferência, porque vamos supor que implementaremos novos métodos de transferência como, por exemplo, se a transferência pode ser realizada; se há saldo o suficiente para realizar essa transferência; se a conta destino é válida. Isto é, há vários métodos relacionados à transferência.

E para fins organizacionais, podemos acoplar todos esses métodos e funcionalidades em apenas um lugar. O Swift possui um tipo de dado chamado de Extension ("estender alguma coisa"), logo, podemos estender um tipo de dado existente que criamos ou não, e implementar novos métodos e funcionalidades dentro dessa extension.

Então, logo após definirmos a nossa classe Conta, escrevemos "extension Conta {}".

// Trecho de código suprimido

    init(nome: String) {
        self.nome = nome
    }
}

    extension Conta {

    }

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.depositar(200)

var contaAna = Conta(nome: Ana)
contaGiovanna.transferir(contaAna, 50)

print(contaGiovanna.saldo)
print(contaAna.saldo)

// Trecho de código suprimidoCOPIAR CÓDIGO
Dentro da extension, colaremos toda a estrutura do método transferir (podemos remover esse método da classe Conta e deixá-lo somente na extension).

// Trecho de código suprimido

    extension Conta {
            func transferir(_ contaDestino: Conta, _ valor: Double) {
                sacar(valor)
                contaDestino.depositar(valor)
        }
    }

// Trecho de código suprimidoCOPIAR CÓDIGO
Estamos em apenas um arquivo playground, a nossa classe de conta e a extension também estão nesse arquivo. Contudo, imagine um projeto maior no qual teremos diversos arquivos em várias pastas. Podemos colocar a extension em qualquer lugar, pois funcionará da mesma forma.

Ao executarmos o código, observe que nada de diferente aconteceu!

A extension serve para estendermos um tipo de dado já existente, pode ser classe ou uma struct. E podemos implementar novos métodos e usar para fins de organização.

Você pode não conseguir visualizar tanto assim a utilidade disso tudo, mas vamos verificar uma coisa interessante agora! Lembra que mencionamos que a extension nos permite estender um tipo de dado já existente, que criamos ou não, certo?

Isso significa que podemos estender tipos de dados existente da linguagem Swift, como o int, double, string, bool, entre outros tipos. Não sabemos onde esses dados estão sendo definidos, não temos acesso ao código, mas podemos estendê-los em qualquer lugar do nosso projeto.

Vamos parar um pouco com o exemplo do aplicativo do Banco, voltaremos com os tipos de dados primitivos (dados já existentes pela linguagem Swift).

Vamos ao final do nosso arquivo MyPlayground (poderíamos remover o código acima, mas não é obrigatório). Imaginemos o seguinte: precisamos implementar um método que contabilize quantos caracteres têm em uma string.

Para solucionarmos isso, poderíamos criar uma função chamada de contaCaracteresString(), passando como parâmetro a string que desejamos contabilizar o número de caracteres. Logo após, vamos retornar um inteiro (INT) e abrir e fechar chaves.

// Trecho de código suprimido

print(contaGiovanna.saldo)
print(contaAna.saldo)

func contaCaracteresString(_ texto: String) -> Int {

}COPIAR CÓDIGO
Para contarmos os caracteres, podemos usar a propriedade count. Logo, vamos retornar o texto que colocamos no parâmetro e na sequência o count.

// Trecho de código suprimido

func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}COPIAR CÓDIGO
Após o fechamento de chaves, criaremos uma variável chamada de texto, onde vamos atribuir a string "Giovanna". Na linha seguinte, chamamos a função contaCaracteresString passando a variável texto.

// Trecho de código suprimido

func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}
let texto = "Giovanna"
contaCaracteresString(texto)COPIAR CÓDIGO
Em seguida, clicamos no botão "▶".

Ao executarmos o código, à direita, temos:

"Giovanna"
8

O retorno foi de oito caracteres para o texto "Giovanna".

Não aplicamos nada demais aqui, fizemos uma função que contabiliza caracteres. Mas podemos usar o extension, para fazer com que esse método contaCaracteresString seja um método próprio da struct string. Afinal, string é uma struct.

Como estamos aprendendo no curso, sobre classes e structs. Os tipos de dados existentes do Swift também são definidos dessa maneira.

Logo, abaixo da linha que chamamos a função contaCaracteresString, escrevemos "extension String{}".

// Trecho de código suprimido

func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}
let texto = "Giovanna"
contaCaracteresString(texto)

extension String {

}COPIAR CÓDIGO
Ao teclarmos "Option" ou "alt" na extension String, será aberta uma janela intitulada de "Summary". Em "Declaration", temos:

@frozen struct StringCOPIAR CÓDIGO
Isso quer dizer que a string é, de fato, uma struct. Assim, tudo o que aprendemos sobre atributos e métodos, também se aplicam a esses tipos de dados primitivos da linguagem Swift.

Logo, dentro da extension String podemos definir métodos! Escrevemos "func contaCaracteresString()", mas não passamos nenhum parâmetro, porque como ela está dentro de uma struct string podemos referenciar essa struct como self. Já, já você entenderá melhor!

// Trecho de código suprimido

extension String {
        func contaCaracteresString()
}COPIAR CÓDIGO
Voltando ao arquivo, o retorno dessa função é um inteiro. E dentro da função, vamos retornar self.count.

// Trecho de código suprimido

extension String {
        func contaCaracteresString() -> Int {
                return self.count
        }
}COPIAR CÓDIGO
O self é a instância, o objeto de fato.

Na sequência, exibiremos no console o "texto.contaCaracteresString()".

// Trecho de código suprimido

extension String {
        func contaCaracteresString() -> Int {
                return self.count
        }
}
print(texto.contaCaracteresString())COPIAR CÓDIGO
Depois, clicamos no botão de executar.

Como retorno no console, obtemos:

150.0
50.0

8

Retornou o valor oito!

Recapitulando
O tipo de dado string é definido por uma struct. Vamos analisar o seguinte trecho:

// Trecho de código suprimido

func contaCaracteresString(_ texto: String) -> Int {
    return texto.count
}
let texto = "Giovanna"
contaCaracteresString(texto)

extension String {
        func contaCaracteresString() -> Int {
                return self.count
        }
}
print(texto.contaCaracteresString())COPIAR CÓDIGO
Nós igualamos a variável texto com "Giovanna", mas por ser uma struct também poderíamos colocar em volta dessas aspas duplas Giovanna, a String().

let texto = String("Giovanna")COPIAR CÓDIGO
Igual ao que declaramos quando criamos a instância de uma struct ou de uma classe.

Após essa alteração, podemos executar o código. Nada de diferente retornou no console:

150.0
50.0

8

Assim, a constante texto é uma instância da struct string. Por isso, na extension String quando implementamos o método de contaCaracteresString usamos o self.

print(texto.contaCaracteresString())COPIAR CÓDIGO
Logo, ao exibirmos no console (linha 46) observe que o contaCaracteresString é um método da instância texto, sendo a instância de uma struct.

Fez mais sentido agora o uso de extensions? Como podemos estender novos métodos e funcionalidades de um tipo de dado já existente?

Outro ponto importante, é que extensions não podem conter propriedades armazenadas, apenas computadas e estáticas.

Com isso, se tentarmos declarar uma variável chamada de texto dentro da extension String e rodarmos, note que ele exibe um erro informando que extensions não devem conter propriedades armazenadas.

// Trecho de código suprimido

extension String {
        var texto = ""
        func contaCaracteresString() -> Int {
                return self.count
        }
}
print(texto.contaCaracteresString())COPIAR CÓDIGO
Logo, não podemos usar o var texto = "", e podemos removê-lo.

Concluímos que, extensions são usadas para estender funcionalidades e métodos de tipos de dados já existentes. São muito utilizadas também para organizar o código.

Te espero para o próximo conteúdo!

@@03
Para saber mais: diferença entre Self e self

No vídeo de extensões, você viu que self refere-se à instância de um tipo de dado customizado, como classe ou struct.
Mas você sabia que, na linguagem Swift, a palavra Self, com ‘S’ maiúsculo, também é utilizada? Vamos analisar a diferença entre elas. Veja o exemplo a seguir, utilizando extension, no primeiro código:

extension Int {
    func somaNumeroCom(_ numero: Self) -> Self {
        return numero + self
    }
}

let numero = 10
let resultadoSoma = numero.somaNumeroCom(20)
print(resultadoSoma) // Será exibido no console o valor 30COPIAR CÓDIGO
Não se preocupe se você não entendeu o código acima, vamos por partes! Estamos criando uma extensão do tipo de dado Int, previamente definido pela linguagem Swift, e adicionando um método chamado somaNumeroCom, que soma a instância dessa struct Int com algum outro valor que passamos por parâmetro. Por fim, retornamos um objeto do tipo Self, já vamos entender o que isso significa!

Você poderia escrever o mesmo código da seguinte maneira; veja o segundo código:

extension Int {
    func somaNumeroCom(_ numero: Int) -> Int {
        return numero + self
    }
}

let numeroDez = 10
let resultadoSoma = numeroDez.somaNumeroCom(20)
print(resultadoSoma) // Será exibido no console o valor 30COPIAR CÓDIGO
Consegue perceber a diferença?

No primeiro códigosomaNumeroCom, temos os dois: o Self com “s” maiúsculo e o self com minúsculo. Ou seja, o Self está presente no tipo de dado do parâmetro recebido na função e também no retorno da função; ou seja, o Self se refere ao dado de tipo Int.

No segundo código, colocamos o Int no lugar de Self, e então temos só a palavra-chave self em caixa baixa. Isso porque, na linguagem Swift, essa palavra-chave self é usada para se referir a uma instância específica do tipo de dado, enquanto o tipo Self se refere ao tipo de dado atual, como classes, structs, etc.

Portanto, no exemplo dado, Self é Int, enquanto self é a instância, ou seja, a variável numeroDez com o valor 10.

@@04
Protocolos

No nosso exemplo até o momento, definimos que a nossa classe ou struct Conta precisa ter o atributo saldo e métodos, como sacar e depositar. Contudo, definimos isso de forma não documentada.
Para garantirmos que uma classe ou struct sempre possua determinados atributos e métodos, podemos usar protocolos.

Os protocolos são um conjunto de regras definidas que devem ser seguidas. Logo, podemos criar um protocolo que define o atributo saldo e os métodos de sacar e depositar.

E se passarmos que um tipo de dado, como a classe ou a struct, implementa esse protocolo, significa que esses tributos e métodos definidos pelo protocolo precisam ser implementados pelo nosso tipo de dado.

Vamos visualizar isso na prática!

No Xcode, em um arquivo chamado de MyPlayground sem nenhum código, criaremos uma classe chamada de ContaCorrente.

class ContaCorrente {

}COPIAR CÓDIGO
Não vamos definir nenhum método ou atributo. Acima da classe, pularemos uma linha e definiremos um protocolo chamado de Conta{}.

protocol Conta {

}

class ContaCorrente {

}COPIAR CÓDIGO
Dentro do protocolo, vamos definir atributos e métodos. Primeiro, definiremos o atributo saldo que será do tipo Double; e então, vamos determinar os métodos, começando pelo de sacar que vai receber como parâmetro o valor que será do tipo Double.

protocol Conta {
        var saldo: Double

        func sacar(_ valor: Double)
}

class ContaCorrente {

}COPIAR CÓDIGO
Mas observe que apenas definimos o método, e não implementá-lo. Por isso, nem vamos abrir e fechar chaves, estamos somente definindo como ele deve ser implementado. A forma que ele será implementado e o que terá dentro dele, é a classe que implementará depois.

Assim, dentro de protocol criaremos outro método chamado de depositar. Escrevemos "func depositar()" que terá um valor também do tipo double.

protocol Conta {
        var saldo: Double

        func sacar(_ valor: Double)

        func depositar(_ valor: Double)
}

class ContaCorrente {

}COPIAR CÓDIGO
Do lado superior direito do código, está sendo exibida uma mensagem de erro:

Property in protocol must have explicit { get } or { get set } specifier
Insert '{get <#set#>}'

Ele informa que uma propriedade em um protocolo precisa ter de forma explícita um get set ou set. Clicando no botão "Fix" do canto inferior direito da mensagem de erro, observe que ele insere de forma automática no nosso código.

protocol Conta {
        var saldo: Double { get set }

        func sacar(_ valor: Double)

        func depositar(_ valor: Double)
}

class ContaCorrente {

}COPIAR CÓDIGO
O "set" do get set da instrutora estava destacado em azul, para ajustar isso, ela somente selecionou o set e digitou novamente.
O que significa esse { get set }? Significa que essa propriedade pode ser lida e alterada. Com o get pegamos a informação; com o set nós setamos uma informação. Assim essa propriedade pode ser tanto de leitura quanto de escrita.

Podemos executar o código! Observe que nada aconteceu.

Agora, na linha 9, na classe ContaCorrente vamos definir que essa classe implementa o protocolo Conta. Para fazermos isso, usamos a mesma sintaxe da herança, na sequência colocamos dois pontos (":") e depois "Conta".

protocol Conta {
        var saldo: Double { get set }

        func sacar(_ valor: Double)

        func depositar(_ valor: Double)
}

class ContaCorrente: Conta {

}COPIAR CÓDIGO
Ao clicarmos no botão de execução do código, será exibida a seguinte mensagem com o erro:

Type 'ContaCorrente' does not conform to protocol 'Conta'
Do you want to add protocol stubs?

Ele nos informa que o nosso tipo "ContaCorrente" não está em conformidade com o protocolo Conta. Isso porque estamos definindo no protocolo de qualquer tipo de dado que implemente esse protocolo precisa ter os métodos: saldo, sacar e depositar.

E perceba que não estabelecemos nada para a classe ContaCorrente. Para ajustarmos isso, clicamos em "Fix" no canto inferior direito da janela com a mensagem de erro.

Assim, ficará:

protocol Conta {
        var saldo: Double { get set }

        func sacar(_ valor: Double)

        func depositar(_ valor: Double)
}

class ContaCorrente: Conta {
    var saldo: Double 

    func sacar(_ valor: Double) {

    }

    func depositar(_ valor: Double) {

    }
}COPIAR CÓDIGO
Com isso, ele insere automaticamente os métodos e atributos necessários. Agora, a implementação é com nós!

Dentro do método sacar, passamossaldo -= valor; e dentro do método depositar colocaremos saldo += valor.

protocol Conta {
        var saldo: Double { get set }

        func sacar(_ valor: Double)

        func depositar(_ valor: Double)
}

class ContaCorrente: Conta {
    var saldo: Double 

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
}COPIAR CÓDIGO
Como o atributo saldo não está sendo inicializado, precisamos ter um construtor. Então logo após o fechamento de chaves do método depositar escrevemos init() {} passando que o saldo é igual a zero.

protocol Conta {
        var saldo: Double { get set }

        func sacar(_ valor: Double)

        func depositar(_ valor: Double)
}

class ContaCorrente: Conta {
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
}COPIAR CÓDIGO
Logo após, clicamos no botão "▶" para executar. Nada irá acontecer novamente, dado que não estabelecemos nenhuma instância para essa classe. Mas você pode criar as variáveis que funcionam como instância, acessar os métodos sacar e depositar que tudo irá funcionar conforme o esperado.

Caso não queira criar o construtor init() declarando o saldo como zero, pode simplesmente removê-lo e inserir essa inicialização do saldo na variável saldo da ContaCorrente. Assim, ficará:

protocol Conta {
        var saldo: Double { get set }

        func sacar(_ valor: Double)

        func depositar(_ valor: Double)
}

class ContaCorrente: Conta {
    var saldo: Double = 0.0

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }
}COPIAR CÓDIGO
Nesta aula, aprendemos sobre os protocolos, como definir atributos e métodos que sejam implementados por um tipo de dado que esteja em conformidade com esse protocolo.

Te espero para um próximo conteúdo. Até mais!

@@05
Número par ou ímpar?

Você aprendeu sobre extensões e protocolos até agora.
Imagine que você precise implementar uma função que checa se um número inteiro é par ou não.

Assinale a alternativa que representa o melhor código para adicionar essa nova funcionalidade em um tipo já existente:

extension Int {
  func checaNumeroPar(_ numero: Int) -> Bool {
    return numero % 2 == 0
  }
}

Int.checaNumeroPar(2)
 
Alternativa correta
extension Int {
  func checaNumeroPar() -> Bool {
    return Int % 2 == 0
  }
}

2.checaNumeroPar() // true
 
Esse código causa um erro de execução pois estamos usando a declaração do tipo de dado Int para uma operação, o que não é possível visto que precisamos lidar com valores, instâncias.
Alternativa correta
func checaNumeroPar(_ numero: Int) -> Bool {
  return numero % 2 == 0
}
 
Alternativa correta
extension Int {
  func checaNumeroPar() -> Bool {
    return self % 2 == 0
  }
}

2.checaNumeroPar() // true
 
Aqui há a extensão do tipo já existente Int e estamos implementando um método adicional nela que atua no próprio número, por isso usamos o self.

@@06
Enumerações

Seguindo com o nosso exemplo do banco: imagine que dentro de uma conta corrente, precisamos implementar uma função que realize o pagamento da fatura de um cartão de crédito.
Essa função receberá, como parâmetro, como a pessoa usuária irá de fato pagar essa fatura. Podendo ser através de pix, boleto, saldo em conta, entre outras opções. Porém, no momento trabalharemos somente com essas três opções.

Temos a nossa classe Conta criada, com os atributos saldo e nome e os métodos sacar e depositar.

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

var contaGiovanna = Conta(nome: "Giovanna")COPIAR CÓDIGO
Logo após a função depositar, criaremos uma nova função chamada de pagamentoCartao() passando o tipo do pagamento e definindo como string.

class Conta {
    var saldo = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }

        func pagamentoCartao(_ tipoPagamento: String) {

        }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")COPIAR CÓDIGO
No escopo da função pagamentoCartao, vamos criar um comando switch para analisarmos o que recebemos como tipo de pagamento. Então, escrevemos "switch tipoPagamento{}".

class Conta {
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

                }
        }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")COPIAR CÓDIGO
No switch, adicionaremos três casos. Escrevemos case "", as aspas duplas é para referenciar que estamos tratando de uma string. Dentro das aspas duplas digitamos "pix", depois dois pontos (":") e exibimos no console a mensagem "O pagamento será efetuado por pix".

// Trecho de código suprimido

        func pagamentoCartao(_ tipoPagamento: String) {
                switch tipoPagamento {
                case "pix": print("O pagamento será efetuado por pix")
                }
        }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")COPIAR CÓDIGO
Em seguida, criaremos mais dois casos, o de boleto e o de saldo em conta seguindo a mesma lógica.

// Trecho de código suprimido

        func pagamentoCartao(_ tipoPagamento: String) {
                switch tipoPagamento {
                case "pix": print("O pagamento será efetuado por pix")
                case "boleto": print("O pagamento será efetuado por boleto")
                case "saldoEmConta": print("O pagamento será efetuado por saldo em conta")
                }
        }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")COPIAR CÓDIGO
Precisamos ter um caso default, que será executado quando nenhum dos três casos acima ocorrer. Colocaremos somente "default:break" porque não desejamos que ele faça nada.

// Trecho de código suprimido

        func pagamentoCartao(_ tipoPagamento: String) {
                switch tipoPagamento {
                case "pix": print("O pagamento será efetuado por pix")
                case "boleto": print("O pagamento será efetuado por boleto")
                case "saldoEmConta": print("O pagamento será efetuado por saldo em conta")
                default: break
                }
        }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")COPIAR CÓDIGO
Na linha 27 (var contaGiovanna), instanciamos a classe conta passando o nome Giovanna, e agora acessamos esse método pagamentoCartao.

Então na linha seguinte, escrevemos contaGiovanna.pagamentoCartao(tipoPagamento: String).

// Trecho de código suprimido

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.pagamentoCartao(tipoPagamento: String)COPIAR CÓDIGO
No lugar de "tipoPagamento" escrevemos "pix" com as aspas duplas e podemos remover ": String".

// Trecho de código suprimido

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.pagamentoCartao("pix")COPIAR CÓDIGO
Em seguida, clicamos no botão "▶".

No console, obtemos como retorno:

O pagamento será efetuado por pix
Passamos o pix, mas e se escrevêssemos algo com um erro ortográfico? Por exemplo, passar "pixx". Ao clicarmos no botão para executar, observe que nada será exibido no console.

Isso acontece porque nenhum dos casos que passamos na função pagamentoCartao está sendo atendida. Mas então, vamos supor que outra pessoa desenvolvedora começa a trabalhar no nosso código e analisa o método pagamentoCartao, observando que o tipoPagamento está sendo definido como string.

A pessoa desenvolvedora pode pensar: "Mas qual string preciso passar para esse método funcionar?". Supondo que a pessoa não tenha acesso ao código dentro do switch com os casos, possuindo acesso somente ao método pagamentoCartao que recebe uma string.

Perceba que são questões difíceis de lidarmos ao trabalharmos com algum tipo de dado considerado vago, como é o caso de uma string. Isso porque podemos passar qualquer string no lugar de "pix", pode não exibir nada no console, mas ele deixa passar.

É a partir desse cenário que entra um tipo de dado chamado de enumeração da linguagem Swift. Esse tipo de dado, nos permite definir casos concretos.

Voltando ao arquivo da classe Conta, no topo do código pularemos duas linhas e definiremos uma enumeração. Para isso, usamos a palavra chave enum que chamaremos de FormaDePagamento e abrimos e fechamos chaves.

Assim, o nosso código ficará:

enum FormaDePagamento {

}

class Conta {
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
    case "pix": print("O pagamento será efetuado por pix")
    case "boleto": print("O pagamento será efetuado por boleto"
    case "saldoEmConta": print("O pagamento será efetuado por saldo em conta")
      default: break
      }
    }

    init(nome: String) {
        self.nome = nome
    }
}

var contaGiovanna = Conta(nome: "Giovanna")
contaGiovanna.pagamentoCartao("pix")COPIAR CÓDIGO
Dentro no enum FormaDePagamento, criaremos os casos. Para tal, digitamos case pix, e na linha seguinte case boleto e na próxima case saldoEmConta.

enum FormaDePagamento {
    case pix
    case boleto
    case saldoEmConta
}

// Trecho de código suprimidoCOPIAR CÓDIGO
Portanto, esses serão os casos abordados pelo nosso enum FormaDePagamento.

Agora, no método pagamentoCartao, ao invés de recebermos uma string receberemos como parâmetro a FormaDePagamento (variável do tipo FormaDePagamento).

// Trecho de código suprimido

    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
      switch tipoPagamento {
    case "pix": print("O pagamento será efetuado por pix")
    case "boleto": print("O pagamento será efetuado por boleto"
    case "saldoEmConta": print("O pagamento será efetuado por saldo em conta")
      default: break
      }
    }

// Trecho de código suprimidoCOPIAR CÓDIGO
Foram gerados alguns erros nos casos, porque não estamos mais trabalhando com strings e sim com a FormaDePagamento, sendo um tipo de dado que criamos.

Dentro do primeiro case do pix, podemos remover a string com "pix" e no lugar digitar ponto ".". Observe que será exibido um menu com as seguintes opções:

boleto
pix
saldoEmConta
No caso, vamos escolher a opção "pix". Seguiremos a mesma lógica para os outros casos. Isso acontece porque estamos recebendo como parâmetro o tipo de dado FormaDePagamento.

// Trecho de código suprimido

    func pagamentoCartao(_ tipoPagamento: FormaDePagamento) {
        switch tipoPagamento {
        case .pix: print("O pagamento será efetuado por pix")
        case .boleto: print("O pagamento será efetuado por boleto")
        case .saldoEmConta: print("O pagamento será efetuado por saldo em conta")
        //default: break
        }
    }

// Trecho de código suprimidoCOPIAR CÓDIGO
Esse ponto que estamos usando é uma abreviação, podemos escrever da seguinte forma esse trecho de código:

case FormaDePagamento.pix: print("O pagamento será efetuado por pix")COPIAR CÓDIGO
Funcionaria da mesma forma, mas por questão de agilidade colocamos somente o ponto. Não vamos alterar, foi apenas uma observação legal de mencionarmos.

Descendo o código na última linha, ao chamarmos a função não podemos mais passar uma string qualquer, precisamos passar um objeto válido do FormaDePagamento.

Assim, se colocarmos ponto dentro do parênteses do pagamentoCartao(), observe que já são exibidas as três opções de objetos válidos: saldoEmConta, boleto e pix. Clicamos na opção "pix".

contaGiovanna.pagamentoCartao(.pix)COPIAR CÓDIGO
Ao selecionarmos o botão "▶", obtemos no console:

O pagamento será efetuado por pix
Com isso, o código funciona conforme o esperado! Não retornou nenhum erro, pois estamos com os nossos casos bem definidos.

Na linha 24, do default, temos a mensagem em inglês: "Default will never be executed" (em português, "o default nunca será executado").

Isso porque já abordamos, dentro do switch, todos os casos disponíveis no enum FormaDePagamento. Portanto, podemos deixar essa linha comentada ou simplesmente remover.

Logo após, clicamos no botão "▶" novamente. Obtemos no console:

O pagamento será efetuado por pix
Tudo funcionou conforme o esperado.

Logo, as enumerações são usadas também com o switch por conseguirmos abordar diferentes casos. Podemos realizar essas enumerações para qualquer tipo de caso.

Por exemplo, saindo um pouco do exemplo de banco, pulando uma linha no final do arquivo criaremos uma enumeração representando os meses do ano. Para isso, escrevemos "enum Mes {}".

// Trecho de código suprimido

enum Mes {

}COPIAR CÓDIGO
Dentro do enum Mes, escrevemos case com todos os meses ao longo do ano seguidos: janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro. Observe que não precisamos colocar case janeiro, case fevereiro, etc.

// Trecho de código suprimido

enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}COPIAR CÓDIGO
Temos um enum representando os meses do ano! Para inicializá-lo criaremos uma variável chamada de janeiro e igualá-la ao Mes.janeiro.

// Trecho de código suprimido

enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiroCOPIAR CÓDIGO
Outra forma de declararmos é criando a variável chamada de fevereiro, por exemplo, na sequência dois pontos (para definirmos explicitamente o tipo de dado) e depois "Mes" e igualar tudo isso a ".fevereiro".

// Trecho de código suprimido

enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
var fevereiro: Mes = .fevereiroCOPIAR CÓDIGO
Como declaramos de forma explícita que o tipo de dado é "Mes", simplesmente colocamos o ponto para referenciar.

Não lembro se já mencionei, mas em struct e classes, isso também acontece. Por exemplo, ao declararmos na linha 32 a conta Giovanna:

var contaGiovanna = Conta(nome: "Giovanna")COPIAR CÓDIGO
Podemos definir de forma explícita que é do tipo Conta após o contaGiovanna, acrescentando dois pontos Conta. E ao invés de igualar ao "Conta(nome: "Giovanna")" no lugar de "Conta" colocamos o ponto init (.init).

var contaGiovanna: Conta = .init(nome: "Giovanna")COPIAR CÓDIGO
É só uma forma diferente de representarmos algo, de inicializarmos diferentes tipos de dados, não altera no funcionamento.

Nesta aula, aprendemos como usar as enumerações e os motivos pelos quais elas são úteis. Te espero para o próximo conteúdo!

@@07
Raw Values

Aprendemos sobre a criação de enumerações, e criamos um enum para representar a forma de pagamento e os meses do ano. Mas você sabia que podemos ter um valor customizado para cada caso de uma enumeração?
Vamos aprender como isso funciona na prática!

Raw Values
Os valores que representam cada caso de uma enumeração, são chamados de Raw Values (em português, "valor bruto"). Como esse valor bruto funciona?

// Trecho de código suprimido

enum Mes {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
var fevereiro: Mes = .fevereiroCOPIAR CÓDIGO
Após declararmos o nosso enum Mes, na sequência adicionamos dois pontos e colocamos o tipo inteiro (: Int). Isso porque cada caso será representado por um inteiro.

// Trecho de código suprimido

enum Mes: Int {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
var fevereiro: Mes = .fevereiroCOPIAR CÓDIGO
Na linha 39, após a criação da variável chamada de janeiro, pularemos uma linha e exibiremos no console "janeiro.rawValue".

// Trecho de código suprimido

enum Mes: Int {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiroCOPIAR CÓDIGO
Ao executarmos o código, temos o seguinte retorno no console:

O pagamento será efetuado por pix
0

O Raw Value de janeiro é zero, porque, por padrão, ao usarmos o inteiro ele inicia com o número zero.

Porém, se formos na linha 36 e logo após o janeiro igualarmos a um, como no trecho de código seguinte:

// Trecho de código suprimido

enum Mes: Int {
    case janeiro = 1, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiroCOPIAR CÓDIGO
Obtemos o seguinte retorno:

O pagamento será efetuado por pix
1

O print(janeiro.rawValue) retorna um. Logo, esse valor 1 representa o mês de janeiro na nossa enumeração.

Se, após a criação da variável de fevereiro, exibirmos no console o Raw Value de fevereiro, obtemos no console o número dois.

// Trecho de código suprimido

enum Mes: Int {
    case janeiro = 1, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)COPIAR CÓDIGO
O pagamento será efetuado por pix
1

2

Isso acontece porque ele captura a sequência para analisar qual o próximo número. Essa é uma forma de termos valores customizados para cada caso da nossa enumeração.

Agora, ao invés de "Int" no nosso enum Mes, usaremos String. Logo após, vamos remover o "= 1" no mês de janeiro.

// Trecho de código suprimido

enum Mes: String {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)COPIAR CÓDIGO
Ao executarmos esse código, obtemos:

O pagamento será efetuado por pix
janeiro

fevereiro

Observe que o janeiro.rawValue retornou simplesmente "janeiro"; e o fevereiro.rawValue devolveu "fevereiro". Isso aconteceu porque ao definirmos o Raw Value como string ele captura a string literal do caso.

Logo, se o caso é chamado de "janeiro" a string também será "janeiro". Porém, agora esse Raw Value não possui mais o tipo de dado Mes, mas sim string.

Recapitulando: o Raw Value é o valor customizado para cada caso da enumeração.

Exemplificando melhor o caso do string no Raw Value, após o case janeiro adicionaremos "= "Janeiro"", com a letra "J" maiúscula.

// Trecho de código suprimido

enum Mes: String {
    case janeiro = "Janeiro", fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

// Trecho de código suprimidoCOPIAR CÓDIGO
Ao executarmos, obtemos:

O pagamento será efetuado por pix
Janeiro

fevereiro

Deu certo!

Para continuar exemplificando sobre o Raw Value, criaremos outro enum abaixo do print do Raw Value de fevereiro, que também não está tão relacionado ao tema conta corrente. Chamaremos esse enum de Moeda.

// Trecho de código suprimido

enum Mes: String {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

enum Moeda {

}COPIAR CÓDIGO
No escopo do enum, criaremos casos para diferentes valores de moedas.

// Trecho de código suprimido

enum Mes: String {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

enum Moeda {

        case umCentavo
        case cincoCentavos
        case dezCentavos
        case vinteCincoCentavos
        case cinquentaCentavos

}COPIAR CÓDIGO
Após o fechamentos de chaves do enum Moeda, criamos uma variável chamada de moedaCincoCentavos e igualaremos isso ao tipo de dado Moeda.CincoCentavos.

// Trecho de código suprimido

enum Mes: String {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

enum Moeda {

        case umCentavo
        case cincoCentavos
        case dezCentavos
        case vinteCincoCentavos
        case cinquentaCentavos

}

var moedaCincoCentavos = Moeda.cincoCentavosCOPIAR CÓDIGO
Ao definirmos o Raw Value como double, podemos colocar o sinal de igual após cada caso passando o valor decimal que representa a moeda.

// Trecho de código suprimido

enum Mes: String {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

enum Moeda: Double {

        case umCentavo = 0.01
        case cincoCentavos = 0.05
        case dezCentavos = 0.1
        case vinteCincoCentavos = 0.25
        case cinquentaCentavos = 0.5

}

var moedaCincoCentavos = Moeda.cincoCentavosCOPIAR CÓDIGO
Abaixo da variável moedaCincoCentavos, exibiremos no console a moeda de cinco centavos com o Raw Value, obtemos o valor 0.05 no console.

// Trecho de código suprimido

enum Mes: String {
    case janeiro, fevereiro, marco, abril, maio, junho, julho, agosto, setembro, outubro, novembro, dezembro
}

var janeiro = Mes.janeiro
print(janeiro.rawValue)
var fevereiro: Mes = .fevereiro
print(fevereiro.rawValue)

enum Moeda: Double {

        case umCentavo = 0.01
        case cincoCentavos = 0.05
        case dezCentavos = 0.1
        case vinteCincoCentavos = 0.25
        case cinquentaCentavos = 0.5

}

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)COPIAR CÓDIGO
Console
O pagamento será efetuado por pix
Janeiro

fevereiro

0.05

Associated Values
Agora, precisamos entender sobre outra caraterística do enum nomeada de Associated Values (em português, "valores associados").

Vamos supor a seguinte situação: você vai no banco e tenta sacar um valor maior do que o que consta no saldo da sua conta. Isso não seria possível, não é mesmo?

Assim, podemos criar um enum para lidar com esses casos de sucesso e de falha.

Voltando ao arquivo, após exibirmos o Raw Value da moeda de cinco centavos, criaremos um enum chamado de ResultadoSaque.

// Trecho de código suprimido

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)

enum ResultadoSaque {

}COPIAR CÓDIGO
No escopo do enum, adicionaremos dois casos, sendo o primeiro de sucesso. Quando este caso ocorrer, precisamos atualizar o nosso saldo.

Então escrevemos "case sucesso()" passando um valor chamado de novoValor que será do tipo double.

// Trecho de código suprimido

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)

enum ResultadoSaque {
        case sucesso(novoValor: Double)
}COPIAR CÓDIGO
Caso o saque não seja efetuado, ou seja, caso o valor que estamos tentando sacar seja maior que o que temos no saldo da nossa conta, vai cair em uma falha.

Logo, na próxima linha, adicionaremos um caso de falha, onde teremos uma mensagem de erro especificando o motivo das falhas. Digitamos "erro: String" dentro do parênteses do caso de falha.

// Trecho de código suprimido

var moedaCincoCentavos = Moeda.cincoCentavos
print(moedaCincoCentavos.rawValue)

enum ResultadoSaque {
        case sucesso(novoValor: Double)
        case falha(erro: String)
}COPIAR CÓDIGO
Subindo o código na função sacar, vamos fazer essa função retornar o ResultadoSaque.

// Trecho de código suprimido

    func sacar(_ valor: Double) -> 
                ResultadoSaque {



        saldo -= valor
    }

// Trecho de código suprimidoCOPIAR CÓDIGO
Agora, precisamos fazer uma verificação dentro do escopo da função, para isso, usaremos o comando if passando que se o valor for maior que o saldo, isso gera uma falha.

Por isso, retornaremos usando o return e na sequência colocamos um ponto ("."), observe que ele irá exibir as opções de falha e de sucesso, clicaremos na opção "falha(erro:)".

// Trecho de código suprimido

    func sacar(_ valor: Double) -> 
                ResultadoSaque {

                if valor > saldo {
                        return .falha(erro: String)
                }

        saldo -= valor
    }

// Trecho de código suprimidoCOPIAR CÓDIGO
No lugar de "String" colocamos a mensagem "O valor é maior do que seu saldo".

// Trecho de código suprimido

    func sacar(_ valor: Double) -> 
                ResultadoSaque {

                if valor > saldo {
                        return .falha(erro: "O valor é maior do que seu saldo")
                }

        saldo -= valor
    }

// Trecho de código suprimidoCOPIAR CÓDIGO
Caso consiga efetuar o saque (else), dentro do else colocamos saldo -= valor, na linha seguinte retornamos o sucesso passando que o novo valor é o saldo, dado que este já está atualizado.

// Trecho de código suprimido

    func sacar(_ valor: Double) -> 
                ResultadoSaque {

                if valor > saldo {
                        return .falha(erro: "O valor é maior do que seu saldo")
                } else {
                        saldo -= valor
                        return .sucesso(novoValor: saldo)
                }
    }

// Trecho de código suprimidoCOPIAR CÓDIGO
Após essas alterações, executamos o código e não teremos nenhuma alteração no retorno.

Agora, após chamarmos a função pagamentoCartao, vamos depositar um valor de R$100 e na próxima linha vamos sacar R$20.

// Trecho de código suprimido

var contaGiovanna: Conta = .init(nome: "Giovanna")
contaGiovanna.pagamentoCartao(.pix)
contaGiovanna.depositar(100)
contaGiovanna.sacar(20)

// Trecho de código suprimidoCOPIAR CÓDIGO
Podemos executar que não ocorrerá nada de diferente, pois estamos apenas retornando dessa função.

Mas observe que interessante: à direita da linha 42 (sacar) conseguimos visualizar que o retorno foi:

sucesso(novoValor:80.0)
Legal!

Ainda na linha 42, armazenaremos esse ResultadoSaque (retorno da função sacar) em uma constante chamada de resultado.

// Trecho de código suprimido

var contaGiovanna: Conta = .init(nome: "Giovanna")
contaGiovanna.pagamentoCartao(.pix)
contaGiovanna.depositar(100)
let resultado = contaGiovanna.sacar(20)

// Trecho de código suprimidoCOPIAR CÓDIGO
Com a constante resultado definida, vamos colocá-la dentro do comando switch. Lembrando que o comando switch é bastante usado com o enum para conseguirmos lidar com cada caso.

// Trecho de código suprimido

var contaGiovanna: Conta = .init(nome: "Giovanna")
contaGiovanna.pagamentoCartao(.pix)
contaGiovanna.depositar(100)
let resultado = contaGiovanna.sacar(20)

switch resultado {

}

// Trecho de código suprimidoCOPIAR CÓDIGO
Se executarmos o código como ele está, será gerado um erro informando que o comando switch deve ser exaustivo, ou seja, precisamos adicionar todos os casos nele.

Clicaremos no botão "Fix" no canto inferior direito da janela que abriu com a mensagem de erro.

// Trecho de código suprimido

var contaGiovanna: Conta = .init(nome: "Giovanna")
contaGiovanna.pagamentoCartao(.pix)
contaGiovanna.depositar(100)
let resultado = contaGiovanna.sacar(20)

switch resultado {

case .sucesso(novoValor: let novoValor):

case .falha(erro: let erro):

}

// Trecho de código suprimidoCOPIAR CÓDIGO
Gerou um erro dentro dos parênteses, podemos apenas remover o "novoValor:" dentro do caso de sucesso e o "erro:" do caso de falha.

// Trecho de código suprimido

var contaGiovanna: Conta = .init(nome: "Giovanna")
contaGiovanna.pagamentoCartao(.pix)
contaGiovanna.depositar(100)
let resultado = contaGiovanna.sacar(20)

switch resultado {

case .sucesso(let novoValor):

case .falha(let erro):

}

// Trecho de código suprimidoCOPIAR CÓDIGO
Então, o Associated Value nos permite associar um valor a cada caso.

Vamos descer o código até o ResultadoSaque.

// Trecho de código suprimido

enum ResultadoSaque {
        case sucesso(novoValor: Double)
        case falha(erro: String)
}COPIAR CÓDIGO
Lembrando que em ResultadoSaque temos para o caso de sucesso um novo valor do tipo double; já para o caso de falha temos um erro do tipo string.

Voltando ao switch, podemos declarar a variável novoValor como o valor que ele está recebendo caso o retorno for de sucesso. Para isso, abaixo do caso de sucesso vamos exibir a mensagem "O saque foi um sucesso, e o saldo é de (novoValor)", sendo \(novoValor) a interpolação para pegar esse novo valor.

// Trecho de código suprimido

switch resultado {

case .sucesso(let novoValor):
        print("O saque foi um sucesso, e o saldo é de \()")

case .falha(let erro):

}

// Trecho de código suprimidoCOPIAR CÓDIGO
No caso de falha, colocaremos "erro" dado que ele já é uma mensagem (string).

// Trecho de código suprimido

switch resultado {
case .sucesso(let novoValor):
        print("O saque foi um sucesso, e o saldo é de \()")

case .falha(let erro):
        print(erro)
}

// Trecho de código suprimidoCOPIAR CÓDIGO
Agora, vamos copiar o enum ResultadoSaque inteiro e colar na linha 7, acima da classe Conta. Afinal, estamos usando o ResultadoSaque dentro de conta. E se ele estiver no fim do código, a classe Conta não consegue ler.

// Trecho de código suprimido

enum ResultadoSaque {
        case sucesso(novoValor: Double)
        case falha(erro: String)
}

class Conta {
    var saldo = 0.0
    var nome: String

// Trecho de código suprimido

}COPIAR CÓDIGO
Ao executarmos o código na linha 54, clicando no botão "▶", temos o seguinte retorno no console:

O pagamento será efetuado por pix
O saque foi um sucesso, e o saldo é de 80.0

Foi exibida uma mensagem informando o novo saldo!

Nesta aula, aprendemos sobre o uso de Raw Values e Associated Values. Te espero no próximo vídeo!

@@08
Desafios

Agora que você já entendeu sobre os diferentes tipos como protocolos, extensões e enumerações, está na hora de praticarmos com desafios.
Desafio 01 - Área
Crie um protocolo chamado “Area” que define uma propriedade que pode apenas ser lida, e não setada, que corresponde a área de determinada figura, com o tipo Double. Essa propriedade é definida como uma propriedade computada, mas lembre-se que no protocolo não há diferenciação entre propriedades armazenadas ou computadas, você apenas define uma propriedade.

E então, crie duas classes (ou structs) que implementem o protocolo Area: Quadrado e Triangulo. Implemente o cálculo da área de acordo com cada figura (cada classe precisa receber os parâmetros necessários para o cálculo) e por fim, imprima o valor de cada área no console.

Desafio 02 - Moedas
Veja o código abaixo:

enum Moeda: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]COPIAR CÓDIGO
De acordo com esse código, crie uma função que recebe como parâmetro um array do tipo “Moeda”. Faça a soma de todos os valores desse array segundo o raw value e retorne essa soma.

No caso do exemplo acima, o que deve ser retornado da função é o valor 51, que é a soma de todas as moedas desse array declarado.

Vamos lá?

Opinião do instrutor

No exercício 1, você pode ter desenvolvido algo como:
protocol Area {
  var area: Double { get }
}

struct Quadrado: Area {
  var lado: Double
  var area: Double {
    return lado * lado
  }
}

struct Triangulo: Area {
  var base: Double
  var altura: Double
  var area: Double {
    return (base * altura) / 2
  }
}

let quadrado = Quadrado(lado: 7)
let triangulo = Triangulo(base: 4, altura: 3)
quadrado.area
triangulo.areaCOPIAR CÓDIGO
Enquanto no exercício 2, eu cheguei nessa conclusão:

enum Moeda: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50
}

func contarMoedas(_ moedas: [Moeda]) -> Int {
  var soma = 0
  for valor in moedas {
    soma += valor.rawValue
  }
  return soma
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]
contarMoedas(moedas) // 51COPIAR CÓDIGO
Uma curiosidade sobre o exercício 2 é que o método poderia ser implementado dentro da enumeração “Moeda”, veja abaixo como seria:

enum Moeda: Int {
  case UmCentavo = 1
  case CincoCentavos = 5
  case DezCentavos = 10
  case VinteCincoCentavos = 25
  case CinquentaCentavos = 50

  static func contarMoedas(_ moedas: [Self]) -> Int {
    var soma = 0
    for valor in moedas {
      soma += valor.rawValue
    }
    return soma
  }
}

let moedas: [Moeda] = [.CincoCentavos, .UmCentavo, .CincoCentavos, .VinteCincoCentavos, .CincoCentavos, .DezCentavos]
Moeda.contarMoedas(moedas)COPIAR CÓDIGO
Precisa ser método estático pois depende da enumeração em si e não de uma instância da enumeração.

Lembrando que Self, com S maiúsculo, refere-se ao tipo de dado da própria classe/struct/enumeração/protocolo (ou qualquer outro tipo de dado). Já self, com S minúsculo, refere-se ao valor da instância.

Observação: não se preocupe se seu código ficou muito diferente do meu, existem diversas maneiras de chegar em um mesmo resultado. Apenas certifique-se de que você está escrevendo um código legível, com nomes bem definidos, etc.

@@09
Para saber mais: opcionais funcionam com o uso de enumerações

Agora que você já entendeu sobre enumerações, sabia que as opcionais funcionam com o uso de enumerações?
Isso acontece porque quando utilizamos opcionais temos dois cenários possíveis:

Caso haja algum valor;
Caso não haja algum valor (nesse caso, a opcional será nil).
Quem controla esses casos são as enumerações. Veja o código abaixo:

var valor: Int?
valor = 5

switch valor {
case .none: print("A opcional não possui nenhum valor.")
case .some(let valor): print("O valor da opcional é \(valor)")
}COPIAR CÓDIGO
Portanto, é utilizado de enumeração e valores associados para lidar com opcionais. Interessante, não?

@@10
Para saber mais: Generics

Pelo Swift ser fortemente tipado, existem alguns casos em que queremos utilizar tipos mais “genéricos”. É aí que entra a poderosa funcionalidade da linguagem Swift: Generics.
Para entender sobre essa funcionalidade, temos um artigo aqui na Alura e você pode lê-lo aqui.

Além disso, é extremamente importante lermos a documentação da linguagem/tecnologia que estamos utilizando, por isso você pode clicar aqui para ler mais sobre Generics através da documentação do Swift.

https://www.alura.com.br/artigos/ios-swift-entendendo-uso-generics-por-que-como-utilizar?_gl=1*1dv3wd9*_ga*MTgwMzIzMjk2Ni4xNjg4ODE5OTcz*_ga_59FP0KYKSM*MTY4OTUzNjAxNS4xNi4xLjE2ODk1NDA0MjMuMC4wLjA.*_fplc*Z0FzYnVRTloxa2h4YmRwTWNTSHVtQjFlV1N4dEtiWk8wRDBMUHh0Z2w3Q0lOS2JZQk1JZXRhJTJGdUsxeklSSGlRUHZyNDd4SFVnRm51VEx6eXRhMiUyRkZZc2lnMXZhSXBQODNmMEptJTJGZ01VYTBtVzF4dnJqRTVOOUpaZ0lSMXpnJTNEJTNE

https://docs.swift.org/swift-book/documentation/the-swift-programming-language/generics/

@@11
O que aprendemos?
PRÓXIMA ATIVIDADE

Nessa aula, você aprendeu como:
Utilizar de extensões para extender tipos de dados já existentes ou criados;
Criar protocolos e utilizá-los para definir regras que devem ser seguidas pelos tipos de dados que irá definir;
Definir diferentes casos pela enumeração;
Trabalhar com raw values e associated values em enumerações.

@@12
Conclusão

Parabéns por concluir mais um curso! Agora você compreende mais como a linguagem Swift funciona.
Recapitulando
Nesse curso, vimos tópicos sobre orientação a objetos, como as classes, as structs, as heranças e o polimorfismo.

Também, aprendemos sobre propriedades, sendo elas as armazenadas, as computadas e as estáticas e os observadores de propriedades também!

Por fim, aprendemos sobre tipos de dados muito usados na linguagem Swift, como as extensões, os protocolos e as enumerações.

Orientação a objetos
Classes
Structs
Heranças
Polimorfismo
Propriedades
Propriedades armazenadas
Propriedades computadas
Propriedades estáticas
Observadores
Tipos de dados
Extensões
Protocolos
Enumerações
Com esse conhecimento, você já possui os requisitos necessários para iniciar a construção do seu primeiro aplicativo iOS.

Use o Fórum e o Discord! Caso tenha qualquer dúvida, pode postar no nosso Fórum ou no Discord da Alura, que estamos à disposição!

Você também pode conhecer outras pessoas estudantes que estão realizando este curso ou que já fizeram e trocar conhecimentos sobre o desenvolvimento iOS.

Avalie o curso! A sua avaliação é muito importante para nós, deixe a sua nota e o seu comentário com a sua sugestão de melhoria ou elogio.

Nos marque nas redes sociais! Poste o seu projeto e tudo o que aprendeu ao longo dos nossos cursos aqui na plataforma da Alura, usando a hashtag #AprendiNaAlura.

Muito obrigada por me acompanhar ao longo desse curso e por ter chegado até aqui. Até mais!