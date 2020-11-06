// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/Swap-O-Matic"})


def nodo = node

swap2(nodo)

def swap2(n){
    linearizar(n)
    swap1(n)
    desLinearizar(n)
    sort(n)
}

def linearizar(n){
    def q1 = n.children.size()
    n.children.each{ n1 ->
        def q = n1.children.size()
        for (def i = 1; i < q; i++) {
            node.appendChild(n1)
        }
        for (def i = q - 1; i>0; i--){
            n1.children[i].moveTo(n.children[i+q1-1])
        }
        q1 += q - 1
    }
}

def swap1(n){
    n.children.each{n1 ->
        def n2 = n1.children[0]
        def hijos =[] + n2.children
        n2.moveTo(n)
        n1.moveTo(n2)
        hijos.each{
            it.moveTo(n1)
        }
    }
}

def sort(n){
    def sorted = new ArrayList(n.children).sort{ it.text }
    sorted.eachWithIndex { it, i ->
        it.moveTo(n, i)
    }
}

def desLinearizar(n){
    def i = 0
    while (i < n.children.size()) {
        def nHijo = n.children[i]
        def iguales = n.children.findAll{it.plainText == nHijo.plainText} - nHijo
        iguales.each{ig->
            ig.children.each{it.moveTo(nHijo)}
            ig.delete()
        }
        i++
    }
}