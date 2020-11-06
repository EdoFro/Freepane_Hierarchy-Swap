<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node LOCALIZED_TEXT="new_mindmap" FOLDED="false" ID="ID_1461037449" CREATED="1602169674625" MODIFIED="1602169674625" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" FORMAT="#,##0">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
<edge COLOR="#ff0000"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.details"/>
<stylenode LOCALIZED_TEXT="defaultstyle.attributes">
<font SIZE="9"/>
</stylenode>
<stylenode LOCALIZED_TEXT="defaultstyle.note" COLOR="#000000" BACKGROUND_COLOR="#ffffff" TEXT_ALIGN="LEFT"/>
<stylenode LOCALIZED_TEXT="defaultstyle.floating">
<edge STYLE="hide_edge"/>
<cloud COLOR="#f0f0f0" SHAPE="ROUND_RECT"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.user-defined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="styles.topic" COLOR="#18898b" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subtopic" COLOR="#cc3300" STYLE="fork">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.subsubtopic" COLOR="#669900">
<font NAME="Liberation Sans" SIZE="10" BOLD="true"/>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.important">
<icon BUILTIN="yes"/>
</stylenode>
</stylenode>
<stylenode LOCALIZED_TEXT="styles.AutomaticLayout" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="AutomaticLayout.level.root" COLOR="#000000" STYLE="oval" SHAPE_HORIZONTAL_MARGIN="10.0 pt" SHAPE_VERTICAL_MARGIN="10.0 pt">
<font SIZE="18"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,1" COLOR="#0033ff">
<font SIZE="16"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,2" COLOR="#00b439">
<font SIZE="14"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,3" COLOR="#990000">
<font SIZE="12"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,4" COLOR="#111111">
<font SIZE="10"/>
</stylenode>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,5"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,6"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,7"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,8"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,9"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,10"/>
<stylenode LOCALIZED_TEXT="AutomaticLayout.level,11"/>
</stylenode>
</stylenode>
</map_styles>
</hook>
<hook NAME="AutomaticEdgeColor" COUNTER="3" RULE="ON_BRANCH_CREATION"/>
<node TEXT="script.groovy" POSITION="right" ID="ID_1873307564" CREATED="1602248227641" MODIFIED="1602254349133" FORMAT="#,##0">
<edge COLOR="#ff0000"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      .groovy
    </p>
  </body>
