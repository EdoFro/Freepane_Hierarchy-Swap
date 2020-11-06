<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node LOCALIZED_TEXT="new_mindmap" FOLDED="false" ID="ID_1461037449" CREATED="1602169674625" MODIFIED="1602169674625" STYLE="oval">
<font SIZE="18"/>
<hook NAME="MapStyle">
    <properties fit_to_viewport="false" show_icon_for_attributes="true" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

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
<node TEXT="tipo trigo (norma siksa)" ID="ID_234418811" CREATED="1602171346257" MODIFIED="1602250879075"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_238673755" CREATED="1602173889505" MODIFIED="1602249444310"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo S 20 Fuerte
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1318411671" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_983642410" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_450976116" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1843346491" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="15940" OBJECT="java.lang.Integer|15940" ID="ID_416341871" CREATED="1602173965220" MODIFIED="1602173965220"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_918771194" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1320498714" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1501392781" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="264590" OBJECT="java.lang.Integer|264590" ID="ID_122818113" CREATED="1602173965219" MODIFIED="1602173965219"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1346859725" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1196711115" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1942680905" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="316000" OBJECT="java.lang.Integer|316000" ID="ID_106079866" CREATED="1602173965219" MODIFIED="1602173965220"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1487216406" CREATED="1602173889505" MODIFIED="1602249444330"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo S 20 Intermedio
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1511102776" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_166210245" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_618559021" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_511637593" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="46020" OBJECT="java.lang.Integer|46020" ID="ID_1900440642" CREATED="1602173965220" MODIFIED="1602173965220"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_10083815" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1950859346" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_559013370" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="70240" OBJECT="java.lang.Integer|70240" ID="ID_1200338301" CREATED="1602173965221" MODIFIED="1602173965221"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_836907090" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_807417028" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1855897377" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="877990" OBJECT="java.lang.Integer|877990" ID="ID_700918496" CREATED="1602173965220" MODIFIED="1602173965221"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1282039794" CREATED="1602173889503" MODIFIED="1602249445227"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Brotado
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1799147172" CREATED="1602173889509" MODIFIED="1602249443445"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1174068957" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_981529994" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1242342270" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="173670" OBJECT="java.lang.Integer|173670" ID="ID_439953452" CREATED="1602173965342" MODIFIED="1602173965343"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_90233572" CREATED="1602173889529" MODIFIED="1602249443398"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      3000
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1915000130" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_149597181" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_168813550" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="10280" OBJECT="java.lang.Integer|10280" ID="ID_32508841" CREATED="1602173965243" MODIFIED="1602173965244"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1063721626" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_534581986" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_890686049" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="15350" OBJECT="java.lang.Integer|15350" ID="ID_1474548298" CREATED="1602173965262" MODIFIED="1602173965262"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1052177521" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="33340" OBJECT="java.lang.Integer|33340" ID="ID_661619084" CREATED="1602173965268" MODIFIED="1602173965268"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1313820775" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="62970" OBJECT="java.lang.Integer|62970" ID="ID_660138049" CREATED="1602173965257" MODIFIED="1602173965257"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_474840881" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_65969902" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_728866148" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="105580" OBJECT="java.lang.Integer|105580" ID="ID_1899250236" CREATED="1602173965243" MODIFIED="1602173965243"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1918311862" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="116890" OBJECT="java.lang.Integer|116890" ID="ID_1363650130" CREATED="1602173965250" MODIFIED="1602173965250"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_432386826" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1183630377" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1832808697" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_185483061" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="29890" OBJECT="java.lang.Integer|29890" ID="ID_676431091" CREATED="1602173965311" MODIFIED="1602173965311"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1967460189" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="32510" OBJECT="java.lang.Integer|32510" ID="ID_207099192" CREATED="1602173965295" MODIFIED="1602173965295"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_596420486" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_675620491" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="19580" OBJECT="java.lang.Integer|19580" ID="ID_1078735083" CREATED="1602173965229" MODIFIED="1602173965229"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1427611497" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="20250" OBJECT="java.lang.Integer|20250" ID="ID_212547123" CREATED="1602173965231" MODIFIED="1602173965231"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_423126154" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="31220" OBJECT="java.lang.Integer|31220" ID="ID_605902303" CREATED="1602173965234" MODIFIED="1602173965234"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1726726086" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="67350" OBJECT="java.lang.Integer|67350" ID="ID_777569836" CREATED="1602173965190" MODIFIED="1602173965191"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1708464709" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_856546092" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1763008571" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="13110" OBJECT="java.lang.Integer|13110" ID="ID_1626508961" CREATED="1602173965234" MODIFIED="1602173965234"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1124289726" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="18670" OBJECT="java.lang.Integer|18670" ID="ID_517570263" CREATED="1602173965214" MODIFIED="1602173965214"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_40607622" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="24000" OBJECT="java.lang.Integer|24000" ID="ID_25727991" CREATED="1602173965196" MODIFIED="1602173965196"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_990057130" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="219720" OBJECT="java.lang.Integer|219720" ID="ID_1014680283" CREATED="1602173965229" MODIFIED="1602173965229"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1936476507" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_45671065" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_425142785" CREATED="1602173889503" MODIFIED="1602249443526"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXI
    </p>
  </body>
</html>
</richcontent>
<node TEXT="21530" OBJECT="java.lang.Integer|21530" ID="ID_1920992054" CREATED="1602173965187" MODIFIED="1602173965187"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_875330812" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="21540" OBJECT="java.lang.Integer|21540" ID="ID_1190392704" CREATED="1602173965198" MODIFIED="1602173965199"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_604629110" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="35180" OBJECT="java.lang.Integer|35180" ID="ID_78494925" CREATED="1602173965188" MODIFIED="1602173965189"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_456548527" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="38770" OBJECT="java.lang.Integer|38770" ID="ID_1138578272" CREATED="1602173965195" MODIFIED="1602173965195"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_456982876" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="54070" OBJECT="java.lang.Integer|54070" ID="ID_883305963" CREATED="1602173965233" MODIFIED="1602173965233"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_70035184" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="154700" OBJECT="java.lang.Integer|154700" ID="ID_1774280379" CREATED="1602173965190" MODIFIED="1602173965190"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1844453355" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="197560" OBJECT="java.lang.Integer|197560" ID="ID_249248134" CREATED="1602173965231" MODIFIED="1602173965231"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_675711071" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="222460" OBJECT="java.lang.Integer|222460" ID="ID_1052161392" CREATED="1602173965228" MODIFIED="1602173965228"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1985521580" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="274740" OBJECT="java.lang.Integer|274740" ID="ID_973541868" CREATED="1602173965205" MODIFIED="1602173965205"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_264407180" CREATED="1602173889505" MODIFIED="1602249444834"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1196943551" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1392420916" CREATED="1602173889533" MODIFIED="1602249444986"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_805807454" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1460939763" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_115648428" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1840085232" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_555899921" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_876785227" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_873213202" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1094217136" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1986857853" CREATED="1602173889505" MODIFIED="1602249444242"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1871229202" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1481408009" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1249422643" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1866292834" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_948494681" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_232379778" CREATED="1602173889533" MODIFIED="1602249444986"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_706676127" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1654672261" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_268057900" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1632831581" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_978018951" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1743381076" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1957283640" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1080829226" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_403947701" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1832437404" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1064395229" CREATED="1602173889503" MODIFIED="1602249445397"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo CORRECTOR
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1340667142" CREATED="1602173889509" MODIFIED="1602249443445"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1333239914" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1278763280" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_183511131" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="31850" OBJECT="java.lang.Integer|31850" ID="ID_654488126" CREATED="1602173965285" MODIFIED="1602173965285"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1594989922" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="205120" OBJECT="java.lang.Integer|205120" ID="ID_350618218" CREATED="1602173965281" MODIFIED="1602173965281"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_222053772" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_879094136" CREATED="1602173889531" MODIFIED="1602249446001"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apostel
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37950" OBJECT="java.lang.Integer|37950" ID="ID_757959935" CREATED="1602173965335" MODIFIED="1602173965335"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1568890279" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="39610" OBJECT="java.lang.Integer|39610" ID="ID_602300123" CREATED="1602173965336" MODIFIED="1602173965336"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1884877908" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="145330" OBJECT="java.lang.Integer|145330" ID="ID_858825274" CREATED="1602173965340" MODIFIED="1602173965340"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_977768327" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="232380" OBJECT="java.lang.Integer|232380" ID="ID_469887787" CREATED="1602173965338" MODIFIED="1602173965339"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_993893279" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1513797710" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1984510557" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="35580" OBJECT="java.lang.Integer|35580" ID="ID_249135411" CREATED="1602173965281" MODIFIED="1602173965281"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1973658032" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="36120" OBJECT="java.lang.Integer|36120" ID="ID_1050599" CREATED="1602173965286" MODIFIED="1602173965286"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1470943028" CREATED="1602173889511" MODIFIED="1602249445338"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Lenox
    </p>
  </body>
</html>
</richcontent>
<node TEXT="160440" OBJECT="java.lang.Integer|160440" ID="ID_1169567699" CREATED="1602173965284" MODIFIED="1602173965284"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1405099228" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="164000" OBJECT="java.lang.Integer|164000" ID="ID_14188181" CREATED="1602173965280" MODIFIED="1602173965280"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_762502974" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="702860" OBJECT="java.lang.Integer|702860" ID="ID_1404794397" CREATED="1602173965274" MODIFIED="1602173965274"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1131573594" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1666571291" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="16490" OBJECT="java.lang.Integer|16490" ID="ID_544636661" CREATED="1602173965344" MODIFIED="1602173965344"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_78691930" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="35570" OBJECT="java.lang.Integer|35570" ID="ID_1040782630" CREATED="1602173965343" MODIFIED="1602173965343"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1926659694" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="38240" OBJECT="java.lang.Integer|38240" ID="ID_281022837" CREATED="1602173965339" MODIFIED="1602173965339"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1493617704" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="183030" OBJECT="java.lang.Integer|183030" ID="ID_481540461" CREATED="1602173965340" MODIFIED="1602173965340"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1809106411" CREATED="1602173889505" MODIFIED="1602249444242"><richcontent TYPE="DETAILS">

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
<node TEXT="329040" OBJECT="java.lang.Integer|329040" ID="ID_1848294850" CREATED="1602173965343" MODIFIED="1602173965343"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1475475811" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="1071900" OBJECT="java.lang.Integer|1071900" ID="ID_752307546" CREATED="1602173965336" MODIFIED="1602173965336"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1378600117" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1906619929" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_764160705" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="41590" OBJECT="java.lang.Integer|41590" ID="ID_1659311535" CREATED="1602173965339" MODIFIED="1602173965339"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_283457964" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="89310" OBJECT="java.lang.Integer|89310" ID="ID_1464389089" CREATED="1602173965343" MODIFIED="1602173965343"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1330935411" CREATED="1602173889505" MODIFIED="1602249444242"><richcontent TYPE="DETAILS">

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
<node TEXT="274410" OBJECT="java.lang.Integer|274410" ID="ID_1370580036" CREATED="1602173965343" MODIFIED="1602173965343"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_137046087" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="455580" OBJECT="java.lang.Integer|455580" ID="ID_1375731660" CREATED="1602173965338" MODIFIED="1602173965338"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_267331488" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="631810" OBJECT="java.lang.Integer|631810" ID="ID_786123191" CREATED="1602173965340" MODIFIED="1602173965340"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1059153646" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="839100" OBJECT="java.lang.Integer|839100" ID="ID_1719157322" CREATED="1602173965336" MODIFIED="1602173965336"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1371112032" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_804414932" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37030" OBJECT="java.lang.Integer|37030" ID="ID_893864888" CREATED="1602173965278" MODIFIED="1602173965278"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_63512822" CREATED="1602173889505" MODIFIED="1602249444242"><richcontent TYPE="DETAILS">

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
<node TEXT="40900" OBJECT="java.lang.Integer|40900" ID="ID_1983469913" CREATED="1602173965286" MODIFIED="1602173965286"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_598759131" CREATED="1602173889511" MODIFIED="1602249445338"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Lenox
    </p>
  </body>
