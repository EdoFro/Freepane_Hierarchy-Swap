<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Swap-o-Matic" FOLDED="false" ID="ID_1504294137" CREATED="1604620432707" MODIFIED="1604622319778" LINK="https://github.com/EdoFro" BACKGROUND_COLOR="#97c7dc" STYLE="oval">
<font SIZE="16" BOLD="true" ITALIC="true"/>
<hook NAME="MapStyle">
    <properties show_icon_for_attributes="true" fit_to_viewport="false" show_note_icons="true" edgeColorConfiguration="#808080ff,#ff0000ff,#0000ffff,#00ff00ff,#ff00ffff,#00ffffff,#7c0000ff,#00007cff,#007c00ff,#7c007cff,#007c7cff,#7c7c00ff"/>

<map_styles>
<stylenode LOCALIZED_TEXT="styles.root_node" STYLE="oval" UNIFORM_SHAPE="true" VGAP_QUANTITY="24.0 pt">
<font SIZE="24"/>
<stylenode LOCALIZED_TEXT="styles.predefined" POSITION="right" STYLE="bubble">
<stylenode LOCALIZED_TEXT="default" ICON_SIZE="12.0 pt" COLOR="#000000" STYLE="fork">
<font NAME="SansSerif" SIZE="10" BOLD="false" ITALIC="false"/>
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
<hook NAME="AutomaticEdgeColor" COUNTER="11" RULE="ON_BRANCH_CREATION"/>
<attribute_layout NAME_WIDTH="112.49999664723883 pt" VALUE_WIDTH="112.49999664723883 pt"/>
<attribute NAME="name" VALUE="swapOMatic"/>
<attribute NAME="version" VALUE="v0.0.1"/>
<attribute NAME="author" VALUE="EdoFro"/>
<attribute NAME="freeplaneVersionFrom" VALUE="v1.5.0"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="updateUrl" VALUE=""/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The homepage of this add-on should be set as the link of the root node.
    </p>
    <p>
      The basic properties of this add-on. They can be used in script names and other attributes, e.g. &quot;${name}.groovy&quot;.
    </p>
    <ul>
      <li>
        name: The name of the add-on, normally a technically one (no spaces, no special characters except _.-).
      </li>
      <li>
        author: Author's name(s) and (optionally) email adresses.
      </li>
      <li>
        version: Since it's difficult to protect numbers like 1.0 from Freeplane's number parser it's advised to prepend a 'v' to the number, e.g. 'v1.0'.
      </li>
      <li>
        freeplane-version-from: The oldest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too old.
      </li>
      <li>
        freeplane-version-to: Normally empty: The newest compatible Freeplane version. The add-on will not be installed if the Freeplane version is too new.
      </li>
      <li>
        updateUrl: URL of the file containing information (version, download url) on the latest version of this add-on. By default: &quot;${homepage}/version.properties&quot;
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="description" POSITION="left" ID="ID_641836308" CREATED="1604620484849" MODIFIED="1604620484853">
<edge COLOR="#ff0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Description would be awkward to edit as an attribute.
    </p>
    <p>
      So you have to put the add-on description as a child of the <i>'description'</i>&nbsp;node.
    </p>
    <p>
      To translate the description you have to define a translation for the key 'addons.${name}.description'.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="Swap-O-Matic is an AddOn for Freeplane that helps to easily swap hierarchical levels of nodes in an useful way," ID="ID_1324401936" CREATED="1604620739350" MODIFIED="1604620739350"/>