</html>
</richcontent>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      
    </p>
    <p>
      def fieldsNode = node
    </p>
    <p>
      
    </p>
    <p>
      nAttGroupBy = 'groupBy'
    </p>
    <p>
      nAttSortBy = 'sortBy'
    </p>
    <p>
      
    </p>
    <p>
      def baseLevel=fieldsNode.getNodeLevel(true)
    </p>
    <p>
      def k = fieldsNode.parent.getChildPosition(fieldsNode)
    </p>
    <p>
      def baseNode =fieldsNode.parent.children[ k + 1 ]
    </p>
    <p>
      
    </p>
    <p>
      if ( baseNode.find{true}.size() &gt; 100 ) { baseNode.folded = true }
    </p>
    <p>
      
    </p>
    <p>
      def attGroupBy = fieldsNode[nAttGroupBy]?:&quot;&quot;
    </p>
    <p>
      def attSortBy = fieldsNode[nAttSortBy]?:attGroupBy
    </p>
    <p>
      
    </p>
    <p>
      groupByClsre = groupCriterio(attGroupBy)
    </p>
    <p>
      sortByClsre = sortCriterio(attSortBy)
    </p>
    <p>
      
    </p>
    <p>
      fieldsNode.children.eachWithIndex{fieldNode, i -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def j=0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;while ( i + 1 &lt; fieldNode.details.to.num0 &amp;&amp; j&lt;5 ) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def prevLevel = fieldNode.details.to.num0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def inMapLevel = baseLevel + prevLevel - 2
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def thatLevelNodes = baseNode.find{it.getNodeLevel(true)==inMapLevel}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;thatLevelNodes.each{ applySwap(it,attGroupBy,attSortBy) }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def fallingFieldNode = fieldsNode.children.find{it.details.to.num0 == prevLevel - 1}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fieldNode.details = prevLevel - 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;fallingFieldNode.details = prevLevel
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;j++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;fieldNode.details = i + 1
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      // region: methods
    </p>
    <p>
      
    </p>
    <p>
      Closure groupCriterio(t){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (t.toUpperCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['TEXT',&quot;&quot;]:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, b, e -&gt; a.plainText == b.plainText}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'DETAILS':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, b, e -&gt; a.details.to.plain == b.details.to.plain}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, b, e -&gt; a[e] == b[e] }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      Closure sortCriterio(t){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;switch (t.toUpperCase()){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case ['TEXT',&quot;&quot;]:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, e&nbsp;&nbsp;-&gt; a.plainText}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;&nbsp;'TEXTNUM':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, e&nbsp;&nbsp;-&gt; a.to.num0 * -1}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case 'DETAILS':
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, e -&gt; a.details.to.plain}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;default:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return {a, e -&gt; a[e]?a[e].isNumber()?a[e].to.num0 * -1:a[e].toString():&quot;&quot;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def applySwap(n,t,s){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;toUngroup(n)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;toSwap(n)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;toGroup(n,t.toString())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sortChilds(n,s.toString())
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.children.each{sortChilds(it,s.toString())}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def toUngroup(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def q1 = n.children.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.children.each{ n1 -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def q = n1.children.size()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (def i = 1; i &lt; q; i++) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n.appendChild(n1)//.folded = true
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (def i = q - 1; i&gt;0; i--){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n1.children[i].moveTo(n.children[i+q1-1])
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;q1 += q - 1
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def toSwap(n){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;n.children.each{n1 -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def n2 = n1.children[0]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def childs =[] + n2.children
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n2.moveTo(n)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;n1.moveTo(n2)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;childs.each{
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it.moveTo(n1)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def toGroup(n,t){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def i = 0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;while (i &lt; n.children.size()) {
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def childNode_i = n.children[i]
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;def alikeNodes = n.children.findAll{m -&gt; groupByClsre(m,childNode_i,t)} - childNode_i
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alikeNodes.each{ig-&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ig.children.each{it.moveTo(childNode_i)}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ig.delete()
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;i++
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      def sortChilds(n, t){
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;def sorted = new ArrayList(n.children).sort{ it -&gt; sortByClsre(it, t) }
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;sorted.eachWithIndex { it, i -&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;it.moveTo(n, i)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;}
    </p>
    <p>
      }
    </p>
    <p>
      // end&nbsp;
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Campos" POSITION="right" ID="ID_1916348881" CREATED="1602171297410" MODIFIED="1602177286388" FORMAT="#,##0">
<edge COLOR="#ff0000"/>
<attribute NAME="groupBy" VALUE="details"/>
<attribute NAME="sortBy" VALUE="textNum"/>
<node TEXT="tipo trigo" ID="ID_234418811" CREATED="1602171346257" MODIFIED="1604623527903"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      1
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="centro" ID="ID_235077803" CREATED="1602171346252" MODIFIED="1602250879081"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="clase (norma chilena)" ID="ID_1650868731" CREATED="1602171346259" MODIFIED="1602250877400"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      3
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Ejercicio" ID="ID_1069374863" CREATED="1602171346252" MODIFIED="1602250871697"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      4
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="Variedad" ID="ID_961271388" CREATED="1602171346256" MODIFIED="1602250858737"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      5
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" POSITION="right" ID="ID_270804043" CREATED="1602169314197" MODIFIED="1602249865412">
<attribute NAME="script1" VALUE="def nodos=new ArrayList(node.find{it.leaf})&#xd;&#xa;//c.select(nodos)&#xd;&#xa;&#xd;&#xa;nodos.each{&#xd;&#xa;    def s = it.text&#xd;&#xa;    def i = s.lastIndexOf(&apos; &apos;)&#xd;&#xa;    def texto = (i&gt;=0?s.substring(0,i):s).trim()&#xd;&#xa;    def valor = (i&gt;=0?s.substring(i):0).trim()&#xd;&#xa;    it.text = texto&#xd;&#xa;    it.createChild(valor)&#xd;&#xa;}&#xd;&#xa;/*&#xd;&#xa;ui.informationMessage(&quot;pausa&quot;)&#xd;&#xa;&#xd;&#xa;c.select(node)&#xd;&#xa;*/&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;"/>
<attribute NAME="script2" VALUE="def nodos=new ArrayList(node.find{!it.leaf})&#xd;&#xa;&#xd;&#xa;nodos.each{&#xd;&#xa;    it.details=it.text&#xd;&#xa;}&#xd;&#xa;"/>
<attribute NAME="script3" VALUE="def nodos=new ArrayList(node.find{!it.leaf})&#xd;&#xa;&#xd;&#xa;nodos.each{&#xd;&#xa;    it.text = &apos;=children.sum(0){it.to.num0}&apos;   &#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;"/>
<attribute NAME="script4" VALUE="&#xd;&#xa;def nodos=new ArrayList(node.find{!it.leaf})&#xd;&#xa;&#xd;&#xa;// c.select(nodos)&#xd;&#xa;// ui.informationMessage(&quot;pausa&quot;)&#xd;&#xa;// c.select(node)&#xd;&#xa;&#xd;&#xa;nodos.each{&#xd;&#xa;    it.text = it.details&#xd;&#xa;}&#xd;&#xa;node.text = node.details"/>
<attribute NAME="script5" VALUE="def nodos = node.findAll()&#xa;nodos*.folded=true"/>
<richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      prueba trayendo desde excel
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_264407180" CREATED="1602173889505" MODIFIED="1602249444834"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Sub estandar
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1196943551" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      1000
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1392420916" CREATED="1602173889533" MODIFIED="1602249444986"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Sub
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_805807454" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2020
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1460939763" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Tobak
    </p>
  </body>
</html>
</richcontent>
<node TEXT="32760" OBJECT="java.lang.Integer|32760" ID="ID_1217434856" CREATED="1602173965315" MODIFIED="1602173965315"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_115648428" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Fue
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1840085232" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2019
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_764569984" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Instinct
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37860" OBJECT="java.lang.Integer|37860" ID="ID_982938922" CREATED="1602173965210" MODIFIED="1602173965211"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_555899921" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Int
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_876785227" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2019
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_873213202" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Galant
    </p>
  </body>
</html>
</richcontent>
<node TEXT="20730" OBJECT="java.lang.Integer|20730" ID="ID_573450412" CREATED="1602173965204" MODIFIED="1602173965204"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1602189881" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Instinct
    </p>
  </body>
</html>
</richcontent>
<node TEXT="39010" OBJECT="java.lang.Integer|39010" ID="ID_1165919461" CREATED="1602173965211" MODIFIED="1602173965211"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_740352483" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Sua
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_934252877" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2019
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1094217136" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Tobak
    </p>
  </body>
</html>
</richcontent>
<node TEXT="15140" OBJECT="java.lang.Integer|15140" ID="ID_1097852224" CREATED="1602173965241" MODIFIED="1602173965241"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1986857853" CREATED="1602173889505" MODIFIED="1602249444242"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Nordkap
    </p>
  </body>
</html>
</richcontent>
<node TEXT="19510" OBJECT="java.lang.Integer|19510" ID="ID_1128220427" CREATED="1602173965222" MODIFIED="1602173965222"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1871229202" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Instinct
    </p>
  </body>
</html>
</richcontent>
<node TEXT="33030" OBJECT="java.lang.Integer|33030" ID="ID_1012774693" CREATED="1602173965212" MODIFIED="1602173965212"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1481408009" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Galant
    </p>
  </body>
</html>
</richcontent>
<node TEXT="89570" OBJECT="java.lang.Integer|89570" ID="ID_960004929" CREATED="1602173965204" MODIFIED="1602173965204"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1900084878" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2020
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1249422643" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo No Identificable
    </p>
  </body>
</html>
</richcontent>
<node TEXT="30900" OBJECT="java.lang.Integer|30900" ID="ID_1893396046" CREATED="1602173965307" MODIFIED="1602173965307"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_713434788" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Rocky
    </p>
  </body>
</html>
</richcontent>
<node TEXT="229000" OBJECT="java.lang.Integer|229000" ID="ID_1261985506" CREATED="1602173965313" MODIFIED="1602173965313"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_179147625" CREATED="1602173889509" MODIFIED="1602249443445"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      4000
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1866292834" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Int
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_948494681" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2020
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_954480290" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Kiron
    </p>
  </body>
</html>
</richcontent>
<node TEXT="107670" OBJECT="java.lang.Integer|107670" ID="ID_1192449690" CREATED="1602173965341" MODIFIED="1602173965341"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_232379778" CREATED="1602173889533" MODIFIED="1602249444986"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Sub
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_706676127" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2019
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1654672261" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Tobak
    </p>
  </body>
</html>
</richcontent>
<node TEXT="56310" OBJECT="java.lang.Integer|56310" ID="ID_388607523" CREATED="1602173965290" MODIFIED="1602173965290"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_268057900" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2020
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1632831581" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Patras
    </p>
  </body>
</html>
</richcontent>
<node TEXT="60350" OBJECT="java.lang.Integer|60350" ID="ID_935616442" CREATED="1602173965345" MODIFIED="1602173965345"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_978018951" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Tobak
    </p>
  </body>
</html>
</richcontent>
<node TEXT="85340" OBJECT="java.lang.Integer|85340" ID="ID_1649465710" CREATED="1602173965347" MODIFIED="1602173965347"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1700383817" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Sua
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1601988343" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2019
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1743381076" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo INTRÉPIDO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="195890" OBJECT="java.lang.Integer|195890" ID="ID_1970609622" CREATED="1602173965282" MODIFIED="1602173965282"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1686609999" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      2020
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1957283640" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Bakán
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37780" OBJECT="java.lang.Integer|37780" ID="ID_1622576265" CREATED="1602173965336" MODIFIED="1602173965337"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1080829226" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Tobak
    </p>
  </body>
</html>
</richcontent>
<node TEXT="62230" OBJECT="java.lang.Integer|62230" ID="ID_524256579" CREATED="1602173965346" MODIFIED="1602173965347"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_403947701" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Patras
    </p>
  </body>
</html>
</richcontent>
<node TEXT="132370" OBJECT="java.lang.Integer|132370" ID="ID_904176137" CREATED="1602173965344" MODIFIED="1602173965345"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1832437404" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Galant
    </p>
  </body>
</html>
</richcontent>
<node TEXT="306260" OBJECT="java.lang.Integer|306260" ID="ID_244306065" CREATED="1602173965339" MODIFIED="1602173965339"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1155597055" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Kiron
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1093380" OBJECT="java.lang.Integer|1093380" ID="ID_652645303" CREATED="1602173965341" MODIFIED="1602173965341"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