</html>
</richcontent>
<node TEXT="58320" OBJECT="java.lang.Integer|58320" ID="ID_273653796" CREATED="1602173965284" MODIFIED="1602173965284"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1805631519" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="276090" OBJECT="java.lang.Integer|276090" ID="ID_1705575782" CREATED="1602173965274" MODIFIED="1602173965274"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_240373664" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="682740" OBJECT="java.lang.Integer|682740" ID="ID_1874216076" CREATED="1602173965280" MODIFIED="1602173965280"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_542577470" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="1496030" OBJECT="java.lang.Integer|1496030" ID="ID_1064895578" CREATED="1602173965281" MODIFIED="1602173965281"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_925663322" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_206928834" CREATED="1602173889533" MODIFIED="1602249444986"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1311894448" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_175865404" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="20430" OBJECT="java.lang.Integer|20430" ID="ID_1210288296" CREATED="1602173965300" MODIFIED="1602173965301"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_910359800" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37360" OBJECT="java.lang.Integer|37360" ID="ID_1009118142" CREATED="1602173965311" MODIFIED="1602173965311"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1714843889" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1640483180" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_44565722" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="21230" OBJECT="java.lang.Integer|21230" ID="ID_1746215955" CREATED="1602173965207" MODIFIED="1602173965207"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1954590910" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="75310" OBJECT="java.lang.Integer|75310" ID="ID_1730578202" CREATED="1602173965192" MODIFIED="1602173965192"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_371625205" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="122350" OBJECT="java.lang.Integer|122350" ID="ID_1469163484" CREATED="1602173965202" MODIFIED="1602173965202"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1339021326" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1130640346" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="12220" OBJECT="java.lang.Integer|12220" ID="ID_1118619969" CREATED="1602173965304" MODIFIED="1602173965305"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_548899695" CREATED="1602173889504" MODIFIED="1602249444492"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo GABRIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="20000" OBJECT="java.lang.Integer|20000" ID="ID_807846058" CREATED="1602173965296" MODIFIED="1602173965296"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_256477657" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="22380" OBJECT="java.lang.Integer|22380" ID="ID_1624326471" CREATED="1602173965300" MODIFIED="1602173965300"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1393992080" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="33670" OBJECT="java.lang.Integer|33670" ID="ID_706423779" CREATED="1602173965311" MODIFIED="1602173965312"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1218775233" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="143200" OBJECT="java.lang.Integer|143200" ID="ID_1706242865" CREATED="1602173965311" MODIFIED="1602173965311"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1217156581" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="318000" OBJECT="java.lang.Integer|318000" ID="ID_109661764" CREATED="1602173965291" MODIFIED="1602173965291"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1188868085" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="404620" OBJECT="java.lang.Integer|404620" ID="ID_1028863139" CREATED="1602173965299" MODIFIED="1602173965300"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_147568622" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="728650" OBJECT="java.lang.Integer|728650" ID="ID_498017815" CREATED="1602173965297" MODIFIED="1602173965297"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1686817248" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_89052340" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_485014383" CREATED="1602173889504" MODIFIED="1602249444492"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo GABRIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="17930" OBJECT="java.lang.Integer|17930" ID="ID_1687883959" CREATED="1602173965200" MODIFIED="1602173965200"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1170187286" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="20440" OBJECT="java.lang.Integer|20440" ID="ID_866640456" CREATED="1602173965230" MODIFIED="1602173965230"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_823193001" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="21280" OBJECT="java.lang.Integer|21280" ID="ID_163988550" CREATED="1602173965196" MODIFIED="1602173965196"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1971660688" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="72470" OBJECT="java.lang.Integer|72470" ID="ID_1918912839" CREATED="1602173965206" MODIFIED="1602173965207"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_390748413" CREATED="1602173889505" MODIFIED="1602249445392"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Puelche
    </p>
  </body>
</html>
</richcontent>
<node TEXT="110860" OBJECT="java.lang.Integer|110860" ID="ID_1826310365" CREATED="1602173965227" MODIFIED="1602173965227"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_43870842" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="229290" OBJECT="java.lang.Integer|229290" ID="ID_1638919717" CREATED="1602173965191" MODIFIED="1602173965192"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_489040201" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="828640" OBJECT="java.lang.Integer|828640" ID="ID_176580961" CREATED="1602173965201" MODIFIED="1602173965202"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1224443357" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1412133226" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="48660" OBJECT="java.lang.Integer|48660" ID="ID_1845287427" CREATED="1602173965304" MODIFIED="1602173965304"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_232335669" CREATED="1602173889504" MODIFIED="1602249444492"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo GABRIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="85780" OBJECT="java.lang.Integer|85780" ID="ID_131486730" CREATED="1602173965296" MODIFIED="1602173965296"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_81326970" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Syllon
    </p>
  </body>
</html>
</richcontent>
<node TEXT="183910" OBJECT="java.lang.Integer|183910" ID="ID_970789377" CREATED="1602173965313" MODIFIED="1602173965313"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_803247354" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="191920" OBJECT="java.lang.Integer|191920" ID="ID_682160133" CREATED="1602173965299" MODIFIED="1602173965299"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1771154107" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="358870" OBJECT="java.lang.Integer|358870" ID="ID_1189999224" CREATED="1602173965310" MODIFIED="1602173965311"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_667394190" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="930860" OBJECT="java.lang.Integer|930860" ID="ID_1850895823" CREATED="1602173965297" MODIFIED="1602173965297"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_199981658" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="2015120" OBJECT="java.lang.Integer|2015120" ID="ID_798193325" CREATED="1602173965291" MODIFIED="1602173965291"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_158255687" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_502268398" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_380885604" CREATED="1602173889504" MODIFIED="1602249444492"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo GABRIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="26100" OBJECT="java.lang.Integer|26100" ID="ID_280224383" CREATED="1602173965296" MODIFIED="1602173965296"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1527322699" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="36930" OBJECT="java.lang.Integer|36930" ID="ID_957909571" CREATED="1602173965299" MODIFIED="1602173965299"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_136234769" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="90620" OBJECT="java.lang.Integer|90620" ID="ID_65447441" CREATED="1602173965296" MODIFIED="1602173965297"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_399018882" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="132630" OBJECT="java.lang.Integer|132630" ID="ID_496099045" CREATED="1602173965310" MODIFIED="1602173965310"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1451648031" CREATED="1602173889503" MODIFIED="1602249443994"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo&nbsp;&nbsp;Innovo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="258400" OBJECT="java.lang.Integer|258400" ID="ID_236141937" CREATED="1602173965290" MODIFIED="1602173965291"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1741189325" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="2615520" OBJECT="java.lang.Integer|2615520" ID="ID_156429637" CREATED="1602173965291" MODIFIED="1602173965291"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1974230924" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1144076228" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="71060" OBJECT="java.lang.Integer|71060" ID="ID_313704240" CREATED="1602173965222" MODIFIED="1602173965222"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1258461766" CREATED="1602173889505" MODIFIED="1602249445392"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Puelche
    </p>
  </body>
</html>
</richcontent>
<node TEXT="92100" OBJECT="java.lang.Integer|92100" ID="ID_1649353993" CREATED="1602173965227" MODIFIED="1602173965227"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1579018321" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="94760" OBJECT="java.lang.Integer|94760" ID="ID_113209430" CREATED="1602173965189" MODIFIED="1602173965189"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_116528816" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="112930" OBJECT="java.lang.Integer|112930" ID="ID_1058840014" CREATED="1602173965206" MODIFIED="1602173965206"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1386847673" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="124430" OBJECT="java.lang.Integer|124430" ID="ID_1442874013" CREATED="1602173965201" MODIFIED="1602173965201"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_110685088" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="128070" OBJECT="java.lang.Integer|128070" ID="ID_601534259" CREATED="1602173965230" MODIFIED="1602173965230"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_216400878" CREATED="1602173889503" MODIFIED="1602249443994"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo&nbsp;&nbsp;Innovo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="251850" OBJECT="java.lang.Integer|251850" ID="ID_511761951" CREATED="1602173965188" MODIFIED="1602173965188"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_271931913" CREATED="1602173889504" MODIFIED="1602249444492"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo GABRIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="269820" OBJECT="java.lang.Integer|269820" ID="ID_1888319390" CREATED="1602173965200" MODIFIED="1602173965200"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_22111520" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="3075700" OBJECT="java.lang.Integer|3075700" ID="ID_681022490" CREATED="1602173965191" MODIFIED="1602173965191"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_328944421" CREATED="1602173889529" MODIFIED="1602249443398"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      3000
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1635904971" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_227646938" CREATED="1602173889533" MODIFIED="1602249443378"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (en blanco)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1915435466" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="20070" OBJECT="java.lang.Integer|20070" ID="ID_1095052206" CREATED="1602173965348" MODIFIED="1602173965348"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_830211995" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1602300589" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="33080" OBJECT="java.lang.Integer|33080" ID="ID_332786899" CREATED="1602173965245" MODIFIED="1602173965245"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_403774628" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1511527229" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="65240" OBJECT="java.lang.Integer|65240" ID="ID_477112952" CREATED="1602173965333" MODIFIED="1602173965333"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_708096320" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="258550" OBJECT="java.lang.Integer|258550" ID="ID_1722957381" CREATED="1602173965316" MODIFIED="1602173965317"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1185676941" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1759109099" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_548949621" CREATED="1602173889511" MODIFIED="1602249445338"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Lenox
    </p>
  </body>
</html>
</richcontent>
<node TEXT="32490" OBJECT="java.lang.Integer|32490" ID="ID_286175497" CREATED="1602173965255" MODIFIED="1602173965256"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_801528030" CREATED="1602173889505" MODIFIED="1602249445392"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Puelche
    </p>
  </body>