</node>
<node TEXT="changes" POSITION="left" ID="ID_1868659825" CREATED="1604620484857" MODIFIED="1604620484861">
<edge COLOR="#0000ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      Change log of this add-on: append one node for each noteworthy version and put the details for each version into a child node.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="v0.0.1" ID="ID_22086318" CREATED="1604621473220" MODIFIED="1604622257558">
<node TEXT="first release" ID="ID_1425771330" CREATED="1604621479114" MODIFIED="1604621487911"/>
</node>
</node>
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_501086586" CREATED="1604620484865" MODIFIED="1604620484868">
<edge COLOR="#00ff00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The add-ons's license that the user has to accept before she can install it.
    </p>
    <p>
      
    </p>
    <p>
      The License text has to be entered as a child of the <i>'license'</i>&nbsp;node, either as plain text or as HTML.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="&#xa;This add-on is free software: you can redistribute it and/or modify&#xa;it under the terms of the GNU General Public License as published by&#xa;the Free Software Foundation, either version 2 of the License, or&#xa;(at your option) any later version.&#xa;&#xa;This program is distributed in the hope that it will be useful,&#xa;but WITHOUT ANY WARRANTY; without even the implied warranty of&#xa;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the&#xa;GNU General Public License for more details.&#xa;" ID="ID_1758052572" CREATED="1604620484873" MODIFIED="1604620484875"/>
</node>
<node TEXT="preferences.xml" POSITION="left" ID="ID_872627162" CREATED="1604620484882" MODIFIED="1604620484886">
<edge COLOR="#ff00ff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">The child node contains the add-on configuration as an extension to mindmapmodemenu.xml (in Tools-&gt;Preferences-&gt;Add-ons). </font>
    </p>
    <p>
      <font color="#000000" face="SansSerif, sans-serif">Every property in the configuration should receive a default value in <i>default.properties</i>&nbsp;node.</font>
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="default.properties" POSITION="left" ID="ID_40953705" CREATED="1604620484889" MODIFIED="1604620484893">
<edge COLOR="#00ffff"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      These properties are used for:
    </p>
    <ul>
      <li>
        Each property defined in the preferences should have a default value in the attributes of this node.
      </li>
      <li>
        For each menu item with an icon add an attribute with the icon key (use developer tool menuItemInfo) as key and the icon path as value. Example: '${name}.icon': '/images/${name}-icon.png'
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
<node TEXT="translations" POSITION="left" ID="ID_33229270" CREATED="1604620484896" MODIFIED="1604620484900">
<edge COLOR="#7c0000"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      The translation keys that this script uses. Define one child node per supported locale. The attributes contain the translations. Define at least
    </p>
    <ul>
      <li>
        'addons.${name}' for the add-on's name
      </li>
      <li>
        'addons.${name}.description' for the description, e.g. in the add-on overview dialog (not necessary for English)
      </li>
      <li>
        'addons.${name}.&lt;scriptname&gt;' for each script since it will be the menu title.
      </li>
    </ul>
  </body>
</html>
</richcontent>
<node TEXT="en" ID="ID_175747664" CREATED="1604620484903" MODIFIED="1604621593329">
<attribute_layout NAME_WIDTH="160.4999952167274 pt" VALUE_WIDTH="89.24999734014281 pt"/>
<attribute NAME="addons.${name}" VALUE="Swap-o-Matic"/>
<attribute NAME="addons.${name}.initializeFieldsNode" VALUE="initialize FieldsNode"/>
<attribute NAME="addons.${name}.hierarchySwap" VALUE="hierarchy swap"/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_167193696" CREATED="1604620485103" MODIFIED="1604621203050">
<edge COLOR="#00007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      List of files and/or directories to remove on uninstall
    </p>
  </body>
