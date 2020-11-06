nAttGroupBy = 'groupBy'
nAttSortBy = 'sortBy'


def fieldsNode = node
def k = fieldsNode.parent.getChildPosition(fieldsNode)
def baseNode =fieldsNode.parent.children[ k + 1 ]


def baseLevel=fieldsNode.getNodeLevel(true)
def cantNiveles = fieldsNode.children.size()

if ( cantNiveles >= 2 ) {
    def nodos= baseNode.find{it.getNodeLevel(true)<= baseLevel + cantNiveles }
    def att = nodos.attributes.names.flatten().unique()

    def gCases = ['Text','Details'] + att
    def sortCases = ['Text','TextNum','Details']  + att

    def msgGroupBy = "\n(actual: ${fieldsNode[nAttGroupBy]?:' - '})"
    def msgSortBy = "\n(actual: ${fieldsNode[nAttSortBy]?:' - '})"

    def groupBy = getUserChoice(gCases,"Select grouping criteria:" + msgGroupBy, 0)
    if (groupBy){
        fieldsNode[nAttGroupBy] = groupBy
        def sortBy = getUserChoice(sortCases,"Select sorting criteria:" + msgSortBy, 0)
        if (sortBy){
            fieldsNode[nAttSortBy] = sortBy
            fieldsNode.children.eachWithIndex{it, i ->
                it.details = (i+1).toString()
            }
        } else {
            fieldsNode[nAttGroupBy] = null
            c.statusInfo = " --- canceled ---"
        }
    } else {
        c.statusInfo = " --- canceled ---"
    }
} else {
    c.statusInfo = " --- canceled (less than 2 fields defined) ---"
}


//----------Methods-----------------------
def getUserChoice(alternativas, mensaje, defaultOption){
    def texto = new StringBuilder()
    texto << mensaje << "\n\n"
    alternativas.eachWithIndex{gC, i ->
        texto <<  i << " - " << gC << '\n'
    }
    texto << '\n\n'

    def cancel = false
    def respOK = false
    def response
    while (!cancel && !respOK){
        response = ui.showInputDialog(node.delegate, texto.toString(), defaultOption.toString())
        cancel = !response?true:false
        respOK = !cancel?response.isNumber() && response.toDouble()>=0 && response.toDouble()< alternativas.size()?true:false:false
    }
    response?alternativas[response.toDouble().toInteger()]:null
}