</html>
</richcontent>
<node TEXT="33880" OBJECT="java.lang.Integer|33880" ID="ID_201899750" CREATED="1602173965267" MODIFIED="1602173965267"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1404382608" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="36890" OBJECT="java.lang.Integer|36890" ID="ID_1398327760" CREATED="1602173965252" MODIFIED="1602173965252"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_988523762" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="951140" OBJECT="java.lang.Integer|951140" ID="ID_1355033150" CREATED="1602173965245" MODIFIED="1602173965245"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1936502934" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1397678948" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="31110" OBJECT="java.lang.Integer|31110" ID="ID_1865702448" CREATED="1602173965326" MODIFIED="1602173965327"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1680847152" CREATED="1602173889505" MODIFIED="1602249444242"><richcontent TYPE="DETAILS">

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
<node TEXT="32450" OBJECT="java.lang.Integer|32450" ID="ID_106745232" CREATED="1602173965328" MODIFIED="1602173965328"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_882270284" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="32520" OBJECT="java.lang.Integer|32520" ID="ID_1673326335" CREATED="1602173965329" MODIFIED="1602173965329"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1895690565" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="34960" OBJECT="java.lang.Integer|34960" ID="ID_700923485" CREATED="1602173965321" MODIFIED="1602173965321"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1515906803" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="117420" OBJECT="java.lang.Integer|117420" ID="ID_1588873870" CREATED="1602173965324" MODIFIED="1602173965324"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_112109600" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="444070" OBJECT="java.lang.Integer|444070" ID="ID_1129214206" CREATED="1602173965323" MODIFIED="1602173965323"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_926587982" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="551460" OBJECT="java.lang.Integer|551460" ID="ID_1512221376" CREATED="1602173965332" MODIFIED="1602173965333"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_994432436" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="1275380" OBJECT="java.lang.Integer|1275380" ID="ID_1236449220" CREATED="1602173965316" MODIFIED="1602173965316"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1253815885" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_434365640" CREATED="1602173889533" MODIFIED="1602249443378"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (en blanco)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_711876784" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="594530" OBJECT="java.lang.Integer|594530" ID="ID_1144086528" CREATED="1602173965347" MODIFIED="1602173965347"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_973840395" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1833050717" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="17650" OBJECT="java.lang.Integer|17650" ID="ID_572350623" CREATED="1602173965250" MODIFIED="1602173965250"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1874299405" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="31670" OBJECT="java.lang.Integer|31670" ID="ID_1443841135" CREATED="1602173965263" MODIFIED="1602173965263"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_486881655" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37110" OBJECT="java.lang.Integer|37110" ID="ID_1366595980" CREATED="1602173965242" MODIFIED="1602173965242"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1270719962" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="4438290" OBJECT="java.lang.Integer|4438290" ID="ID_763826349" CREATED="1602173965244" MODIFIED="1602173965244"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_69559150" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_423865553" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="117760" OBJECT="java.lang.Integer|117760" ID="ID_221483715" CREATED="1602173965315" MODIFIED="1602173965316"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1457816441" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="133130" OBJECT="java.lang.Integer|133130" ID="ID_216999560" CREATED="1602173965321" MODIFIED="1602173965321"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_548902646" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="512520" OBJECT="java.lang.Integer|512520" ID="ID_686912294" CREATED="1602173965326" MODIFIED="1602173965326"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1878045696" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1006980" OBJECT="java.lang.Integer|1006980" ID="ID_1162573002" CREATED="1602173965332" MODIFIED="1602173965332"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_930995461" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="4554040" OBJECT="java.lang.Integer|4554040" ID="ID_918175709" CREATED="1602173965316" MODIFIED="1602173965316"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1204940762" CREATED="1602173889504" MODIFIED="1602249445450"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Intermedio
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_914217589" CREATED="1602173889509" MODIFIED="1602249443445"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1374246474" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1539622731" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_92302930" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="33760" OBJECT="java.lang.Integer|33760" ID="ID_1091573125" CREATED="1602173965277" MODIFIED="1602173965277"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_574517712" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="36870" OBJECT="java.lang.Integer|36870" ID="ID_1860638235" CREATED="1602173965273" MODIFIED="1602173965273"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1053260086" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="68200" OBJECT="java.lang.Integer|68200" ID="ID_315632955" CREATED="1602173965288" MODIFIED="1602173965289"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_726619751" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="224820" OBJECT="java.lang.Integer|224820" ID="ID_1670973933" CREATED="1602173965285" MODIFIED="1602173965285"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1306866605" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_989296112" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="28860" OBJECT="java.lang.Integer|28860" ID="ID_349385669" CREATED="1602173965338" MODIFIED="1602173965338"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1039125689" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="920440" OBJECT="java.lang.Integer|920440" ID="ID_347274697" CREATED="1602173965342" MODIFIED="1602173965342"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_376297730" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1072512634" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1106616096" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="60430" OBJECT="java.lang.Integer|60430" ID="ID_1017364033" CREATED="1602173965346" MODIFIED="1602173965346"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_104061928" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1505250" OBJECT="java.lang.Integer|1505250" ID="ID_1783512430" CREATED="1602173965341" MODIFIED="1602173965342"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_248098167" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_788016407" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="18020" OBJECT="java.lang.Integer|18020" ID="ID_1798118227" CREATED="1602173965287" MODIFIED="1602173965287"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_787362103" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="38110" OBJECT="java.lang.Integer|38110" ID="ID_583257344" CREATED="1602173965275" MODIFIED="1602173965275"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_880545066" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="166260" OBJECT="java.lang.Integer|166260" ID="ID_1140805738" CREATED="1602173965288" MODIFIED="1602173965288"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_447446439" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1003430" OBJECT="java.lang.Integer|1003430" ID="ID_1858089359" CREATED="1602173965284" MODIFIED="1602173965284"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1597861112" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1063760" OBJECT="java.lang.Integer|1063760" ID="ID_960536266" CREATED="1602173965276" MODIFIED="1602173965277"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1980552730" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_754041654" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_625630568" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="34510" OBJECT="java.lang.Integer|34510" ID="ID_422002102" CREATED="1602173965341" MODIFIED="1602173965341"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1464412131" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="2874260" OBJECT="java.lang.Integer|2874260" ID="ID_852985571" CREATED="1602173965342" MODIFIED="1602173965342"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_977993960" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_160831422" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="36680" OBJECT="java.lang.Integer|36680" ID="ID_581092323" CREATED="1602173965287" MODIFIED="1602173965287"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1131178812" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="41060" OBJECT="java.lang.Integer|41060" ID="ID_694387118" CREATED="1602173965279" MODIFIED="1602173965279"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1877273755" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="67430" OBJECT="java.lang.Integer|67430" ID="ID_1456771433" CREATED="1602173965282" MODIFIED="1602173965282"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1027127071" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="70540" OBJECT="java.lang.Integer|70540" ID="ID_1071398264" CREATED="1602173965280" MODIFIED="1602173965281"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_370832587" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="72190" OBJECT="java.lang.Integer|72190" ID="ID_1283623259" CREATED="1602173965275" MODIFIED="1602173965275"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1864074806" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="200860" OBJECT="java.lang.Integer|200860" ID="ID_241103437" CREATED="1602173965283" MODIFIED="1602173965283"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1267489789" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="330390" OBJECT="java.lang.Integer|330390" ID="ID_890417990" CREATED="1602173965277" MODIFIED="1602173965277"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1893836034" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="506220" OBJECT="java.lang.Integer|506220" ID="ID_1936724144" CREATED="1602173965288" MODIFIED="1602173965288"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1608044353" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="635260" OBJECT="java.lang.Integer|635260" ID="ID_1563377310" CREATED="1602173965273" MODIFIED="1602173965273"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1663314399" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="3052790" OBJECT="java.lang.Integer|3052790" ID="ID_899988547" CREATED="1602173965284" MODIFIED="1602173965284"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_146804868" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_343316269" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_125847375" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_277353474" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="33030" OBJECT="java.lang.Integer|33030" ID="ID_45087866" CREATED="1602173965312" MODIFIED="1602173965312"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1969472434" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="46600" OBJECT="java.lang.Integer|46600" ID="ID_660711473" CREATED="1602173965303" MODIFIED="1602173965303"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_575620794" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_955577410" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="19170" OBJECT="java.lang.Integer|19170" ID="ID_748915862" CREATED="1602173965215" MODIFIED="1602173965216"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1443237131" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="161330" OBJECT="java.lang.Integer|161330" ID="ID_708571827" CREATED="1602173965236" MODIFIED="1602173965236"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_460195750" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_565284762" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1026930907" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="147680" OBJECT="java.lang.Integer|147680" ID="ID_1882542680" CREATED="1602173965306" MODIFIED="1602173965306"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_633154261" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="201290" OBJECT="java.lang.Integer|201290" ID="ID_743858249" CREATED="1602173965314" MODIFIED="1602173965314"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_796708071" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="290980" OBJECT="java.lang.Integer|290980" ID="ID_400600798" CREATED="1602173965309" MODIFIED="1602173965309"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_338885549" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1164380" OBJECT="java.lang.Integer|1164380" ID="ID_265622402" CREATED="1602173965302" MODIFIED="1602173965302"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1707968637" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_367193203" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="24170" OBJECT="java.lang.Integer|24170" ID="ID_385637036" CREATED="1602173965231" MODIFIED="1602173965231"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_52535312" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="167710" OBJECT="java.lang.Integer|167710" ID="ID_129820935" CREATED="1602173965232" MODIFIED="1602173965232"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_803394193" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="336560" OBJECT="java.lang.Integer|336560" ID="ID_1210162081" CREATED="1602173965224" MODIFIED="1602173965224"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_399269366" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="377160" OBJECT="java.lang.Integer|377160" ID="ID_1955501022" CREATED="1602173965235" MODIFIED="1602173965236"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_582294112" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1049470" OBJECT="java.lang.Integer|1049470" ID="ID_784606999" CREATED="1602173965197" MODIFIED="1602173965197"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_456938598" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1554550" OBJECT="java.lang.Integer|1554550" ID="ID_1373997543" CREATED="1602173965215" MODIFIED="1602173965215"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_255133791" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_761844250" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_435926877" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="36480" OBJECT="java.lang.Integer|36480" ID="ID_1766315296" CREATED="1602173965309" MODIFIED="1602173965309"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_472687042" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="40690" OBJECT="java.lang.Integer|40690" ID="ID_1156231434" CREATED="1602173965305" MODIFIED="1602173965305"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1283584502" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="85990" OBJECT="java.lang.Integer|85990" ID="ID_92263040" CREATED="1602173965298" MODIFIED="1602173965298"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1669177274" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="122720" OBJECT="java.lang.Integer|122720" ID="ID_251880933" CREATED="1602173965314" MODIFIED="1602173965314"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1203956079" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="123410" OBJECT="java.lang.Integer|123410" ID="ID_1412439726" CREATED="1602173965293" MODIFIED="1602173965293"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_923413608" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1076630" OBJECT="java.lang.Integer|1076630" ID="ID_956551131" CREATED="1602173965302" MODIFIED="1602173965302"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_803872250" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_677338279" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="23890" OBJECT="java.lang.Integer|23890" ID="ID_122768953" CREATED="1602173965230" MODIFIED="1602173965230"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_256133564" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="41970" OBJECT="java.lang.Integer|41970" ID="ID_689197598" CREATED="1602173965193" MODIFIED="1602173965193"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1235767755" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="44750" OBJECT="java.lang.Integer|44750" ID="ID_715480357" CREATED="1602173965193" MODIFIED="1602173965194"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_776925435" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="136390" OBJECT="java.lang.Integer|136390" ID="ID_132191577" CREATED="1602173965225" MODIFIED="1602173965226"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1205128239" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="178160" OBJECT="java.lang.Integer|178160" ID="ID_515919049" CREATED="1602173965200" MODIFIED="1602173965200"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1124457366" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="224510" OBJECT="java.lang.Integer|224510" ID="ID_747551648" CREATED="1602173965235" MODIFIED="1602173965235"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_985593135" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="355280" OBJECT="java.lang.Integer|355280" ID="ID_1646848627" CREATED="1602173965232" MODIFIED="1602173965232"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1762164391" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="480930" OBJECT="java.lang.Integer|480930" ID="ID_924836222" CREATED="1602173965223" MODIFIED="1602173965223"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1830432844" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="2582830" OBJECT="java.lang.Integer|2582830" ID="ID_1037444728" CREATED="1602173965197" MODIFIED="1602173965197"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_120698851" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="2904910" OBJECT="java.lang.Integer|2904910" ID="ID_385930417" CREATED="1602173965214" MODIFIED="1602173965214"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_997159753" CREATED="1602173889529" MODIFIED="1602249443398"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      3000
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1961689136" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_926700441" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1287151757" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="164450" OBJECT="java.lang.Integer|164450" ID="ID_786671920" CREATED="1602173965248" MODIFIED="1602173965248"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_22746254" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="205670" OBJECT="java.lang.Integer|205670" ID="ID_1494373641" CREATED="1602173965258" MODIFIED="1602173965258"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1033796464" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1581137957" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="13750" OBJECT="java.lang.Integer|13750" ID="ID_1128012534" CREATED="1602173965317" MODIFIED="1602173965318"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_802606786" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="16390" OBJECT="java.lang.Integer|16390" ID="ID_777944051" CREATED="1602173965331" MODIFIED="1602173965331"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1123058498" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37140" OBJECT="java.lang.Integer|37140" ID="ID_995631755" CREATED="1602173965319" MODIFIED="1602173965319"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_781814256" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="50690" OBJECT="java.lang.Integer|50690" ID="ID_792049669" CREATED="1602173965322" MODIFIED="1602173965322"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1199024843" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="184460" OBJECT="java.lang.Integer|184460" ID="ID_774787835" CREATED="1602173965330" MODIFIED="1602173965330"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_28343853" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="322110" OBJECT="java.lang.Integer|322110" ID="ID_817887324" CREATED="1602173965325" MODIFIED="1602173965325"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1478802749" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_231561231" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_697701825" CREATED="1602173889531" MODIFIED="1602249446001"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apostel
    </p>
  </body>