</html>
</richcontent>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}.script.xml"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/initializeFieldsNode.groovy"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/hierarchySwap.groovy"/>
</node>
<node TEXT="scripts" POSITION="right" ID="ID_289359062" CREATED="1604620485123" MODIFIED="1604620485128">
<edge COLOR="#007c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain multiple scripts. The node text defines the script name (e.g. insertInlineImage.groovy). The name must have a suffix of a supported script language like .groovy or .js and may only consist of letters and digits. The script properties have to be configured via attributes:
    </p>
    <p>
      
    </p>
    <p>
      * menuLocation: &lt;locationkey&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Defines the menu location, defaults a sub menu 'main_menu_scripting/addons.${name}'.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;-&nbsp;Use developer tool menuItemInfo to inspect menu location keys.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * menuTitleKey: &lt;key&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The menu item title will be looked up under the translation key &lt;key&gt; - don't forget to define its translation.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * executionMode: &lt;mode&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The execution mode as described in the Freeplane wiki (http://freeplane.sourceforge.net/wiki/index.php/Scripting)
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SINGLE_NODE: Execute the script once. The <i>node</i>&nbsp;variable is set to the selected node.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SELECTED_NODE: Execute the script n times for n selected nodes, once for each node.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- ON_SELECTED_NODE_RECURSIVELY: Execute the script on every selected node and recursively on all of its children.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- In doubt use ON_SINGLE_NODE.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- This attribute is mandatory
    </p>
    <p>
      
    </p>
    <p>
      * keyboardShortcut: &lt;shortcut&gt;
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Optional: keyboard combination / accelerator for this script, e.g. control alt I
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- Use lowercase letters for modifiers and uppercase for letters. Use no + signs.
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- The available key names are listed at http://download.oracle.com/javase/1.4.2/docs/api/java/awt/event/KeyEvent.html#VK_0
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;In the list only entries with a 'VK_' prefix count. Omit the prefix in the shortcut definition.
    </p>
    <p>
      
    </p>
    <p>
      * Permissions&nbsp;that the script(s) require, each either false or true:
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_asking
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_file_restriction: permission to read files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_write_restriction: permission to create/change/delete files
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_exec_restriction: permission to execute other programs
    </p>
    <p>
      &nbsp;&nbsp;&nbsp;- execute_scripts_without_network_restriction: permission to access the network
    </p>
    <p>
      &nbsp;&nbsp;Notes:
    </p>
    <p>
      &nbsp;&nbsp;- The set of permissions is fixed.
    </p>
    <p>
      &nbsp;&nbsp;- Don't change the attribute names, don't omit one.
    </p>
    <p>
      &nbsp;&nbsp;- Set the values either to true or to false
    </p>
    <p>
      &nbsp;&nbsp;- In any case set execute_scripts_without_asking to true unless you want to annoy users.
    </p>
  </body>
