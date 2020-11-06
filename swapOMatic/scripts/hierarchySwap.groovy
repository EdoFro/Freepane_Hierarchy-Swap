// @ExecutionModes({ON_SINGLE_NODE="/main_menu/ScriptsEdo/Swap-O-Matic"})


nAttGroupBy = 'groupBy'
nAttSortBy = 'sortBy'

def fieldsNode = getFieldsNode(node, nAttGroupBy)

c.statusInfo = fieldsNode?"Hierarchy-Swap applied: (using parameters defined in '$fieldsNode')":"Simple Hierarchy-Swap applied"

if(!fieldsNode){
    // ui.informationMessage("aplicando swap simple")
    groupByClsre = groupCriterio('TEXT')
    sortByClsre = sortCriterio('TEXT')
    def nodos = c.selecteds
    nodos.each{applySwap(it,'TEXT','TEXT')}
} else {
    // ui.informationMessage("aplicando swap complejo")
    def baseLevel=fieldsNode.getNodeLevel(true)
    def k = getChildPos(fieldsNode)
    def baseNode =fieldsNode.parent.children[ k + 1 ]

    if ( baseNode.find{true}.size() > 100 ) { baseNode.folded = true }

    def attGroupBy = fieldsNode[nAttGroupBy]?:""
    def attSortBy = fieldsNode[nAttSortBy]?:attGroupBy
    groupByClsre = groupCriterio(attGroupBy)
    sortByClsre = sortCriterio(attSortBy)

    fieldsNode.children.eachWithIndex{fieldNode, i ->
        def j=0
        while ( i + 1 < fieldNode.details.to.num0 && j<5 ) {
            def prevLevel = fieldNode.details.to.num0
            def inMapLevel = baseLevel + prevLevel - 2
            def thatLevelNodes = baseNode.find{it.getNodeLevel(true)==inMapLevel}
            thatLevelNodes.each{ applySwap(it,attGroupBy,attSortBy) }
            def fallingFieldNode = fieldsNode.children.find{it.details.to.num0 == prevLevel - 1}
            fieldNode.details = prevLevel - 1
            fallingFieldNode.details = prevLevel
            j++
        }
        fieldNode.details = i + 1
    }
}

// region: Closures

Closure groupCriterio(t){
    switch (t.toUpperCase()){
        case ['TEXT',""]:
            return {a, b, e -> a.plainText == b.plainText}
            break
        case 'DETAILS':
            return {a, b, e -> a.details.to.plain == b.details.to.plain}
            break
        default:
            return {a, b, e -> a[e] == b[e] }
            break
    }
}

Closure sortCriterio(t){
    switch (t.toUpperCase()){
        case ['TEXT',""]:
            return {a, e  -> a.plainText}
            break
        case  'TEXTNUM':
            return {a, e  -> a.to.num0 * -1}
            break
        case 'DETAILS':
            return {a, e -> a.details.to.plain}
            break
        default:
            return {a, e -> a[e]?a[e].isNumber()?a[e].to.num0 * -1:a[e].toString():""}
            break
    }
}
// end

// region: Methods

def applySwap(n,t,s){
    toUngroup(n)
    toSwap(n)
    toGroup(n,t.toString())
    sortChilds(n,s.toString())
    n.children.each{sortChilds(it,s.toString())}
}

def toUngroup(n){
    def q1 = n.children.size()
    n.children.each{ n1 ->
        def q = n1.children.size()
        for (def i = 1; i < q; i++) {
            n.appendChild(n1)//.folded = true
        }
        for (def i = q - 1; i>0; i--){
            n1.children[i].moveTo(n.children[i+q1-1])
        }
        q1 += q - 1
    }
}

def toSwap(n){
    n.children.each{n1 ->
        def n2 = n1.children[0]
        def childs =[] + n2.children
        n2.moveTo(n)
        n1.moveTo(n2)
        childs.each{
            it.moveTo(n1)
        }
    }
}

def toGroup(n,t){
    def i = 0
    while (i < n.children.size()) {
        def childNode_i = n.children[i]
        def alikeNodes = n.children.findAll{m -> groupByClsre(m,childNode_i,t)} - childNode_i
        alikeNodes.each{ig->
            ig.children.each{it.moveTo(childNode_i)}
            ig.delete()
        }
        i++
    }
}

def sortChilds(n, t){
    def sorted = new ArrayList(n.children).sort{ it -> sortByClsre(it, t) }
    sorted.eachWithIndex { it, i ->
        it.moveTo(n, i)
    }
}

def getFieldsNode(n, attr){
    def fNode = n.pathToRoot.find{it.attributes.containsKey(attr)}?:getFieldsNode2(n, attr)
    return fNode
}

def getFieldsNode2(n, attr){
    def nodos = n.pathToRoot.drop(1).reverse()
    
    def baseNodeX = nodos.find{m ->
        def i = getChildPos(m);
        i>0 && m.parent.children[ i - 1 ].attributes.containsKey(attr)
    }
    return baseNodeX?baseNodeX.parent.children[getChildPos(baseNodeX)-1]:null
}

def getChildPos(n){
    return n.parent.getChildPosition(n)
}

// end