</html>
</richcontent>
<node TEXT="18200" OBJECT="java.lang.Integer|18200" ID="ID_1737215443" CREATED="1602173965316" MODIFIED="1602173965316"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1378173190" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="31310" OBJECT="java.lang.Integer|31310" ID="ID_174586868" CREATED="1602173965329" MODIFIED="1602173965329"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1038945616" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="31380" OBJECT="java.lang.Integer|31380" ID="ID_1495138144" CREATED="1602173965322" MODIFIED="1602173965322"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_457385725" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="58040" OBJECT="java.lang.Integer|58040" ID="ID_490313554" CREATED="1602173965317" MODIFIED="1602173965317"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1582288135" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="123930" OBJECT="java.lang.Integer|123930" ID="ID_547616363" CREATED="1602173965331" MODIFIED="1602173965331"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1540215515" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="135510" OBJECT="java.lang.Integer|135510" ID="ID_1376701071" CREATED="1602173965327" MODIFIED="1602173965327"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1577723694" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="157970" OBJECT="java.lang.Integer|157970" ID="ID_893243346" CREATED="1602173965330" MODIFIED="1602173965330"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1898342832" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="178130" OBJECT="java.lang.Integer|178130" ID="ID_1543573788" CREATED="1602173965319" MODIFIED="1602173965319"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1444727122" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1221010" OBJECT="java.lang.Integer|1221010" ID="ID_1154895867" CREATED="1602173965325" MODIFIED="1602173965325"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_707666900" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_837352216" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="27870" OBJECT="java.lang.Integer|27870" ID="ID_993522417" CREATED="1602173965246" MODIFIED="1602173965246"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1070574119" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="27930" OBJECT="java.lang.Integer|27930" ID="ID_99129690" CREATED="1602173965260" MODIFIED="1602173965261"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1735021419" CREATED="1602173889508" MODIFIED="1602249444518"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Porfiado
    </p>
  </body>
</html>
</richcontent>
<node TEXT="33250" OBJECT="java.lang.Integer|33250" ID="ID_451217217" CREATED="1602173965266" MODIFIED="1602173965266"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1522720451" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="38310" OBJECT="java.lang.Integer|38310" ID="ID_1675665437" CREATED="1602173965268" MODIFIED="1602173965269"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1318598249" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="87480" OBJECT="java.lang.Integer|87480" ID="ID_1962230203" CREATED="1602173965252" MODIFIED="1602173965252"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1152977189" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="178350" OBJECT="java.lang.Integer|178350" ID="ID_1687430350" CREATED="1602173965264" MODIFIED="1602173965264"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_375526703" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="206770" OBJECT="java.lang.Integer|206770" ID="ID_824095178" CREATED="1602173965259" MODIFIED="1602173965259"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_989280359" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="355320" OBJECT="java.lang.Integer|355320" ID="ID_649218520" CREATED="1602173965261" MODIFIED="1602173965261"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1385838244" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1674190" OBJECT="java.lang.Integer|1674190" ID="ID_1995171667" CREATED="1602173965248" MODIFIED="1602173965248"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1917706289" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="1775230" OBJECT="java.lang.Integer|1775230" ID="ID_1888148080" CREATED="1602173965271" MODIFIED="1602173965271"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1696842883" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="4181920" OBJECT="java.lang.Integer|4181920" ID="ID_1882354106" CREATED="1602173965257" MODIFIED="1602173965257"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1014872628" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_725989069" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1544114454" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="31110" OBJECT="java.lang.Integer|31110" ID="ID_1326473065" CREATED="1602173965334" MODIFIED="1602173965334"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1142450983" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="259850" OBJECT="java.lang.Integer|259850" ID="ID_901268872" CREATED="1602173965327" MODIFIED="1602173965327"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_648338954" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="644580" OBJECT="java.lang.Integer|644580" ID="ID_1933843067" CREATED="1602173965331" MODIFIED="1602173965331"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_991381462" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1047600" OBJECT="java.lang.Integer|1047600" ID="ID_1641934839" CREATED="1602173965318" MODIFIED="1602173965319"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_332251733" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1894390" OBJECT="java.lang.Integer|1894390" ID="ID_1451022147" CREATED="1602173965325" MODIFIED="1602173965325"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1888943068" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_233050541" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="32710" OBJECT="java.lang.Integer|32710" ID="ID_448957162" CREATED="1602173965264" MODIFIED="1602173965264"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1174480409" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="36650" OBJECT="java.lang.Integer|36650" ID="ID_1930792654" CREATED="1602173965251" MODIFIED="1602173965251"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_542738621" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="216400" OBJECT="java.lang.Integer|216400" ID="ID_1284177220" CREATED="1602173965258" MODIFIED="1602173965259"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_190854899" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="330660" OBJECT="java.lang.Integer|330660" ID="ID_372024862" CREATED="1602173965261" MODIFIED="1602173965261"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_960003306" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="557580" OBJECT="java.lang.Integer|557580" ID="ID_160987967" CREATED="1602173965268" MODIFIED="1602173965268"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1163442448" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="561390" OBJECT="java.lang.Integer|561390" ID="ID_1432656318" CREATED="1602173965271" MODIFIED="1602173965271"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1190877716" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="2751880" OBJECT="java.lang.Integer|2751880" ID="ID_936052623" CREATED="1602173965247" MODIFIED="1602173965248"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1989384338" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="3439090" OBJECT="java.lang.Integer|3439090" ID="ID_379411955" CREATED="1602173965257" MODIFIED="1602173965257"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1839701725" CREATED="1602173889504" MODIFIED="1602249443752"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Suave
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1224534629" CREATED="1602173889509" MODIFIED="1602249443445"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_717537624" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_533512634" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1864137252" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="39520" OBJECT="java.lang.Integer|39520" ID="ID_1221449417" CREATED="1602173965277" MODIFIED="1602173965277"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1110558309" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="113410" OBJECT="java.lang.Integer|113410" ID="ID_1498482411" CREATED="1602173965289" MODIFIED="1602173965289"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_207926957" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="850860" OBJECT="java.lang.Integer|850860" ID="ID_1452080486" CREATED="1602173965276" MODIFIED="1602173965276"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_990756170" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_864002563" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="284770" OBJECT="java.lang.Integer|284770" ID="ID_1171032940" CREATED="1602173965337" MODIFIED="1602173965337"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_381988408" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="858920" OBJECT="java.lang.Integer|858920" ID="ID_1203636293" CREATED="1602173965346" MODIFIED="1602173965346"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_578090033" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1477982651" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_922772090" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="35470" OBJECT="java.lang.Integer|35470" ID="ID_302233343" CREATED="1602173965287" MODIFIED="1602173965287"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_202146736" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="411530" OBJECT="java.lang.Integer|411530" ID="ID_619739179" CREATED="1602173965289" MODIFIED="1602173965290"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_757230322" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="822540" OBJECT="java.lang.Integer|822540" ID="ID_675645880" CREATED="1602173965276" MODIFIED="1602173965276"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1272614889" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1916103402" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="33710" OBJECT="java.lang.Integer|33710" ID="ID_1601590237" CREATED="1602173965338" MODIFIED="1602173965338"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1308285183" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="64730" OBJECT="java.lang.Integer|64730" ID="ID_970921675" CREATED="1602173965345" MODIFIED="1602173965345"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1347576712" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="653060" OBJECT="java.lang.Integer|653060" ID="ID_1223321862" CREATED="1602173965337" MODIFIED="1602173965337"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_675544476" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="786100" OBJECT="java.lang.Integer|786100" ID="ID_1015582077" CREATED="1602173965346" MODIFIED="1602173965346"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_482812250" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_456926474" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1723849417" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="32000" OBJECT="java.lang.Integer|32000" ID="ID_1391765243" CREATED="1602173965341" MODIFIED="1602173965341"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1393417892" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="42780" OBJECT="java.lang.Integer|42780" ID="ID_621631322" CREATED="1602173965337" MODIFIED="1602173965337"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_206445544" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="69480" OBJECT="java.lang.Integer|69480" ID="ID_757855748" CREATED="1602173965336" MODIFIED="1602173965336"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_573427243" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="125810" OBJECT="java.lang.Integer|125810" ID="ID_510381653" CREATED="1602173965345" MODIFIED="1602173965345"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_157448555" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="407200" OBJECT="java.lang.Integer|407200" ID="ID_1543393657" CREATED="1602173965342" MODIFIED="1602173965342"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1111633613" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="663630" OBJECT="java.lang.Integer|663630" ID="ID_738399507" CREATED="1602173965346" MODIFIED="1602173965346"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1868088580" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1812286797" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="41410" OBJECT="java.lang.Integer|41410" ID="ID_1999833778" CREATED="1602173965283" MODIFIED="1602173965283"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_314065525" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="64570" OBJECT="java.lang.Integer|64570" ID="ID_1406293381" CREATED="1602173965276" MODIFIED="1602173965276"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1711671713" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="70210" OBJECT="java.lang.Integer|70210" ID="ID_629856162" CREATED="1602173965278" MODIFIED="1602173965278"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_257937321" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="98070" OBJECT="java.lang.Integer|98070" ID="ID_1939587968" CREATED="1602173965287" MODIFIED="1602173965288"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1314576476" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="115800" OBJECT="java.lang.Integer|115800" ID="ID_315194272" CREATED="1602173965279" MODIFIED="1602173965279"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_344247409" CREATED="1602173889504" MODIFIED="1602249444492"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo GABRIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="118360" OBJECT="java.lang.Integer|118360" ID="ID_71287955" CREATED="1602173965280" MODIFIED="1602173965280"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_40839379" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="182760" OBJECT="java.lang.Integer|182760" ID="ID_1559326702" CREATED="1602173965285" MODIFIED="1602173965285"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1942786266" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="379230" OBJECT="java.lang.Integer|379230" ID="ID_1040144528" CREATED="1602173965282" MODIFIED="1602173965282"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1373686399" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1012630" OBJECT="java.lang.Integer|1012630" ID="ID_891359993" CREATED="1602173965274" MODIFIED="1602173965274"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1313995602" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="1893250" OBJECT="java.lang.Integer|1893250" ID="ID_1179393940" CREATED="1602173965290" MODIFIED="1602173965290"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_769225329" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1281081511" CREATED="1602173889533" MODIFIED="1602249444986"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_851958111" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1585699243" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="14180" OBJECT="java.lang.Integer|14180" ID="ID_1139433900" CREATED="1602173965240" MODIFIED="1602173965240"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_222614052" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_768566389" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="27310" OBJECT="java.lang.Integer|27310" ID="ID_1023977532" CREATED="1602173965295" MODIFIED="1602173965295"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1559784054" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="50170" OBJECT="java.lang.Integer|50170" ID="ID_376065665" CREATED="1602173965315" MODIFIED="1602173965315"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_601505251" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_833886010" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_345509073" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="16630" OBJECT="java.lang.Integer|16630" ID="ID_1185990066" CREATED="1602173965226" MODIFIED="1602173965226"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_665278583" CREATED="1602173889504" MODIFIED="1602249444276"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Crac
    </p>
  </body>