</html>
</richcontent>
<node TEXT="initializeFieldsNode.groovy" FOLDED="true" ID="ID_116843327" CREATED="1604621116012" MODIFIED="1604621359303">
<attribute_layout NAME_WIDTH="202.4999939650299 pt" VALUE_WIDTH="202.4999939650299 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.initializeFieldsNode"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="nAttGroupBy = &apos;groupBy&apos;&#xa;nAttSortBy = &apos;sortBy&apos;&#xa;&#xa;&#xa;def fieldsNode = node&#xa;def k = fieldsNode.parent.getChildPosition(fieldsNode)&#xa;def baseNode =fieldsNode.parent.children[ k + 1 ]&#xa;&#xa;&#xa;def baseLevel=fieldsNode.getNodeLevel(true)&#xa;def cantNiveles = fieldsNode.children.size()&#xa;&#xa;if ( cantNiveles &gt;= 2 ) {&#xa;    def nodos= baseNode.find{it.getNodeLevel(true)&lt;= baseLevel + cantNiveles }&#xa;    def att = nodos.attributes.names.flatten().unique()&#xa;&#xa;    def gCases = [&apos;Text&apos;,&apos;Details&apos;] + att&#xa;    def sortCases = [&apos;Text&apos;,&apos;TextNum&apos;,&apos;Details&apos;]  + att&#xa;&#xa;    def msgGroupBy = &quot;\n(actual: ${fieldsNode[nAttGroupBy]?:&apos; - &apos;})&quot;&#xa;    def msgSortBy = &quot;\n(actual: ${fieldsNode[nAttSortBy]?:&apos; - &apos;})&quot;&#xa;&#xa;    def groupBy = getUserChoice(gCases,&quot;Select grouping criteria:&quot; + msgGroupBy, 0)&#xa;    if (groupBy){&#xa;        fieldsNode[nAttGroupBy] = groupBy&#xa;        def sortBy = getUserChoice(sortCases,&quot;Select sorting criteria:&quot; + msgSortBy, 0)&#xa;        if (sortBy){&#xa;            fieldsNode[nAttSortBy] = sortBy&#xa;            fieldsNode.children.eachWithIndex{it, i -&gt;&#xa;                it.details = (i+1).toString()&#xa;            }&#xa;        } else {&#xa;            fieldsNode[nAttGroupBy] = null&#xa;            c.statusInfo = &quot; --- canceled ---&quot;&#xa;        }&#xa;    } else {&#xa;        c.statusInfo = &quot; --- canceled ---&quot;&#xa;    }&#xa;} else {&#xa;    c.statusInfo = &quot; --- canceled (less than 2 fields defined) ---&quot;&#xa;}&#xa;&#xa;&#xa;//----------Methods-----------------------&#xa;def getUserChoice(alternativas, mensaje, defaultOption){&#xa;    def texto = new StringBuilder()&#xa;    texto &lt;&lt; mensaje &lt;&lt; &quot;\n\n&quot;&#xa;    alternativas.eachWithIndex{gC, i -&gt;&#xa;        texto &lt;&lt;  i &lt;&lt; &quot; - &quot; &lt;&lt; gC &lt;&lt; &apos;\n&apos;&#xa;    }&#xa;    texto &lt;&lt; &apos;\n\n&apos;&#xa;&#xa;    def cancel = false&#xa;    def respOK = false&#xa;    def response&#xa;    while (!cancel &amp;&amp; !respOK){&#xa;        response = ui.showInputDialog(node.delegate, texto.toString(), defaultOption.toString())&#xa;        cancel = !response?true:false&#xa;        respOK = !cancel?response.isNumber() &amp;&amp; response.toDouble()&gt;=0 &amp;&amp; response.toDouble()&lt; alternativas.size()?true:false:false&#xa;    }&#xa;    response?alternativas[response.toDouble().toInteger()]:null&#xa;}" ID="ID_1973022131" CREATED="1604622428533" MODIFIED="1604622428540"/>
</node>
<node TEXT="hierarchySwap.groovy" FOLDED="true" ID="ID_899243503" CREATED="1604621116019" MODIFIED="1604621369076">
<attribute_layout NAME_WIDTH="202.4999939650299 pt" VALUE_WIDTH="202.4999939650299 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.hierarchySwap"/>
<attribute NAME="menuLocation" VALUE="main_menu_scripting/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="// @ExecutionModes({ON_SINGLE_NODE=&quot;/main_menu/ScriptsEdo/Swap-O-Matic&quot;})&#xa;&#xa;&#xa;nAttGroupBy = &apos;groupBy&apos;&#xa;nAttSortBy = &apos;sortBy&apos;&#xa;&#xa;def fieldsNode = getFieldsNode(node, nAttGroupBy)&#xa;&#xa;c.statusInfo = fieldsNode?&quot;Hierarchy-Swap applied: (using parameters defined in &apos;$fieldsNode&apos;)&quot;:&quot;Simple Hierarchy-Swap applied&quot;&#xa;&#xa;if(!fieldsNode){&#xa;    // ui.informationMessage(&quot;aplicando swap simple&quot;)&#xa;    groupByClsre = groupCriterio(&apos;TEXT&apos;)&#xa;    sortByClsre = sortCriterio(&apos;TEXT&apos;)&#xa;    def nodos = c.selecteds&#xa;    nodos.each{applySwap(it,&apos;TEXT&apos;,&apos;TEXT&apos;)}&#xa;} else {&#xa;    // ui.informationMessage(&quot;aplicando swap complejo&quot;)&#xa;    def baseLevel=fieldsNode.getNodeLevel(true)&#xa;    def k = getChildPos(fieldsNode)&#xa;    def baseNode =fieldsNode.parent.children[ k + 1 ]&#xa;&#xa;    if ( baseNode.find{true}.size() &gt; 100 ) { baseNode.folded = true }&#xa;&#xa;    def attGroupBy = fieldsNode[nAttGroupBy]?:&quot;&quot;&#xa;    def attSortBy = fieldsNode[nAttSortBy]?:attGroupBy&#xa;    groupByClsre = groupCriterio(attGroupBy)&#xa;    sortByClsre = sortCriterio(attSortBy)&#xa;&#xa;    fieldsNode.children.eachWithIndex{fieldNode, i -&gt;&#xa;        def j=0&#xa;        while ( i + 1 &lt; fieldNode.details.to.num0 &amp;&amp; j&lt;5 ) {&#xa;            def prevLevel = fieldNode.details.to.num0&#xa;            def inMapLevel = baseLevel + prevLevel - 2&#xa;            def thatLevelNodes = baseNode.find{it.getNodeLevel(true)==inMapLevel}&#xa;            thatLevelNodes.each{ applySwap(it,attGroupBy,attSortBy) }&#xa;            def fallingFieldNode = fieldsNode.children.find{it.details.to.num0 == prevLevel - 1}&#xa;            fieldNode.details = prevLevel - 1&#xa;            fallingFieldNode.details = prevLevel&#xa;            j++&#xa;        }&#xa;        fieldNode.details = i + 1&#xa;    }&#xa;}&#xa;&#xa;// region: Closures&#xa;&#xa;Closure groupCriterio(t){&#xa;    switch (t.toUpperCase()){&#xa;        case [&apos;TEXT&apos;,&quot;&quot;]:&#xa;            return {a, b, e -&gt; a.plainText == b.plainText}&#xa;            break&#xa;        case &apos;DETAILS&apos;:&#xa;            return {a, b, e -&gt; a.details.to.plain == b.details.to.plain}&#xa;            break&#xa;        default:&#xa;            return {a, b, e -&gt; a[e] == b[e] }&#xa;            break&#xa;    }&#xa;}&#xa;&#xa;Closure sortCriterio(t){&#xa;    switch (t.toUpperCase()){&#xa;        case [&apos;TEXT&apos;,&quot;&quot;]:&#xa;            return {a, e  -&gt; a.plainText}&#xa;            break&#xa;        case  &apos;TEXTNUM&apos;:&#xa;            return {a, e  -&gt; a.to.num0 * -1}&#xa;            break&#xa;        case &apos;DETAILS&apos;:&#xa;            return {a, e -&gt; a.details.to.plain}&#xa;            break&#xa;        default:&#xa;            return {a, e -&gt; a[e]?a[e].isNumber()?a[e].to.num0 * -1:a[e].toString():&quot;&quot;}&#xa;            break&#xa;    }&#xa;}&#xa;// end&#xa;&#xa;// region: Methods&#xa;&#xa;def applySwap(n,t,s){&#xa;    toUngroup(n)&#xa;    toSwap(n)&#xa;    toGroup(n,t.toString())&#xa;    sortChilds(n,s.toString())&#xa;    n.children.each{sortChilds(it,s.toString())}&#xa;}&#xa;&#xa;def toUngroup(n){&#xa;    def q1 = n.children.size()&#xa;    n.children.each{ n1 -&gt;&#xa;        def q = n1.children.size()&#xa;        for (def i = 1; i &lt; q; i++) {&#xa;            n.appendChild(n1)//.folded = true&#xa;        }&#xa;        for (def i = q - 1; i&gt;0; i--){&#xa;            n1.children[i].moveTo(n.children[i+q1-1])&#xa;        }&#xa;        q1 += q - 1&#xa;    }&#xa;}&#xa;&#xa;def toSwap(n){&#xa;    n.children.each{n1 -&gt;&#xa;        def n2 = n1.children[0]&#xa;        def childs =[] + n2.children&#xa;        n2.moveTo(n)&#xa;        n1.moveTo(n2)&#xa;        childs.each{&#xa;            it.moveTo(n1)&#xa;        }&#xa;    }&#xa;}&#xa;&#xa;def toGroup(n,t){&#xa;    def i = 0&#xa;    while (i &lt; n.children.size()) {&#xa;        def childNode_i = n.children[i]&#xa;        def alikeNodes = n.children.findAll{m -&gt; groupByClsre(m,childNode_i,t)} - childNode_i&#xa;        alikeNodes.each{ig-&gt;&#xa;            ig.children.each{it.moveTo(childNode_i)}&#xa;            ig.delete()&#xa;        }&#xa;        i++&#xa;    }&#xa;}&#xa;&#xa;def sortChilds(n, t){&#xa;    def sorted = new ArrayList(n.children).sort{ it -&gt; sortByClsre(it, t) }&#xa;    sorted.eachWithIndex { it, i -&gt;&#xa;        it.moveTo(n, i)&#xa;    }&#xa;}&#xa;&#xa;def getFieldsNode(n, attr){&#xa;    def fNode = n.pathToRoot.find{it.attributes.containsKey(attr)}?:getFieldsNode2(n, attr)&#xa;    return fNode&#xa;}&#xa;&#xa;def getFieldsNode2(n, attr){&#xa;    def nodos = n.pathToRoot.drop(1).reverse()&#xa;    &#xa;    def baseNodeX = nodos.find{m -&gt;&#xa;        def i = getChildPos(m);&#xa;        i&gt;0 &amp;&amp; m.parent.children[ i - 1 ].attributes.containsKey(attr)&#xa;    }&#xa;    return baseNodeX?baseNodeX.parent.children[getChildPos(baseNodeX)-1]:null&#xa;}&#xa;&#xa;def getChildPos(n){&#xa;    return n.parent.getChildPosition(n)&#xa;}&#xa;&#xa;// end" ID="ID_1098383380" CREATED="1604622428542" MODIFIED="1604622428543"/>
</node>
</node>
<node TEXT="lib" POSITION="right" ID="ID_1626627613" CREATED="1604620485147" MODIFIED="1604620485150">
<edge COLOR="#7c007c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing binary files (normally .jar files) to be added to the add-on's classpath.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The immediate child nodes contain the name of the file, e.g. 'mysql-connector-java-5.1.25.jar'). Put the file into a 'lib' subdirectory of the add-on base directory.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The child nodes of these nodes contain the actual files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- Any lib file will be extracted in &lt;installationbase&gt;/&lt;addonname&gt;/lib.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="zips" POSITION="right" ID="ID_1861235775" CREATED="1604620485155" MODIFIED="1604620485159">
<edge COLOR="#007c7c"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may contain any number of nodes containing zip files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The immediate child nodes contain a description of the zip. The devtools script releaseAddOn.groovy allows automatic zip creation if the name of this node matches a directory in the current directory.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The child nodes of these nodes contain the actual zip files.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- Any zip file will be extracted in the &lt;installationbase&gt;. Currently, &lt;installationbase&gt; is always Freeplane's &lt;userhome&gt;, e.g. ~/.freeplane/1.3.
    </p>
    <p>
      
    </p>
    <p>
      &nbsp;- The files will be processed in the sequence as seen in the map.
    </p>
  </body>
</html>
</richcontent>
</node>
<node TEXT="images" POSITION="right" ID="ID_711900479" CREATED="1604620485163" MODIFIED="1604620485166">
<edge COLOR="#7c7c00"/>
<richcontent TYPE="NOTE">

<html>
  <head>
    
  </head>
  <body>
    <p>
      An add-on may define any number of images as child nodes of the images node. The actual image data has to be placed as base64 encoded binary data into the text of a subnode.
    </p>
    <p>
      The images are saved to the <i>${installationbase}/resources/images</i>&nbsp;directory.
    </p>
    <p>
      
    </p>
    <p>
      The following images should be present:
    </p>
    <ul>
      <li>
        <i>${name}-icon.png</i>, like <i>oldicons-theme-icon.png</i>. This will be used in the app-on overview.
      </li>
      <li>
        <i>${name}-screenshot-1.png</i>, like <i>oldicons-theme-screenshot-1.png</i>. This will be used in the app-on details dialog. Further images can be included but they are not used yet.
      </li>
    </ul>
    <p>
      Images can be added automatically by releaseAddOn.groovy or must be uploaded into the map via the script <i>Tools-&gt;Scripts-&gt;Insert Binary</i>&nbsp;since they have to be (base64) encoded as simple strings.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</map>