</html>
</richcontent>
<node TEXT="32910" OBJECT="java.lang.Integer|32910" ID="ID_1591494233" CREATED="1602173965195" MODIFIED="1602173965195"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_879334516" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="34650" OBJECT="java.lang.Integer|34650" ID="ID_77720866" CREATED="1602173965233" MODIFIED="1602173965233"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1098491868" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="70900" OBJECT="java.lang.Integer|70900" ID="ID_418739062" CREATED="1602173965209" MODIFIED="1602173965210"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1233925806" CREATED="1602173889504" MODIFIED="1602249444492"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo GABRIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="73860" OBJECT="java.lang.Integer|73860" ID="ID_1199308653" CREATED="1602173965201" MODIFIED="1602173965201"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1901537470" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="1057240" OBJECT="java.lang.Integer|1057240" ID="ID_1561088259" CREATED="1602173965240" MODIFIED="1602173965240"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1069246702" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_475674136" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="50040" OBJECT="java.lang.Integer|50040" ID="ID_630681770" CREATED="1602173965307" MODIFIED="1602173965307"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1504576252" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="711610" OBJECT="java.lang.Integer|711610" ID="ID_293670330" CREATED="1602173965294" MODIFIED="1602173965294"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_173598702" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="1257980" OBJECT="java.lang.Integer|1257980" ID="ID_1475829882" CREATED="1602173965312" MODIFIED="1602173965313"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_183376920" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="1567130" OBJECT="java.lang.Integer|1567130" ID="ID_1725353826" CREATED="1602173965315" MODIFIED="1602173965315"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1536264343" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1392571664" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1059238194" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="19070" OBJECT="java.lang.Integer|19070" ID="ID_1716342294" CREATED="1602173965224" MODIFIED="1602173965224"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_351801485" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="32200" OBJECT="java.lang.Integer|32200" ID="ID_1924958139" CREATED="1602173965216" MODIFIED="1602173965216"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_749217436" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="38550" OBJECT="java.lang.Integer|38550" ID="ID_483511256" CREATED="1602173965198" MODIFIED="1602173965198"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_302844340" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="307420" OBJECT="java.lang.Integer|307420" ID="ID_175964281" CREATED="1602173965232" MODIFIED="1602173965232"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_305096162" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1259870" OBJECT="java.lang.Integer|1259870" ID="ID_782071163" CREATED="1602173965194" MODIFIED="1602173965194"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_931705164" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="1417060" OBJECT="java.lang.Integer|1417060" ID="ID_629013077" CREATED="1602173965236" MODIFIED="1602173965236"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1985491742" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1231698949" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="27390" OBJECT="java.lang.Integer|27390" ID="ID_554392999" CREATED="1602173965299" MODIFIED="1602173965299"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_314232772" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="32990" OBJECT="java.lang.Integer|32990" ID="ID_1354638531" CREATED="1602173965312" MODIFIED="1602173965312"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_846588248" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="232620" OBJECT="java.lang.Integer|232620" ID="ID_1265122106" CREATED="1602173965292" MODIFIED="1602173965292"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1385857082" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="294890" OBJECT="java.lang.Integer|294890" ID="ID_1724710094" CREATED="1602173965303" MODIFIED="1602173965303"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1234092661" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="877960" OBJECT="java.lang.Integer|877960" ID="ID_1557333493" CREATED="1602173965293" MODIFIED="1602173965293"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1517221751" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="2030600" OBJECT="java.lang.Integer|2030600" ID="ID_1011642263" CREATED="1602173965314" MODIFIED="1602173965314"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_487354761" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1682014466" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_26322485" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="30650" OBJECT="java.lang.Integer|30650" ID="ID_1226260248" CREATED="1602173965221" MODIFIED="1602173965222"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1716086152" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="35670" OBJECT="java.lang.Integer|35670" ID="ID_1566163929" CREATED="1602173965209" MODIFIED="1602173965209"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1880980244" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="35730" OBJECT="java.lang.Integer|35730" ID="ID_303631430" CREATED="1602173965213" MODIFIED="1602173965213"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1484303318" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="39190" OBJECT="java.lang.Integer|39190" ID="ID_1765871806" CREATED="1602173965203" MODIFIED="1602173965203"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_948298712" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="39460" OBJECT="java.lang.Integer|39460" ID="ID_341075892" CREATED="1602173965198" MODIFIED="1602173965198"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1305119763" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="64200" OBJECT="java.lang.Integer|64200" ID="ID_1170595645" CREATED="1602173965217" MODIFIED="1602173965217"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_880454801" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="90190" OBJECT="java.lang.Integer|90190" ID="ID_1105045066" CREATED="1602173965224" MODIFIED="1602173965225"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_507064824" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="191750" OBJECT="java.lang.Integer|191750" ID="ID_1934641911" CREATED="1602173965195" MODIFIED="1602173965195"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1753472307" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="679920" OBJECT="java.lang.Integer|679920" ID="ID_823970214" CREATED="1602173965233" MODIFIED="1602173965233"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1845389872" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="2887610" OBJECT="java.lang.Integer|2887610" ID="ID_95369962" CREATED="1602173965239" MODIFIED="1602173965239"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1459157870" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1417345451" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="23710" OBJECT="java.lang.Integer|23710" ID="ID_294624732" CREATED="1602173965292" MODIFIED="1602173965292"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1601755454" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="33400" OBJECT="java.lang.Integer|33400" ID="ID_93386535" CREATED="1602173965304" MODIFIED="1602173965304"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_787605332" CREATED="1602173889504" MODIFIED="1602249444276"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Crac
    </p>
  </body>
</html>
</richcontent>
<node TEXT="69240" OBJECT="java.lang.Integer|69240" ID="ID_1045896851" CREATED="1602173965292" MODIFIED="1602173965292"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1202328263" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="92380" OBJECT="java.lang.Integer|92380" ID="ID_1625564165" CREATED="1602173965306" MODIFIED="1602173965306"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1790792143" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="134540" OBJECT="java.lang.Integer|134540" ID="ID_1973602033" CREATED="1602173965292" MODIFIED="1602173965292"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_720171891" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="254130" OBJECT="java.lang.Integer|254130" ID="ID_1094809306" CREATED="1602173965312" MODIFIED="1602173965312"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_143635220" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1530050" OBJECT="java.lang.Integer|1530050" ID="ID_1460038480" CREATED="1602173965294" MODIFIED="1602173965294"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1380217692" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="3813640" OBJECT="java.lang.Integer|3813640" ID="ID_9848365" CREATED="1602173965314" MODIFIED="1602173965315"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_48764942" CREATED="1602173889529" MODIFIED="1602249443398"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      3000
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1022693216" CREATED="1602173889533" MODIFIED="1602249444986"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1272265426" CREATED="1602173889533" MODIFIED="1602249443378"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (en blanco)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1027925804" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="53080" OBJECT="java.lang.Integer|53080" ID="ID_1447629970" CREATED="1602173965348" MODIFIED="1602173965348"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_669333284" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1877443660" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="11470" OBJECT="java.lang.Integer|11470" ID="ID_1640015671" CREATED="1602173965250" MODIFIED="1602173965250"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_847741153" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="12470" OBJECT="java.lang.Integer|12470" ID="ID_975970462" CREATED="1602173965247" MODIFIED="1602173965247"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1558887881" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="37990" OBJECT="java.lang.Integer|37990" ID="ID_1486655991" CREATED="1602173965270" MODIFIED="1602173965270"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1105191061" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="52220" OBJECT="java.lang.Integer|52220" ID="ID_1435854148" CREATED="1602173965272" MODIFIED="1602173965272"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1261993258" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1803295735" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="4620" OBJECT="java.lang.Integer|4620" ID="ID_546865870" CREATED="1602173965320" MODIFIED="1602173965320"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1284691005" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="11500" OBJECT="java.lang.Integer|11500" ID="ID_714336850" CREATED="1602173965326" MODIFIED="1602173965326"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_242806873" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="38590" OBJECT="java.lang.Integer|38590" ID="ID_1802235946" CREATED="1602173965323" MODIFIED="1602173965323"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1152408008" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="41930" OBJECT="java.lang.Integer|41930" ID="ID_753909959" CREATED="1602173965333" MODIFIED="1602173965333"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1560077770" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="72390" OBJECT="java.lang.Integer|72390" ID="ID_1109276118" CREATED="1602173965330" MODIFIED="1602173965330"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1812814291" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="75300" OBJECT="java.lang.Integer|75300" ID="ID_210629928" CREATED="1602173965328" MODIFIED="1602173965328"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_124702629" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="193220" OBJECT="java.lang.Integer|193220" ID="ID_117634419" CREATED="1602173965334" MODIFIED="1602173965335"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_891333307" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_775047626" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1725664294" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="31650" OBJECT="java.lang.Integer|31650" ID="ID_638391585" CREATED="1602173965258" MODIFIED="1602173965258"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_428362773" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="35290" OBJECT="java.lang.Integer|35290" ID="ID_605776896" CREATED="1602173965259" MODIFIED="1602173965259"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1176323174" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="35990" OBJECT="java.lang.Integer|35990" ID="ID_1749245608" CREATED="1602173965264" MODIFIED="1602173965264"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1644305273" CREATED="1602173889511" MODIFIED="1602249445338"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Lenox
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37030" OBJECT="java.lang.Integer|37030" ID="ID_278164230" CREATED="1602173965256" MODIFIED="1602173965256"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_947674978" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37420" OBJECT="java.lang.Integer|37420" ID="ID_937688892" CREATED="1602173965248" MODIFIED="1602173965249"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1704272452" CREATED="1602173889507" MODIFIED="1602249444528"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Kumpa
    </p>
  </body>
</html>
</richcontent>
<node TEXT="74850" OBJECT="java.lang.Integer|74850" ID="ID_171465921" CREATED="1602173965255" MODIFIED="1602173965255"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_971534855" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="141490" OBJECT="java.lang.Integer|141490" ID="ID_461986475" CREATED="1602173965269" MODIFIED="1602173965269"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1584412137" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="170210" OBJECT="java.lang.Integer|170210" ID="ID_537906172" CREATED="1602173965246" MODIFIED="1602173965247"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_532491598" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="188600" OBJECT="java.lang.Integer|188600" ID="ID_1681192851" CREATED="1602173965253" MODIFIED="1602173965253"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_600924713" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="452510" OBJECT="java.lang.Integer|452510" ID="ID_1633692686" CREATED="1602173965271" MODIFIED="1602173965271"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1250165862" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="568200" OBJECT="java.lang.Integer|568200" ID="ID_544654700" CREATED="1602173965262" MODIFIED="1602173965262"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1066364811" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1587775912" CREATED="1602173889507" MODIFIED="1602249444528"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Kumpa
    </p>
  </body>
</html>
</richcontent>
<node TEXT="247950" OBJECT="java.lang.Integer|247950" ID="ID_1515993215" CREATED="1602173965324" MODIFIED="1602173965324"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_210125875" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="355740" OBJECT="java.lang.Integer|355740" ID="ID_1560913653" CREATED="1602173965328" MODIFIED="1602173965328"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_156042733" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="481040" OBJECT="java.lang.Integer|481040" ID="ID_1026855875" CREATED="1602173965320" MODIFIED="1602173965320"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1432662935" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="987040" OBJECT="java.lang.Integer|987040" ID="ID_815632678" CREATED="1602173965334" MODIFIED="1602173965334"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_129581957" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="1032970" OBJECT="java.lang.Integer|1032970" ID="ID_1228058471" CREATED="1602173965333" MODIFIED="1602173965333"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_185229029" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1658758979" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1341835690" CREATED="1602173889507" MODIFIED="1602249444528"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Kumpa
    </p>
  </body>
</html>
</richcontent>
<node TEXT="71160" OBJECT="java.lang.Integer|71160" ID="ID_632501778" CREATED="1602173965254" MODIFIED="1602173965255"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_227115767" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_754998148" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="81590" OBJECT="java.lang.Integer|81590" ID="ID_1350067083" CREATED="1602173965318" MODIFIED="1602173965318"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1358200740" CREATED="1602173889507" MODIFIED="1602249444528"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Kumpa
    </p>
  </body>
</html>
</richcontent>
<node TEXT="454450" OBJECT="java.lang.Integer|454450" ID="ID_1020526854" CREATED="1602173965324" MODIFIED="1602173965324"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1385066561" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="722350" OBJECT="java.lang.Integer|722350" ID="ID_991501296" CREATED="1602173965319" MODIFIED="1602173965320"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_747606427" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="1626970" OBJECT="java.lang.Integer|1626970" ID="ID_617736092" CREATED="1602173965334" MODIFIED="1602173965334"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_481875563" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="2355680" OBJECT="java.lang.Integer|2355680" ID="ID_499945793" CREATED="1602173965327" MODIFIED="1602173965327"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_538440970" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_954535007" CREATED="1602173889533" MODIFIED="1602249443378"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (en blanco)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_946964635" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="21850" OBJECT="java.lang.Integer|21850" ID="ID_543765412" CREATED="1602173965347" MODIFIED="1602173965348"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1000753113" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1560160098" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="38580" OBJECT="java.lang.Integer|38580" ID="ID_1310805663" CREATED="1602173965268" MODIFIED="1602173965268"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_493700152" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="39950" OBJECT="java.lang.Integer|39950" ID="ID_1808259997" CREATED="1602173965243" MODIFIED="1602173965243"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_230572160" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="58530" OBJECT="java.lang.Integer|58530" ID="ID_739894794" CREATED="1602173965254" MODIFIED="1602173965254"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1946649429" CREATED="1602173889507" MODIFIED="1602249444528"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Kumpa
    </p>
  </body>
</html>
</richcontent>
<node TEXT="64830" OBJECT="java.lang.Integer|64830" ID="ID_389110591" CREATED="1602173965255" MODIFIED="1602173965255"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_68883086" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="65250" OBJECT="java.lang.Integer|65250" ID="ID_1869996322" CREATED="1602173965252" MODIFIED="1602173965252"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_911704898" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="65980" OBJECT="java.lang.Integer|65980" ID="ID_700628513" CREATED="1602173965264" MODIFIED="1602173965265"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_213506194" CREATED="1602173889508" MODIFIED="1602249444518"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Porfiado
    </p>
  </body>
</html>
</richcontent>
<node TEXT="66710" OBJECT="java.lang.Integer|66710" ID="ID_1534268415" CREATED="1602173965266" MODIFIED="1602173965266"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1303233431" CREATED="1602173889511" MODIFIED="1602249445338"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Lenox
    </p>
  </body>
</html>
</richcontent>
<node TEXT="73380" OBJECT="java.lang.Integer|73380" ID="ID_514808167" CREATED="1602173965256" MODIFIED="1602173965256"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1898694373" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="120820" OBJECT="java.lang.Integer|120820" ID="ID_76364351" CREATED="1602173965261" MODIFIED="1602173965261"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_365367577" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="255860" OBJECT="java.lang.Integer|255860" ID="ID_251653303" CREATED="1602173965258" MODIFIED="1602173965258"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_201939147" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="390990" OBJECT="java.lang.Integer|390990" ID="ID_1390743340" CREATED="1602173965247" MODIFIED="1602173965247"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_407055953" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="406780" OBJECT="java.lang.Integer|406780" ID="ID_1544662611" CREATED="1602173965260" MODIFIED="1602173965260"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1612613267" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="715550" OBJECT="java.lang.Integer|715550" ID="ID_229292187" CREATED="1602173965249" MODIFIED="1602173965249"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_52344914" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="791920" OBJECT="java.lang.Integer|791920" ID="ID_864043580" CREATED="1602173965262" MODIFIED="1602173965262"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_992527407" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="1035090" OBJECT="java.lang.Integer|1035090" ID="ID_338094658" CREATED="1602173965269" MODIFIED="1602173965270"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1262146170" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="1102270" OBJECT="java.lang.Integer|1102270" ID="ID_1864267704" CREATED="1602173965272" MODIFIED="1602173965272"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_614956450" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_272781040" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="33180" OBJECT="java.lang.Integer|33180" ID="ID_362314134" CREATED="1602173965323" MODIFIED="1602173965323"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_694268927" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="34300" OBJECT="java.lang.Integer|34300" ID="ID_109147738" CREATED="1602173965329" MODIFIED="1602173965330"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_749566842" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="46740" OBJECT="java.lang.Integer|46740" ID="ID_1590541724" CREATED="1602173965332" MODIFIED="1602173965332"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1562111161" CREATED="1602173889505" MODIFIED="1602249445421"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ORVANTIS
    </p>
  </body>
</html>
</richcontent>
<node TEXT="70270" OBJECT="java.lang.Integer|70270" ID="ID_830478788" CREATED="1602173965330" MODIFIED="1602173965330"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1864413030" CREATED="1602173889507" MODIFIED="1602249444528"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Kumpa
    </p>
  </body>
</html>
</richcontent>
<node TEXT="73930" OBJECT="java.lang.Integer|73930" ID="ID_126019719" CREATED="1602173965324" MODIFIED="1602173965325"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1162777364" CREATED="1602173889504" MODIFIED="1602249444517"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo BICENTENARIO
    </p>
  </body>
</html>
</richcontent>
<node TEXT="140890" OBJECT="java.lang.Integer|140890" ID="ID_1247676558" CREATED="1602173965318" MODIFIED="1602173965318"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_323419278" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="143260" OBJECT="java.lang.Integer|143260" ID="ID_1932806309" CREATED="1602173965322" MODIFIED="1602173965322"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1514649156" CREATED="1602173889539" MODIFIED="1602249444744"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXWELL
    </p>
  </body>
</html>
</richcontent>
<node TEXT="203540" OBJECT="java.lang.Integer|203540" ID="ID_589207022" CREATED="1602173965325" MODIFIED="1602173965326"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_238339347" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="236190" OBJECT="java.lang.Integer|236190" ID="ID_1758764174" CREATED="1602173965318" MODIFIED="1602173965318"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1154057853" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="311910" OBJECT="java.lang.Integer|311910" ID="ID_700797050" CREATED="1602173965320" MODIFIED="1602173965320"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_937588431" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="468380" OBJECT="java.lang.Integer|468380" ID="ID_81129434" CREATED="1602173965328" MODIFIED="1602173965328"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1995760668" CREATED="1602173889505" MODIFIED="1602249443776"><richcontent TYPE="DETAILS">

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
<node TEXT="983010" OBJECT="java.lang.Integer|983010" ID="ID_131306735" CREATED="1602173965333" MODIFIED="1602173965333"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1769616093" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="3307590" OBJECT="java.lang.Integer|3307590" ID="ID_1546313318" CREATED="1602173965334" MODIFIED="1602173965334"/>
</node>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_291504194" CREATED="1602173889504" MODIFIED="1602249444942"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fuerte
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_700577148" CREATED="1602173889509" MODIFIED="1602249443445"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1348789648" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1009983894" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_494647016" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="66280" OBJECT="java.lang.Integer|66280" ID="ID_1238523666" CREATED="1602173965273" MODIFIED="1602173965273"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_726730648" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_181910179" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1091141440" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="19920" OBJECT="java.lang.Integer|19920" ID="ID_1754283106" CREATED="1602173965286" MODIFIED="1602173965286"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_611929727" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="39980" OBJECT="java.lang.Integer|39980" ID="ID_113020214" CREATED="1602173965275" MODIFIED="1602173965275"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_511930219" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="75150" OBJECT="java.lang.Integer|75150" ID="ID_359476797" CREATED="1602173965278" MODIFIED="1602173965278"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_730972972" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="92070" OBJECT="java.lang.Integer|92070" ID="ID_1644955196" CREATED="1602173965283" MODIFIED="1602173965283"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_98011861" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="232320" OBJECT="java.lang.Integer|232320" ID="ID_1153212734" CREATED="1602173965272" MODIFIED="1602173965273"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_401404075" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1669278692" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="29560" OBJECT="java.lang.Integer|29560" ID="ID_1123395487" CREATED="1602173965345" MODIFIED="1602173965346"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_929304946" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="74520" OBJECT="java.lang.Integer|74520" ID="ID_78976311" CREATED="1602173965344" MODIFIED="1602173965344"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_583844253" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="205890" OBJECT="java.lang.Integer|205890" ID="ID_170103429" CREATED="1602173965338" MODIFIED="1602173965338"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_60412953" CREATED="1602173889531" MODIFIED="1602249446001"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apostel
    </p>
  </body>
</html>
</richcontent>
<node TEXT="332290" OBJECT="java.lang.Integer|332290" ID="ID_394286765" CREATED="1602173965335" MODIFIED="1602173965335"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_754459373" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="436490" OBJECT="java.lang.Integer|436490" ID="ID_710932934" CREATED="1602173965335" MODIFIED="1602173965335"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_581308837" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="562160" OBJECT="java.lang.Integer|562160" ID="ID_78065213" CREATED="1602173965340" MODIFIED="1602173965340"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_463019644" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_387444976" CREATED="1602173889533" MODIFIED="1602249443378"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (en blanco)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1964059603" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="0" OBJECT="java.lang.Integer|0" ID="ID_100562373" CREATED="1602173965348" MODIFIED="1602173965348"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1924886877" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1061732935" CREATED="1602173889510" MODIFIED="1602249444257"><richcontent TYPE="DETAILS">

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
<node TEXT="30070" OBJECT="java.lang.Integer|30070" ID="ID_544330585" CREATED="1602173965340" MODIFIED="1602173965340"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_93110395" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="80100" OBJECT="java.lang.Integer|80100" ID="ID_135186178" CREATED="1602173965335" MODIFIED="1602173965335"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1191736581" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="237980" OBJECT="java.lang.Integer|237980" ID="ID_1982582920" CREATED="1602173965344" MODIFIED="1602173965344"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1704660751" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="529690" OBJECT="java.lang.Integer|529690" ID="ID_1079313310" CREATED="1602173965344" MODIFIED="1602173965344"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1571261735" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="582420" OBJECT="java.lang.Integer|582420" ID="ID_1128447831" CREATED="1602173965339" MODIFIED="1602173965339"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1648617823" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="4346290" OBJECT="java.lang.Integer|4346290" ID="ID_77747822" CREATED="1602173965337" MODIFIED="1602173965337"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1750198959" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1476592431" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="28910" OBJECT="java.lang.Integer|28910" ID="ID_1734666811" CREATED="1602173965274" MODIFIED="1602173965275"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_359019822" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="71050" OBJECT="java.lang.Integer|71050" ID="ID_354564515" CREATED="1602173965272" MODIFIED="1602173965272"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_608629040" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="174950" OBJECT="java.lang.Integer|174950" ID="ID_1074914234" CREATED="1602173965282" MODIFIED="1602173965282"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1906939281" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="234900" OBJECT="java.lang.Integer|234900" ID="ID_1836236923" CREATED="1602173965286" MODIFIED="1602173965286"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_283508143" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="671120" OBJECT="java.lang.Integer|671120" ID="ID_991681372" CREATED="1602173965288" MODIFIED="1602173965288"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_457779945" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="5768840" OBJECT="java.lang.Integer|5768840" ID="ID_1152571953" CREATED="1602173965278" MODIFIED="1602173965278"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_764076956" CREATED="1602173889529" MODIFIED="1602249443398"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      3000
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1685336887" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1044879180" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_140706884" CREATED="1602173889508" MODIFIED="1602249444291"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Pantera
    </p>
  </body>
</html>
</richcontent>
<node TEXT="35930" OBJECT="java.lang.Integer|35930" ID="ID_13719261" CREATED="1602173965265" MODIFIED="1602173965266"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1919573608" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1782009067" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="38130" OBJECT="java.lang.Integer|38130" ID="ID_824113657" CREATED="1602173965332" MODIFIED="1602173965332"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_879194797" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1692930883" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_179708633" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="86690" OBJECT="java.lang.Integer|86690" ID="ID_452900146" CREATED="1602173965317" MODIFIED="1602173965317"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_709420038" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="206800" OBJECT="java.lang.Integer|206800" ID="ID_1231922442" CREATED="1602173965329" MODIFIED="1602173965329"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_264307073" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="276510" OBJECT="java.lang.Integer|276510" ID="ID_1979309090" CREATED="1602173965332" MODIFIED="1602173965332"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_912535310" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="445960" OBJECT="java.lang.Integer|445960" ID="ID_1421954306" CREATED="1602173965322" MODIFIED="1602173965322"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_797248568" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_428507862" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="19440" OBJECT="java.lang.Integer|19440" ID="ID_4291692" CREATED="1602173965253" MODIFIED="1602173965253"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_936852053" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="33400" OBJECT="java.lang.Integer|33400" ID="ID_397264652" CREATED="1602173965242" MODIFIED="1602173965243"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1076726880" CREATED="1602173889511" MODIFIED="1602249445338"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Lenox
    </p>
  </body>
</html>
</richcontent>
<node TEXT="37390" OBJECT="java.lang.Integer|37390" ID="ID_1480512426" CREATED="1602173965256" MODIFIED="1602173965256"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_599427446" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="38140" OBJECT="java.lang.Integer|38140" ID="ID_1678364599" CREATED="1602173965260" MODIFIED="1602173965260"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1386216559" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="39910" OBJECT="java.lang.Integer|39910" ID="ID_1706203719" CREATED="1602173965267" MODIFIED="1602173965267"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1300053553" CREATED="1602173889503" MODIFIED="1602249443526"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXI
    </p>
  </body>
</html>
</richcontent>
<node TEXT="68630" OBJECT="java.lang.Integer|68630" ID="ID_1922298693" CREATED="1602173965241" MODIFIED="1602173965241"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_509699063" CREATED="1602173889508" MODIFIED="1602249444291"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Pantera
    </p>
  </body>
</html>
</richcontent>
<node TEXT="112890" OBJECT="java.lang.Integer|112890" ID="ID_243379410" CREATED="1602173965265" MODIFIED="1602173965265"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_505475710" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="120590" OBJECT="java.lang.Integer|120590" ID="ID_213969945" CREATED="1602173965263" MODIFIED="1602173965263"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_288219426" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="151450" OBJECT="java.lang.Integer|151450" ID="ID_1894761452" CREATED="1602173965270" MODIFIED="1602173965271"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_799125671" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="169260" OBJECT="java.lang.Integer|169260" ID="ID_975272832" CREATED="1602173965246" MODIFIED="1602173965246"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_821596134" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="188780" OBJECT="java.lang.Integer|188780" ID="ID_758834400" CREATED="1602173965254" MODIFIED="1602173965254"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_951252618" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="410140" OBJECT="java.lang.Integer|410140" ID="ID_1756535381" CREATED="1602173965251" MODIFIED="1602173965251"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1073826424" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1496751925" CREATED="1602173889533" MODIFIED="1602249443378"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      (en blanco)
    </p>
  </body>
</html>
</richcontent>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_72091855" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="35280" OBJECT="java.lang.Integer|35280" ID="ID_441087598" CREATED="1602173965348" MODIFIED="1602173965348"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1180517186" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="143190" OBJECT="java.lang.Integer|143190" ID="ID_1983515672" CREATED="1602173965347" MODIFIED="1602173965347"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1175999896" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="207020" OBJECT="java.lang.Integer|207020" ID="ID_1344608501" CREATED="1602173965347" MODIFIED="1602173965347"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_597540215" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1769824611" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="101260" OBJECT="java.lang.Integer|101260" ID="ID_637904455" CREATED="1602173965327" MODIFIED="1602173965327"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_903998566" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="142540" OBJECT="java.lang.Integer|142540" ID="ID_330220905" CREATED="1602173965317" MODIFIED="1602173965317"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_437736957" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="146610" OBJECT="java.lang.Integer|146610" ID="ID_1713637182" CREATED="1602173965331" MODIFIED="1602173965331"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1162599014" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="504160" OBJECT="java.lang.Integer|504160" ID="ID_1513675122" CREATED="1602173965329" MODIFIED="1602173965329"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_682855205" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="659510" OBJECT="java.lang.Integer|659510" ID="ID_772564064" CREATED="1602173965323" MODIFIED="1602173965324"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_774875933" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="2904610" OBJECT="java.lang.Integer|2904610" ID="ID_1393269682" CREATED="1602173965321" MODIFIED="1602173965321"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_967196231" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_952238548" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="33680" OBJECT="java.lang.Integer|33680" ID="ID_254944033" CREATED="1602173965253" MODIFIED="1602173965253"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_367949214" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="63640" OBJECT="java.lang.Integer|63640" ID="ID_1336780836" CREATED="1602173965266" MODIFIED="1602173965266"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_904292659" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="105600" OBJECT="java.lang.Integer|105600" ID="ID_1061524025" CREATED="1602173965260" MODIFIED="1602173965260"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_866868703" CREATED="1602173889539" MODIFIED="1602249443905"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Quintus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="127740" OBJECT="java.lang.Integer|127740" ID="ID_1190679328" CREATED="1602173965267" MODIFIED="1602173965267"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1985250664" CREATED="1602173889508" MODIFIED="1602249444291"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Pantera
    </p>
  </body>
</html>
</richcontent>
<node TEXT="182350" OBJECT="java.lang.Integer|182350" ID="ID_1436288030" CREATED="1602173965265" MODIFIED="1602173965265"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1030042133" CREATED="1602173889503" MODIFIED="1602249443526"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXI
    </p>
  </body>
</html>
</richcontent>
<node TEXT="192900" OBJECT="java.lang.Integer|192900" ID="ID_1369576613" CREATED="1602173965241" MODIFIED="1602173965241"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1143474244" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="410210" OBJECT="java.lang.Integer|410210" ID="ID_1078463056" CREATED="1602173965254" MODIFIED="1602173965254"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_70678451" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="831400" OBJECT="java.lang.Integer|831400" ID="ID_1116339938" CREATED="1602173965263" MODIFIED="1602173965263"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1233323478" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="1213090" OBJECT="java.lang.Integer|1213090" ID="ID_1507456617" CREATED="1602173965245" MODIFIED="1602173965245"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_215698547" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1313970" OBJECT="java.lang.Integer|1313970" ID="ID_786973810" CREATED="1602173965242" MODIFIED="1602173965242"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_61273767" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="2703140" OBJECT="java.lang.Integer|2703140" ID="ID_1825515770" CREATED="1602173965270" MODIFIED="1602173965270"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1715259529" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="4965290" OBJECT="java.lang.Integer|4965290" ID="ID_869532339" CREATED="1602173965251" MODIFIED="1602173965251"/>
</node>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1797866900" CREATED="1602173889503" MODIFIED="1602249444225"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_591633199" CREATED="1602173889539" MODIFIED="1602249444148"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1258804384" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_554595590" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="11630" OBJECT="java.lang.Integer|11630" ID="ID_1258371973" CREATED="1602173965225" MODIFIED="1602173965225"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1297929677" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_501148678" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="97500" OBJECT="java.lang.Integer|97500" ID="ID_1286487078" CREATED="1602173965310" MODIFIED="1602173965310"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_519155633" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="112460" OBJECT="java.lang.Integer|112460" ID="ID_1714725675" CREATED="1602173965298" MODIFIED="1602173965298"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_714665585" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="120850" OBJECT="java.lang.Integer|120850" ID="ID_1614697654" CREATED="1602173965308" MODIFIED="1602173965308"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_563821409" CREATED="1602173889525" MODIFIED="1602249445180"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1008678386" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_301154469" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="13950" OBJECT="java.lang.Integer|13950" ID="ID_230683713" CREATED="1602173965208" MODIFIED="1602173965208"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1225666126" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="18860" OBJECT="java.lang.Integer|18860" ID="ID_1641696826" CREATED="1602173965235" MODIFIED="1602173965235"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1059950267" CREATED="1602173889505" MODIFIED="1602249445392"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Puelche
    </p>
  </body>
</html>
</richcontent>
<node TEXT="20810" OBJECT="java.lang.Integer|20810" ID="ID_931994967" CREATED="1602173965228" MODIFIED="1602173965228"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1101797458" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="51560" OBJECT="java.lang.Integer|51560" ID="ID_607491687" CREATED="1602173965205" MODIFIED="1602173965205"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_4015536" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="87840" OBJECT="java.lang.Integer|87840" ID="ID_1584760489" CREATED="1602173965223" MODIFIED="1602173965223"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_451446752" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="179100" OBJECT="java.lang.Integer|179100" ID="ID_468221972" CREATED="1602173965203" MODIFIED="1602173965203"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_962265330" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="246650" OBJECT="java.lang.Integer|246650" ID="ID_363357524" CREATED="1602173965199" MODIFIED="1602173965199"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1973626561" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1082960312" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="22580" OBJECT="java.lang.Integer|22580" ID="ID_37634381" CREATED="1602173965305" MODIFIED="1602173965305"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1806946584" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="42320" OBJECT="java.lang.Integer|42320" ID="ID_272089021" CREATED="1602173965301" MODIFIED="1602173965301"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1803761305" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="82570" OBJECT="java.lang.Integer|82570" ID="ID_354815051" CREATED="1602173965313" MODIFIED="1602173965314"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1768473935" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="114280" OBJECT="java.lang.Integer|114280" ID="ID_1804709849" CREATED="1602173965298" MODIFIED="1602173965298"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1067884251" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="126400" OBJECT="java.lang.Integer|126400" ID="ID_1298540121" CREATED="1602173965310" MODIFIED="1602173965310"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1336640059" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="336000" OBJECT="java.lang.Integer|336000" ID="ID_634163579" CREATED="1602173965295" MODIFIED="1602173965296"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1028658389" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1597610" OBJECT="java.lang.Integer|1597610" ID="ID_1489305162" CREATED="1602173965308" MODIFIED="1602173965308"/>
</node>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_386026174" CREATED="1602173889539" MODIFIED="1602249443370"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1945922190" CREATED="1602173889526" MODIFIED="1602249445831"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_328104129" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="8680" OBJECT="java.lang.Integer|8680" ID="ID_1464531765" CREATED="1602173965309" MODIFIED="1602173965309"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1936177756" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="37580" OBJECT="java.lang.Integer|37580" ID="ID_1517974890" CREATED="1602173965297" MODIFIED="1602173965297"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_447230840" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="44580" OBJECT="java.lang.Integer|44580" ID="ID_24495906" CREATED="1602173965301" MODIFIED="1602173965301"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1568915969" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="69050" OBJECT="java.lang.Integer|69050" ID="ID_1320395349" CREATED="1602173965309" MODIFIED="1602173965310"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1867200995" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="233260" OBJECT="java.lang.Integer|233260" ID="ID_1706760340" CREATED="1602173965298" MODIFIED="1602173965298"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1159142936" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="259780" OBJECT="java.lang.Integer|259780" ID="ID_293371445" CREATED="1602173965313" MODIFIED="1602173965313"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_507426808" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="873020" OBJECT="java.lang.Integer|873020" ID="ID_653029937" CREATED="1602173965307" MODIFIED="1602173965308"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_321533126" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="5802630" OBJECT="java.lang.Integer|5802630" ID="ID_90665604" CREATED="1602173965295" MODIFIED="1602173965295"/>
</node>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_69504349" CREATED="1602173889503" MODIFIED="1602249445186"><richcontent TYPE="DETAILS">

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
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_829397843" CREATED="1602173889503" MODIFIED="1602249443526"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo MAXI
    </p>
  </body>
</html>
</richcontent>
<node TEXT="13260" OBJECT="java.lang.Integer|13260" ID="ID_107248099" CREATED="1602173965187" MODIFIED="1602173965188"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_732123961" CREATED="1602173889510" MODIFIED="1602249444926"><richcontent TYPE="DETAILS">

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
<node TEXT="17360" OBJECT="java.lang.Integer|17360" ID="ID_1684571709" CREATED="1602173965212" MODIFIED="1602173965213"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_1320519318" CREATED="1602173889504" MODIFIED="1602249444901"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Dollinco
    </p>
  </body>
</html>
</richcontent>
<node TEXT="23030" OBJECT="java.lang.Integer|23030" ID="ID_995408100" CREATED="1602173965197" MODIFIED="1602173965197"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_491019602" CREATED="1602173889505" MODIFIED="1602249445006"><richcontent TYPE="DETAILS">

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
<node TEXT="33070" OBJECT="java.lang.Integer|33070" ID="ID_1412022136" CREATED="1602173965234" MODIFIED="1602173965235"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_659538591" CREATED="1602173889539" MODIFIED="1602249445919"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Gayo
    </p>
  </body>
</html>
</richcontent>
<node TEXT="56950" OBJECT="java.lang.Integer|56950" ID="ID_815877756" CREATED="1602173965204" MODIFIED="1602173965205"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1067961913" CREATED="1602173889504" MODIFIED="1602249445581"><richcontent TYPE="DETAILS">

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
<node TEXT="59000" OBJECT="java.lang.Integer|59000" ID="ID_553053081" CREATED="1602173965207" MODIFIED="1602173965208"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1213568808" CREATED="1602173889509" MODIFIED="1602249444402"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Apertus
    </p>
  </body>
</html>
</richcontent>
<node TEXT="73460" OBJECT="java.lang.Integer|73460" ID="ID_867194671" CREATED="1602173965189" MODIFIED="1602173965190"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" FOLDED="true" ID="ID_398566597" CREATED="1602173889505" MODIFIED="1602249445099"><richcontent TYPE="DETAILS">

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
<node TEXT="78060" OBJECT="java.lang.Integer|78060" ID="ID_567702695" CREATED="1602173965226" MODIFIED="1602173965226"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_721953403" CREATED="1602173889539" MODIFIED="1602249444305"><richcontent TYPE="DETAILS">

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
<node TEXT="89560" OBJECT="java.lang.Integer|89560" ID="ID_1412962996" CREATED="1602173965217" MODIFIED="1602173965218"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_315762523" CREATED="1602173889508" MODIFIED="1602249445222"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Otto
    </p>
  </body>
</html>
</richcontent>
<node TEXT="173320" OBJECT="java.lang.Integer|173320" ID="ID_1557320592" CREATED="1602173965225" MODIFIED="1602173965225"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_76512771" CREATED="1602173889504" MODIFIED="1602249444828"><richcontent TYPE="DETAILS">

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
<node TEXT="182180" OBJECT="java.lang.Integer|182180" ID="ID_682176851" CREATED="1602173965203" MODIFIED="1602173965203"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_795820154" CREATED="1602173889539" MODIFIED="1602249444636"><richcontent TYPE="DETAILS">

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
<node TEXT="1507460" OBJECT="java.lang.Integer|1507460" ID="ID_416742679" CREATED="1602173965192" MODIFIED="1602173965193"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_1323372974" CREATED="1602173889508" MODIFIED="1602249444958"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo ÑEQUE
    </p>
  </body>
</html>
</richcontent>
<node TEXT="1532480" OBJECT="java.lang.Integer|1532480" ID="ID_1052955029" CREATED="1602173965223" MODIFIED="1602173965223"/>
</node>
<node TEXT="=children.sum(0){it.to.num0}" ID="ID_594614750" CREATED="1602173889539" MODIFIED="1602249444779"><richcontent TYPE="DETAILS">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Trigo Fritz
    </p>
  </body>
</html>
</richcontent>
<node TEXT="5965420" OBJECT="java.lang.Integer|5965420" ID="ID_1779678187" CREATED="1602173965199" MODIFIED="1602173965199"/>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
