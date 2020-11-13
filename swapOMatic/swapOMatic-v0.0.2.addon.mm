<map version="freeplane 1.8.0">
<!--To view this file, download free mind mapping software Freeplane from http://freeplane.sourceforge.net -->
<node TEXT="Swap-o-Matic" FOLDED="false" ID="ID_1504294137" CREATED="1604620432707" MODIFIED="1605275964727" LINK="https://github.com/EdoFro/Freepane_Hierarchy-Swap" BACKGROUND_COLOR="#97c7dc" STYLE="oval">
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
<attribute NAME="version" VALUE="v0.0.2"/>
<attribute NAME="author" VALUE="EdoFro"/>
<attribute NAME="freeplaneVersionFrom" VALUE="v1.5.0"/>
<attribute NAME="freeplaneVersionTo" VALUE=""/>
<attribute NAME="updateUrl" VALUE="https://raw.githubusercontent.com/EdoFro/Freepane_Hierarchy-Swap/main/swapOMatic/version.properties"/>
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
<node TEXT="description" POSITION="left" ID="ID_641836308" CREATED="1604620484849" MODIFIED="1605275964728">
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
<node TEXT="changes" POSITION="left" ID="ID_1868659825" CREATED="1604620484857" MODIFIED="1605275964744">
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
<node TEXT="v0.0.2" ID="ID_363967693" CREATED="1605271754963" MODIFIED="1605271759856">
<node TEXT="isSwapable() verification added to SimpleSwap" ID="ID_1474531030" CREATED="1605271761621" MODIFIED="1605275652160"/>
<node TEXT="changed to menu_bar/edoTools/" ID="ID_920761997" CREATED="1605274800597" MODIFIED="1605274825358"/>
<node TEXT="added keyboardshortcut to HierarchySwap" ID="ID_657236778" CREATED="1605275595713" MODIFIED="1605275621593"/>
</node>
</node>
<node TEXT="license" FOLDED="true" POSITION="left" ID="ID_501086586" CREATED="1604620484865" MODIFIED="1605275964744">
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
<node TEXT="preferences.xml" POSITION="left" ID="ID_872627162" CREATED="1604620484882" MODIFIED="1605275964759">
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
<node TEXT="default.properties" POSITION="left" ID="ID_40953705" CREATED="1604620484889" MODIFIED="1605275964775">
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
<node TEXT="translations" POSITION="left" ID="ID_33229270" CREATED="1604620484896" MODIFIED="1605275964775">
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
<node TEXT="en" ID="ID_175747664" CREATED="1604620484903" MODIFIED="1605274741813">
<attribute_layout NAME_WIDTH="172.49999485909953 pt" VALUE_WIDTH="172.49999485909953 pt"/>
<attribute NAME="addons.${name}" VALUE="Swap-o-Matic"/>
<attribute NAME="addons.${name}.initializeFieldsNode" VALUE="initialize FieldsNode"/>
<attribute NAME="addons.${name}.hierarchySwap" VALUE="hierarchy swap"/>
<attribute NAME="addons.${name}.openHelpMap" VALUE="open Swap-o-Matic guide map"/>
</node>
</node>
<node TEXT="deinstall" POSITION="left" ID="ID_167193696" CREATED="1604620485103" MODIFIED="1605275964790">
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
<attribute NAME="delete" VALUE="${installationbase}/doc/Swap-O-Matic guide.mm"/>
<attribute NAME="delete" VALUE="${installationbase}/addons/${name}/scripts/openHelpMap.groovy"/>
</node>
<node TEXT="scripts" POSITION="right" ID="ID_289359062" CREATED="1604620485123" MODIFIED="1605275964790">
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
<node TEXT="initializeFieldsNode.groovy" FOLDED="true" ID="ID_116843327" CREATED="1604621116012" MODIFIED="1605274711200">
<attribute_layout NAME_WIDTH="202.4999939650299 pt" VALUE_WIDTH="202.4999939650299 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.initializeFieldsNode"/>
<attribute NAME="menuLocation" VALUE="/menu_bar/edoTools/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="nAttGroupBy = &apos;groupBy&apos;&#xa;nAttSortBy = &apos;sortBy&apos;&#xa;&#xa;&#xa;def fieldsNode = node&#xa;def k = fieldsNode.parent.getChildPosition(fieldsNode)&#xa;def baseNode =fieldsNode.parent.children[ k + 1 ]&#xa;&#xa;&#xa;def baseLevel=fieldsNode.getNodeLevel(true)&#xa;def cantNiveles = fieldsNode.children.size()&#xa;&#xa;if ( cantNiveles &gt;= 2 ) {&#xa;    def nodos= baseNode.find{it.getNodeLevel(true)&lt;= baseLevel + cantNiveles }&#xa;    def att = nodos.attributes.names.flatten().unique()&#xa;&#xa;    def gCases = [&apos;Text&apos;,&apos;Details&apos;] + att&#xa;    def sortCases = [&apos;Text&apos;,&apos;TextNum&apos;,&apos;Details&apos;]  + att&#xa;&#xa;    def msgGroupBy = &quot;\n(actual: ${fieldsNode[nAttGroupBy]?:&apos; - &apos;})&quot;&#xa;    def msgSortBy = &quot;\n(actual: ${fieldsNode[nAttSortBy]?:&apos; - &apos;})&quot;&#xa;&#xa;    def groupBy = getUserChoice(gCases,&quot;Select grouping criteria:&quot; + msgGroupBy, 0)&#xa;    if (groupBy){&#xa;        fieldsNode[nAttGroupBy] = groupBy&#xa;        def sortBy = getUserChoice(sortCases,&quot;Select sorting criteria:&quot; + msgSortBy, 0)&#xa;        if (sortBy){&#xa;            fieldsNode[nAttSortBy] = sortBy&#xa;            fieldsNode.children.eachWithIndex{it, i -&gt;&#xa;                it.details = (i+1).toString()&#xa;            }&#xa;        } else {&#xa;            fieldsNode[nAttGroupBy] = null&#xa;            c.statusInfo = &quot; --- canceled ---&quot;&#xa;        }&#xa;    } else {&#xa;        c.statusInfo = &quot; --- canceled ---&quot;&#xa;    }&#xa;} else {&#xa;    c.statusInfo = &quot; --- canceled (less than 2 fields defined) ---&quot;&#xa;}&#xa;&#xa;&#xa;//----------Methods-----------------------&#xa;def getUserChoice(alternativas, mensaje, defaultOption){&#xa;    def texto = new StringBuilder()&#xa;    texto &lt;&lt; mensaje &lt;&lt; &quot;\n\n&quot;&#xa;    alternativas.eachWithIndex{gC, i -&gt;&#xa;        texto &lt;&lt;  i &lt;&lt; &quot; - &quot; &lt;&lt; gC &lt;&lt; &apos;\n&apos;&#xa;    }&#xa;    texto &lt;&lt; &apos;\n\n&apos;&#xa;&#xa;    def cancel = false&#xa;    def respOK = false&#xa;    def response&#xa;    while (!cancel &amp;&amp; !respOK){&#xa;        response = ui.showInputDialog(node.delegate, texto.toString(), defaultOption.toString())&#xa;        cancel = !response?true:false&#xa;        respOK = !cancel?response.isNumber() &amp;&amp; response.toDouble()&gt;=0 &amp;&amp; response.toDouble()&lt; alternativas.size()?true:false:false&#xa;    }&#xa;    response?alternativas[response.toDouble().toInteger()]:null&#xa;}" ID="ID_708104244" CREATED="1605275995438" MODIFIED="1605275995450"/>
</node>
<node TEXT="hierarchySwap.groovy" FOLDED="true" ID="ID_899243503" CREATED="1604621116019" MODIFIED="1605275588173">
<attribute_layout NAME_WIDTH="202.4999939650299 pt" VALUE_WIDTH="202.4999939650299 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.hierarchySwap"/>
<attribute NAME="menuLocation" VALUE="/menu_bar/edoTools/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE="control shift H"/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="// @ExecutionModes({ON_SINGLE_NODE=&quot;/main_menu/ScriptsEdo/Swap-O-Matic&quot;})&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;nAttGroupBy = &apos;groupBy&apos;&#xd;&#xa;nAttSortBy = &apos;sortBy&apos;&#xd;&#xa;&#xd;&#xa;def fieldsNode = getFieldsNode(node, nAttGroupBy)&#xd;&#xa;&#xd;&#xa;c.statusInfo = fieldsNode?&quot;Hierarchy-Swap applied: (using parameters defined in &apos;$fieldsNode&apos;)&quot;:&quot;Simple Hierarchy-Swap applied&quot;&#xd;&#xa;&#xd;&#xa;if(!fieldsNode){&#xd;&#xa;    // ui.informationMessage(&quot;aplicando swap simple&quot;)&#xd;&#xa;    groupByClsre = groupCriterio(&apos;TEXT&apos;)&#xd;&#xa;    sortByClsre = sortCriterio(&apos;TEXT&apos;)&#xd;&#xa;    def nodos = c.selecteds&#xd;&#xa;    nodos.each{&#xd;&#xa;        if (isSwappable(it)){&#xd;&#xa;            applySwap(it,&apos;TEXT&apos;,&apos;TEXT&apos;)&#xd;&#xa;        } else {&#xd;&#xa;            c.statusInfo = &quot;node $it.text couldn&apos;t be swapped&quot;&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;} else {&#xd;&#xa;    // ui.informationMessage(&quot;aplicando swap complejo&quot;)&#xd;&#xa;    def baseLevel=fieldsNode.getNodeLevel(true)&#xd;&#xa;    def k = getChildPos(fieldsNode)&#xd;&#xa;    def baseNode =fieldsNode.parent.children[ k + 1 ]&#xd;&#xa;&#xd;&#xa;    if ( baseNode.find{true}.size() &gt; 100 ) { baseNode.folded = true }&#xd;&#xa;&#xd;&#xa;    def attGroupBy = fieldsNode[nAttGroupBy]?:&quot;&quot;&#xd;&#xa;    def attSortBy = fieldsNode[nAttSortBy]?:attGroupBy&#xd;&#xa;    groupByClsre = groupCriterio(attGroupBy)&#xd;&#xa;    sortByClsre = sortCriterio(attSortBy)&#xd;&#xa;&#xd;&#xa;    fieldsNode.children.eachWithIndex{fieldNode, i -&gt;&#xd;&#xa;        def j=0&#xd;&#xa;        while ( i + 1 &lt; fieldNode.details.to.num0 &amp;&amp; j&lt;5 ) {&#xd;&#xa;            def prevLevel = fieldNode.details.to.num0&#xd;&#xa;            def inMapLevel = baseLevel + prevLevel - 2&#xd;&#xa;            def thatLevelNodes = baseNode.find{it.getNodeLevel(true)==inMapLevel}&#xd;&#xa;            thatLevelNodes.each{ applySwap(it,attGroupBy,attSortBy) }&#xd;&#xa;            def fallingFieldNode = fieldsNode.children.find{it.details.to.num0 == prevLevel - 1}&#xd;&#xa;            fieldNode.details = prevLevel - 1&#xd;&#xa;            fallingFieldNode.details = prevLevel&#xd;&#xa;            j++&#xd;&#xa;        }&#xd;&#xa;        fieldNode.details = i + 1&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;// region: Closures&#xd;&#xa;&#xd;&#xa;Closure groupCriterio(t){&#xd;&#xa;    switch (t.toUpperCase()){&#xd;&#xa;        case [&apos;TEXT&apos;,&quot;&quot;]:&#xd;&#xa;            return {a, b, e -&gt; a.plainText == b.plainText}&#xd;&#xa;            break&#xd;&#xa;        case &apos;DETAILS&apos;:&#xd;&#xa;            return {a, b, e -&gt; a.details.to.plain == b.details.to.plain}&#xd;&#xa;            break&#xd;&#xa;        default:&#xd;&#xa;            return {a, b, e -&gt; a[e] == b[e] }&#xd;&#xa;            break&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;Closure sortCriterio(t){&#xd;&#xa;    switch (t.toUpperCase()){&#xd;&#xa;        case [&apos;TEXT&apos;,&quot;&quot;]:&#xd;&#xa;            return {a, e  -&gt; a.plainText}&#xd;&#xa;            break&#xd;&#xa;        case  &apos;TEXTNUM&apos;:&#xd;&#xa;            return {a, e  -&gt; a.to.num0 * -1}&#xd;&#xa;            break&#xd;&#xa;        case &apos;DETAILS&apos;:&#xd;&#xa;            return {a, e -&gt; a.details.to.plain}&#xd;&#xa;            break&#xd;&#xa;        default:&#xd;&#xa;            return {a, e -&gt; a[e]?a[e].isNumber()?a[e].to.num0 * -1:a[e].toString():&quot;&quot;}&#xd;&#xa;            break&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;// end&#xd;&#xa;&#xd;&#xa;// region: Methods&#xd;&#xa;&#xd;&#xa;def applySwap(n,t,s){&#xd;&#xa;    toUngroup(n)&#xd;&#xa;    toSwap(n)&#xd;&#xa;    toGroup(n,t.toString())&#xd;&#xa;    sortChilds(n,s.toString())&#xd;&#xa;    n.children.each{sortChilds(it,s.toString())}&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def toUngroup(n){&#xd;&#xa;    def q1 = n.children.size()&#xd;&#xa;    n.children.each{ n1 -&gt;&#xd;&#xa;        def q = n1.children.size()&#xd;&#xa;        for (def i = 1; i &lt; q; i++) {&#xd;&#xa;            n.appendChild(n1)//.folded = true&#xd;&#xa;        }&#xd;&#xa;        for (def i = q - 1; i&gt;0; i--){&#xd;&#xa;            n1.children[i].moveTo(n.children[i+q1-1])&#xd;&#xa;        }&#xd;&#xa;        q1 += q - 1&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def toSwap(n){&#xd;&#xa;    n.children.each{n1 -&gt;&#xd;&#xa;        def n2 = n1.children[0]&#xd;&#xa;        def childs =[] + n2.children&#xd;&#xa;        n2.moveTo(n)&#xd;&#xa;        n1.moveTo(n2)&#xd;&#xa;        childs.each{&#xd;&#xa;            it.moveTo(n1)&#xd;&#xa;        }&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def toGroup(n,t){&#xd;&#xa;    def i = 0&#xd;&#xa;    while (i &lt; n.children.size()) {&#xd;&#xa;        def childNode_i = n.children[i]&#xd;&#xa;        def alikeNodes = n.children.findAll{m -&gt; groupByClsre(m,childNode_i,t)} - childNode_i&#xd;&#xa;        alikeNodes.each{ig-&gt;&#xd;&#xa;            ig.children.each{it.moveTo(childNode_i)}&#xd;&#xa;            ig.delete()&#xd;&#xa;        }&#xd;&#xa;        i++&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def sortChilds(n, t){&#xd;&#xa;    def sorted = new ArrayList(n.children).sort{ it -&gt; sortByClsre(it, t) }&#xd;&#xa;    sorted.eachWithIndex { it, i -&gt;&#xd;&#xa;        it.moveTo(n, i)&#xd;&#xa;    }&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def getFieldsNode(n, attr){&#xd;&#xa;    def fNode = n.pathToRoot.find{it.attributes.containsKey(attr)}?:getFieldsNode2(n, attr)&#xd;&#xa;    return fNode&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def getFieldsNode2(n, attr){&#xd;&#xa;    def nodos = n.pathToRoot.drop(1).reverse()&#xd;&#xa;    &#xd;&#xa;    def baseNodeX = nodos.find{m -&gt;&#xd;&#xa;        def i = getChildPos(m);&#xd;&#xa;        i&gt;0 &amp;&amp; m.parent.children[ i - 1 ].attributes.containsKey(attr)&#xd;&#xa;    }&#xd;&#xa;    return baseNodeX?baseNodeX.parent.children[getChildPos(baseNodeX)-1]:null&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def getChildPos(n){&#xd;&#xa;    return n.parent.getChildPosition(n)&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def isSwappable(n) {&#xd;&#xa;    !n.leaf &amp;&amp; !n.children.any{it.leaf}&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;// end" ID="ID_1709493482" CREATED="1605275995453" MODIFIED="1605275995455"/>
</node>
<node TEXT="openHelpMap.groovy" FOLDED="true" ID="ID_1629469125" CREATED="1604939233032" MODIFIED="1605274735600">
<attribute_layout NAME_WIDTH="202.4999939650299 pt" VALUE_WIDTH="202.4999939650299 pt"/>
<attribute NAME="menuTitleKey" VALUE="addons.${name}.openHelpMap"/>
<attribute NAME="menuLocation" VALUE="/menu_bar/edoTools/addons.${name}"/>
<attribute NAME="executionMode" VALUE="on_single_node"/>
<attribute NAME="keyboardShortcut" VALUE=""/>
<attribute NAME="execute_scripts_without_asking" VALUE="true"/>
<attribute NAME="execute_scripts_without_file_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_write_restriction" VALUE="true"/>
<attribute NAME="execute_scripts_without_exec_restriction" VALUE="false"/>
<attribute NAME="execute_scripts_without_network_restriction" VALUE="false"/>
<node TEXT="&#xd;&#xa;//opens help map with instructions and examples&#xd;&#xa;&#xd;&#xa;def helpFile = &quot;Swap-O-Matic guide.mm&quot;&#xd;&#xa;def dir = c.userDirectory.path&#xd;&#xa;def sep = File.separator&#xd;&#xa;def pathName = dir + sep + &quot;doc&quot; + sep + helpFile&#xd;&#xa;&#xd;&#xa;&#xd;&#xa;if(exists(pathName)){&#xd;&#xa;    c.mapLoader(pathName).withView().load()&#xd;&#xa;}&#xd;&#xa;&#xd;&#xa;def exists(String path){new File(path).isFile()}&#xd;&#xa;" ID="ID_1338436373" CREATED="1605275995456" MODIFIED="1605275995457"/>
</node>
</node>
<node TEXT="lib" POSITION="right" ID="ID_1626627613" CREATED="1604620485147" MODIFIED="1605275964806">
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
<node TEXT="zips" POSITION="right" ID="ID_1861235775" CREATED="1604620485155" MODIFIED="1605275964806">
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
<node TEXT="doc" FOLDED="true" ID="ID_1045523084" CREATED="1381488224452" MODIFIED="1381488224452" LINK="zips/doc/">
<node TEXT="UEsDBBQACAgIACdSa1EAAAAAAAAAAAAAAAAZAAAAZG9jL1N3YXAtTy1NYXRpYyBndWlkZS5tbe&#xa;1963LbSLLm/43Yd0CrI3pmImwada8a9yVkW25rRy332vLM9tnYUEAkKGFMEloAtFrnzL77ZhYA&#xa;EgQSEkmR9rhtOWxTBAlUZeXly0tlfT+NroMPcZYn6eyHg3EWx9eTaBYHbGAH4cGP//2/ff/N48&#xa;dnafAhiW+C4irJg3EyiR8Fo/RmNkmjUYBfCabJbBTAna6T2WWQp+PiJsri4OXibuMsnQZXRXH9&#xa;1ydPFs8Y5Ok8G8bjNLuMB7O4CB4/xufN0lEcnB39r7MfDt7ewOAeByn8/SUqkuFB8PL1yYujFz&#xa;DQaJLHB8ExvDx+cc6kCa0R0oiD4Pmbo8Mz/AjTodRhKEInjTkIfnn94vjl8fICE4pxJw+Ct2e/&#xa;nRz9cHAxv7iYxH7G43RWBG+P/wPeZfbgCb51labvg9PDX+CtX6Lrt8Vt+dEAfr6/ztLrOCuSGG&#xa;lTnBfpORLrOs2KxTjzq/TmPBmms3OY7XlUFFlyMS/i/IeDIpvX12dpEfsPLd6OR5fx83SSZs/T&#xa;2Ti5nGdABFymb22If8bjR9+OxyH84Kvy//IVvltfXb5XvjLD5jfMsHyF79ZXl++Vr/B/vOpJAc&#xa;SAhT7PkQQ5ksa/8ot28vr54QmQ7cV5uXzlZwZZmhbn+IEFrdMP0eQgeHd6/PL1m1/O3746/PWo&#xa;nvLffz789fx/vjs8PTs+++2HAy4HYXBdtJeFy3JZ7n32dRaP4nEyi0cHwa+v3x6fHb8+/eEgSy&#xa;6vCmrl++8Hd4nmE/jS8fPXp+cVc/BycMHz1yev38CyhP5ncWNY6/fLkZfc8zaa5W/jLBkf1BwG&#xa;n38GXL3k6TN48PP6Vz/NJ4txrTVI/4HBKC6iZJLfR6iV7yw5s01x94CRIGN3ifTs8Pnffn7z+t&#xa;3pi/P6UsmiB176z+F+P8NanRy9PNtoDmNQSwXoIT8DlKB6Oa6SUXyOb5S3G07S+WgxqnGIf2BR&#xa;SmYsx/Xm6PkZNe91qVAx4TyPs8e7YcPqjkV6jdqwHjyz1tmLO/nuJLmIS/URIAt2uc+L30ZrXI&#xa;0ln1+0hjMcCnGPGOx1ON0Rae1cGH68QSRTVP/RrFRcqNODZ++OT86OYdVv43wHPHU4L9Ip2sST&#xa;6DadFw9kq9bdBpP4QzzxirtXuZU63IvL+avXb47/4/UpKK7zXw7f/IyzZGGlG8tP/P3ozdnxc+&#xa;J6j71dlxrkwB+x5qiFAJXSfozexWN48zEXUrjOY+QuHiOWj0EubvJxbYd28RjZ0Cf+p/OYcBeP&#xa;Ufcpc/preruvme2+Zrf7mtvuazVhN/4eu1+RPFkFa08QyLYA7eLmRzXcRE54d3p29AbtfvDmHc&#xa;o7oJ5nbw5Pn7869wgbNE358CwZXoF+K2Lgk7Pf0Ha+ODo7PD55i+wDzymmkx8BJ39/FUejHz1g&#xa;xt+e1L9+f5GObn+sgHT5fxC8SsHXSOHaj98nP75KQElnw6vbAN2B758kP37/5OLH72YX+fVTMC&#xa;3BaD6dAvYub/HE3wM+4O8Kj/GP//5JY5T0oE9fnx09YMQ4tMevH3svJQAnKZoFh6PR61mAI1z6&#xa;QcVVVARX8eQ6x/nFUZ5MboMcvZyrapbJMJoEfnnzIB0HuIx5kMzwhgAjxvNJcBPdPmpOtjmMvv&#xa;fP0HEbpcP5FGcMr+ezUZwF6GuAjRt6ExiBC5cUwU0ymeAFAI+zIP4dx+1NZP4Ifoum18BI/qMF&#xa;cE2WAEb1U7yIiwJu6G+bg+EboSN4VS7jJbh2xRU4iWle4Jy8F1lSBx6BV8bzYp7Fg42WsMHA0X&#xa;AY5zmMJs6fXE/ml8ksf9KWmKWTBj7G4ck75PuTk5KFGx7nz/EM1mESHM9gVlM/ccK01m6n4UIb&#xa;xoTsuJ0sFNZI3XU7hbZCOLEEp0sLgs7a/mTqH8h6QHjPqWnJqT9tRPEGmcibLegiQqlC6VTXG+&#xa;cSzHGoOmThoRHKhPrgx73M/RNKZ5uqXbI+qVV1g76vms/DEfzk5/EYfr67LJ4u4yCl01zzo2LO&#xa;Wi0FRXhjmHJdfpRWcBOKPRE+jq+urgaDQZ9eSt8/Co5BMc3+VATvZ6AuKpXh9Q7QNSkeBeCOBh&#xa;MU9qhUI5UWArLn4NCV2sSTrqFq4EK0LW/DDWfvA1AawVX0obr/RRbNhld/bVBacuBjY3SX0loy&#xa;pWyX0lwbxZ09aD0OHJUZqtcgugA9FVzHRb54jJXMqdBI1n2KYU4YSr9wpyyXBxt7uI0h/RqPsn&#xa;QpzRoepnjYHYQImXUYQusMIuRCaNae6ii9zBsxO8sUgFmgSPe+gjlNkBAuAHfL9n0nqV+neLq4&#xa;uVLawpA5NWbLQpxL994ORm07xLiaT0G6L2KwXWOwMLPRcnWE1A4e0uUBwQTMnwg6Cqa55BUopQ&#xa;R/GDWWnymrlXZCEk8IhRGkfQHDI0LRJf3su+g6zZ+CLCXvW9RyoQbtYCUnJgIcqKkV5swZq/sn&#xa;cpFko+VMuATHxQpGrbUMmSbXAwjFeXsi0WQSZ5egxkHax3EE88gaBAs1EFhhuLczEatCTrEUc5&#xa;IZ15oINaN3RdSw/IoLB4zkiAmBoBuSeTmMgViZhlA4+CrnmnUV+DYyMbltCITlOOIuUhHwOK66&#xa;JhkvSGvUukvMHMi8VUZQJOlbY6EVTqqtgcGoVcLWuL8OQd0CqCC4lGvLDWHcBLeG8XUW9xcQiu&#xa;WjQExDbbUjqAWWVDpKspXjSpfsGmVZejNBK1Lp2pPj06OOEx/84/jF2asfDmA+Z+BYvf318M3R&#xa;6XOMeePFl69Pz87r0Gv528vDX45PflsJIb84ent2fHpYglPkHwNqTzO/nMcvXpwcnZ8cPjs6+e&#xa;EAMQRCcjSOaYbYvwbixU26Cm88VUqMg8GewzfwhOcni6dw9lRaQCBHpy9W3n/MxdPHwjytvnP4&#xa;5s3rf6BbhTOHz1a/vzh6efjupGtyVk2DBcMirZXhg8WgSFOYUJLfNhZXOtBdylFKQgsHKodQEs&#xa;h6Yl217YDhNWOGsj6bqe3rKCtmKxpOa8EVg4ESUiBAEEJKCiSwZlsK+gVZA3iXyihq+H2CLLVF&#xa;LfppuZ/B4IQJQ1RBXcZ9rJ9KRTCuffpYhVuy7T/nAAu8JYpHXrZWGAFggHKOGYKNuVROkEpXKe&#xa;CEPo11pw5Drxxh600084Mq5TwpSjkHx6QBLBSYfIYGvAtfrQQnjRgZQAQNujR4tZqhY3ygytCw&#xa;lOBISCt92Pfvb18dvzxrfM6GA4c/BkBNyEAC6+jvmliYWQbGsauR94qEW5LR4K8HwpgVe9PQ2m&#xa;ubm5Arazv64m5+ZOhjG6AYpTw2YsheZ4GB62+tQ1f+od7C3UgPsJRURIRhQ6DXg++4FdZYS85i&#xa;M3jXg2U0x/IDQajYh2OZlg8RGnDwQ0lCyo2M0SpGcgzEQRnK+9mQabtGzlkDfiEg+R0auVU+Nd&#xa;qCbuBsF07tHZ6VDUGo4HsEkNzMs6JmtIqZEDQZTXLsZpBpZZk1EMM6Hzl64Cp3kRgHl5sjmNkh&#xa;EFtdZVhfoEgoqdFvtsrdEAMLlTDAcSGltXcWY5ChBTIZS4HVbWMMTUUH7Ck1KC7CqdpQ0bUcTl&#xa;C1oVMKVNZDPc71wA/Gbks5BPTQcGiuqgDqoyB9/1ND/ENrAOcQ0qKBqppQihIEFl71k/VFkgPM&#xa;yOdZ3Beeteh2cMBXRLrAKHguVaUGlqgro2eNFEoe5AXmbC7i5roCJTkweJfzwXKCqiAMDAg5hg&#xa;j2FYJPEYlOo9syqhoFk9Qngy7ml/kgeJfHeDkqEMCCb3ozC7Ikf/9pc3rLxMBV5HMG8e/DeIK3&#xa;/+7/ztPi6bvZKC1fBQlGpDG35jNGj4I89egL54ALlMyCcTQssM7yFqzENCni0WbZLorhjkt+n2&#xa;L1YFZm1pKpD4PfZPCEEvZfzpNR7Ad0HAyv0jT3H5hGI0/w8RwY5yYproIYvLYs98H2PE0xLQcT&#xa;vo6zcQzjRs9iFsPol4ZNARtLQdgFZjWGgoj4N2eS9/mIz989O35+/vzdm79/JFeRGaEA82rKUx&#xa;TcPA0JT7F+f21P8U6N9Rty+qt4cg2kjUdYGUZrDQdGzzEKqoDEGu9ddkQZrB54Wm2t8eskjmD9&#xa;sxiLk2BRb1H6yhwsJsXqjGxS5MHPSfFqfhFcR5crVbaGY46pq9LhX4c2nxgJAOmwa/GqoWCyLQ&#xa;Ce9Sy4qC5ugBoOzqI03bAx0xIMMGFDAFpbU3FZ43kNH0hrMHngNHY9SSbBahOow1+ofLhG2vll&#xa;kuXFz1k6vz6FB/UbhoWcztJKBVym6QiVHcopRuUw0z67nCT5lZfUZOz9+DEWVeMqedkMrkuSFT&#xa;GILJDszyiUdZ4Mfq8yZ6Xog2gP0ywD2Z3c/mUJ5hQCE02YHySaJdAQgkqueWf5jscwzmmMqbLL&#xa;wOff4IEwPlDdmf/lOotzX2owa6ihegqTuMARY8Jv0OBz8M+cFaILdWAUXDsCioCvp7UMO8NrBg&#xa;2EAi1F6Cm/qCGVp6vYoLXab+fTaZTdLpe6WUEzuYlu83ezcToBQV5+hBzSUvNQIxKEONcXtsFF&#xa;b71p8hnwtoLpLWtQgANEqAjQyWD00lHRIQz/KfPxyxqqUqHBZua0WcoQlyUvZX2ux4r5wpNbJJ&#xa;uxQN8rx9LgE2UiFRJApFB9qEH68o0l/BRKg/8vCNfBAjrTFIHRKeQd1H2DJQvVIH9qREdAmpng&#xa;inAbwK+2llCcAIbh0WBkwN79DRZutZ5gP6AQ5GWC6weE9mCg1hY4we3gESUCZ2kwSmFV8nI9fE&#xa;HHMr2f9thdJxzTShAxCAkOljCEnZBSwbp20lk5gMZhWZdQ1ingmlUVVvnibV9zclEOLx41nQbQ&#xa;FgC2uksJAMxoQfCKhL/gtO9p0RoDxomUAoPbfXy88SqZjLK4rCa7zODfxTs+4QTz89SIR5svcq&#xa;f+iLihh+qzdDGOR2iQ4IMpiDYMAKHNYkCtj/7UWPoQBFQSnr0EY2g4YSilMJrJfdUvYVmer5G5&#xa;SbP3ZeVj+a+vBirxwe7kJf49Hs6Lcj29sAxTMH2NoITAegFuwy6QkFhmRPmxEhx7sBH9IAkwQe&#xa;2+F4CQkuKbb7De6Y5qJ66Ykhj8J0bhrN8L1hmFYyrsetMNAb2NvUbyF8unf/ft79FT5Obo+npy&#xa;208UhpoVYXAXp0vFrCWq3uAC/GM2KgliGFjBvAaBaPoyIVK70CGderbcVBXlLbsdhsPh/uz2gu&#xa;aEum9+Dkjce4lckI3koJUXgh+Y8xZ5ITAU4BCL9ctb0HUz3qcj1kSwCzGWrZ0WvxyfnleOMBuw&#xa;YDi9O6UUChBEQ4hoX9wWPDUlvENPcgmm7hYjQsciAoclXmNY96SkwLaB0Gjx4BxpbxDYaiCEM4&#xa;oqJqCDwLA4GpwRSS/OCLiEb0WKuzNa4JhahZV2e8ppMZgWqGcKE/aEeis6aJIOKhyOIrYVHcic&#xa;GHe4pdVRtW67TomFBhjdbFKfUYorp1XoRTiOL9obozYTV/AJrc+5kYvzUeW1k41TnHFhyTLHHS&#xa;XjGLKmA2xFaauPK6J3ZvMYoBgsTOJU2nm36TwRWgX4Rqyfziv5QfdZ+RV+2IZFLQA+mDsRt/jY&#xa;HNrNJDqlKw22ZiJxHWKtzbxgXbSWnDL+H5d5u0lKcBwFqE6izmeHOUoGbigPlaEquXeSpGTgiV&#xa;uMBK+fpdyX6WpnOUMlHddKk4Ucu89yYsR0gNEMTJZdRsnsm2+aQqDAvBPFSeAlMcUI/CARgsr2&#xa;KpBhRL9NbJ4BhtsklOhg1RQojS72gucKn79pj8k4x6yWHz+SiNj0IsqTYf6AaGKDTn7bzk+90S&#xa;UfftZdjsbCS0btH1FGg6HsZDbqUMhNXGdWy80qZU5lOp8UCUa9qk1L6MjW9YHeaxIYIJFVcGba&#xa;CCECHAutFbIr1IoZGpgrKQzf2yYuDNkNQQVV3I/OH2YfGlFW/HUxYcyF5uXuIcyGeN0FxLnO4q&#xa;K4DeBafuupcZFm+D3cHejjuA9Oy75Nm4FYXxLvCwraVJQglpJADODcgD+k9kTFYwyxYhZ4GOVx&#xa;viBqNBoBcfwsqlwchmTr/ZqA1pN4MsoxdVgmdupa8jIQWDLXIPgbZqzgG8N0Mp/OwLGPphtuzO&#xa;2pa23sLdTCKG6JLVEK2I9RUR+lpVRYCLovtTEryXgFRiRuVNiXdJvEo3wlsB30B5PqPbiXcYHb&#xa;dWfxN988mHoD+GkW/qLvbImNOJhJk5LwssBTsnxvoc30/aDePLzc5AeUqhMvoKeWm4qBNrsLc+&#xa;arqrp+Yl8aHoCGsI7YNaBAURoK48AFy1W3EK7aX9jZXrhMDxllAR8Rxc7KAtCiCuOUA62BGf+9&#xa;LNJNzeP1EiXFQnMAekovZ8l/VnkNuIJxdVFrjFI1bGtOX8+z4Ncs/ScgtAbcBIDqwEa2vDDmAz&#xa;3KSEIFGPBHQQk8qBZ8CqKcF5hIYE3wD1TH0D8xFsuNbS+Vv+C44R07fhEN3wcr2wuxvobLNsfh&#xa;HaTC+g7i1lKBZe4Um4+zZkIptA7wutaKuG+ItX3UfTGQ2eFkNBrJ7BosLGZBm/sepJMh55wauV&#xa;Wdbmz+gvaJg/uR6DjDjiQrNZIGob5qF9nWpBYkoUIMl3fWIL1oVL5K4xTIMDEJbkLVhq7+Aszc&#xa;dNIL4DJkV9F8gvmw6yvAlw14rMAT4O1EU30reimkkPKOjZeri62VBWkJ21sLtlhsENCZj9inwS&#xa;gqIkDKDeXIYSKIW6jHgE2meRWwkTMdMRsnv3u7+PO744bIq9AB1RWxxDha1Y7YlQ/Gndj3ulmk&#xa;hPNGWBaspcIA8gYSLsEkyI4YdiQcGF6Fxrp2PGkLEW9yLswbPiJUGyNtwboX89tgFt8EeZx9WA&#xa;lWw7wRVbVNFN5JAchgbR3sL8CCc9VZ8DwugjkWwRWY3cTGbUv6cId7FyhFgiU09FMEB328pnxI&#xa;0BCgC9uxmy3EYzGLmwCEYxI3A/vScayFJlZZgQsoKQ5SDK+sHyOgZlo6hVVdSxyBS+iNcdX7pS&#xa;xJeZOmRVW54s03fKF2D6taBJxMEOV/bcQZsGUEGOEuOgFayg7TwgVtQHrRMeyRt4bXCWrchZao&#xa;11LOWUWl3jXImtHdIrDi9rpZSWgE5waErXNjn7xXBKbC/KyQrHNj8BRzbAuz3AuONfqsWy3gIy&#xa;+SiHFgJpq7O2rJzxBw3cSl2zpPJqOVYiTsWtJCr6U/Vm7za7SpYE7DSqmwu1aIiVTHNOIFC6qj&#xa;Qq3bQqUS+zW2YYRaMEdsO8OtB5oqdwIRFkqwf5NiYRNiMET5/ikr26rLifqZTzHPeYE1jtEwHp&#xa;VVA2V1D7jMH5J0ngd5cgHTuPTXKr8azSh+nSpDZuypoMqQOX/6WPBWHXJdd9xXirzo7FmVLF5i&#xa;3eqz20UzpLP494L+ZJ5mBfnB/XjTWC5f0q3US0sSl79/2j0BZ4tYiF/0lSquZrzERz68BKe+TU&#xa;0GejgfAl3j8rOjZBxnOKoqLrdoZhMH4PNULk/lF/bVP/S9f7gM6+Rxs0GO38Ywwb0JN2mwbPXa&#xa;253nuKyMrIuMMUBYd+yaARcEvslmGWIb+7rfG//gsp3PzOf7V7x3vMHWkdWusUBb4zAHub6tMC&#xa;FmfvcVCmIPDtas2CzLOeb3ibYsvSarnJ/d0/z4g+fXMp2A4YSCKXaDeb2m088QQPd+Zih2F14i&#xa;QxcNQ7J+6IIBQrXdffd2IP2GeqtxxzWYbHrfvdTl57xHBEBU+X33H0l51+ZtC9V9T+QF/A+AUJ&#xa;oMAj0w8ALQ2zIueLuS76GRFwBWGp1x6ra7CbxIhE0Aqig3eQ+BF6akdaHP7+4y8GIMM862m+/s&#xa;NPAitbSSkyGwncRdYJga3IL2/v5dh11w864AzUE9ZgdhFyGVDMtNAR856oL+ImeG5KwHBl24RP&#xa;mWZETsATEXMEqYHmgXcO0w5uKwhzksNxGQ3F3IxUmhMI+7t4gLs2DntGPt8MFuQy4altI6S4an&#xa;9hlyOWumrhBupzOf5sMzUhbBlBLyl7i5Buo+FzRNs7je/IfweRAclyX/eQ278wg3SzY7+YSGc+&#xa;WLQNsQyndK0ESa3jhYMrcvkIhZ9ptyO8hijwb85t9Jcefx7HZBinzh/lR9h4vofUWGeisz7tzB&#xa;C1WmFHh1y43T1HJh8pHYeHDfzgMJzOi0sd2Ij0Hj0dGLUjMnFHCxeVgCKprNgRa3QRYvE8xlAr&#xa;7hPja95iqyt8g6+1z1PfsYQJE5Kzppp7tCRkYYLoXqgJ/VKBB2KDEcs6UbhIFEiB1qD75GMHYW&#xa;weiJDkQfNzpQ7b3bWXSg5ViCjWeAtImAY49fyYwNsfr+3zYy0A1/aA5eHRdEJ8C+8Ec1yX2Vcj&#xa;w8PLAaslcWEJJh3dKpvvCHnx8e9vV5BgeY3+Uu2p0J7g4OhMIfbPNZ+fMrwBnRWOhUG8BsAZzJ&#xa;Ag1uLQAh097Gu0WcoOv/Wm4NwNn2Jqst/N87SgQY9m0XZOZ7I1d1XdfLlrkpKpX/UNdLYpNp7E&#xa;f3cNerLy+NfVexM53ep5PE4CEcDAnpXmzkJd0TcGkGj0LHAOibhxdyUGLimODCGSpw9OBoGgdP&#xa;TNiwve9si1XvC3tpIIxinCrC2izsdXe0C6ytFJa1C+y3EPe7gjrG4HOAansqpQGuNfiXkJAtgz&#xa;r3VdCAV6T8ARR7qKBhWnAO/gNFrc2Y664CDobnk3DKMO81mlBD5iVWR4+6dPVKC9zAEYsqjkWt&#xa;v8fYZTuJIBoOwWf0VQJpBdFv6hJN70w2a63wgBqqZN0I6XcgENl63GfUVaF3bVdhGArHHH+3FP&#xa;nT7VfBxqxWSddNSIFUIlW6Y7J4kqzlH3+/im/9UvfdWPprqBt/2vpgn6a2MyBbkjj2w4Jz5XeW&#xa;d0jhL+ht+2SttCpa9iICXQXanWha1deLyMIgDDernWwWLY32A5W3a0O0FucuO+6BpqNOnOndSo&#xa;U9mRxCoSUhlhuy9tccZrtNVBQtmr6RsBa0RTcqVTIdsZGxZtMWNz6wj9coKZusrwQu0EfCaEf+&#xa;EwY8Z+mjutPZKC2V9hhFoBED5xxT30QPj3LQxGYCBwTAgqhe6VnVAn/t28bAmcbGU7ajdVGxYn&#xa;/SrlcNxliLbkNfLIV56S3IaV1csho5Kqde1R9eVX2eVra7+O+kPsQdlD0ni/ZeCMxGhL6DepdU&#xa;wNxUz0ErsPV7Jxy5iBcuMxEAj0FGCJ4SChEPdWslgX6dXeN+jjmoZOBpH26tQ8rJskGYP3YvB7&#xa;HGaFi9a8Kfl54AbIqyMpTbcJakELhRlhidlY5qJ2Ml6Gt1R2OMOhBaQ00rNOAyYpM5zNMIqhUd&#xa;fMPvan0QAXDvIXagXNmqDIuGRp/o/3DHfCXg4V6fqjG+Ki65qMQrN795jsAVQF7EEeHrm6jcek&#xa;VAJh9qL+LfsZdEzyYhkOpqx3l7EiDukmrOY7XGzh9tipLGEFwJ8KbCdt76yzOGjKMxYFSvyD+W&#xa;MSSPawEH+Ka169fbIOTqwG/3o7kTNQrXrB3a8UzoNHloHaDA0Ml9EegY952idzJbmo2qqxzYiz&#xa;Lw6BOBqDJ9BXsR5e+9uKI9waNN0iKa4OazxSfKo6v7khZV31lvhRquku/1cRGPfeYx9c5WbbBQ&#xa;fc0noBTQSm1dwfRRUncM++VaTpyQ1Zu6A/Wp/fo+IC/ZzvMp6wwXxhGl9n15PmtdGFYZxK95vq&#xa;95vg2qgI0/EMu1wwjMCW7AZaBMAXaaUm5fO+wfnutrbzDRGo9acbId+4UpWh466pCGcor/voXA&#xa;q5m+UMISct0Gon6CjAvq3FqcIDgGn2mqTzNcOumIIGxfqg80tRCOrarI84k/3drrv7pxjVQDI3&#xa;3Br9DYkcOVdcGoE+/8CKlSX6XzbHli9g91r9RBPp/+OfzLfyXF/y6Bvv9c+fL/DIp0MJtPw/+3&#xa;1hZqw7BVoaRqGMnoMFoLp3go6fZJ47HGqO/nTKWV9Ci4vuCvS6rOmUyP1uTBXpRUdymBTS4/a/&#xa;J0MzPgrGN2rx3T6E3MLFiI7v81HI7HQnzWNOrPJzNsmqsNVUVK5pMb4vYpCYKm4fWz/wHwEyaX&#xa;XQ7G9dksA2ykCQ5iPijjDIOX/r8iHp3Opxdx9i+h//VtOPgWfrbOvcKILe4CX7dkdUEzRfIXKq&#xa;jPXAY7iTgMTBDJnN483IJEdIc2JJDWnzWJ+pLV2KjCsVC165p6s9U1qfSnlUC2tQSyeyXwbu2u&#xa;HUZu2me536vdNd148g+g3am8Pgc0jMcEUVUWVFq/ppIJPykpsPPCdlzFbQ9XrVlnwYwDaMUVuR&#xa;2LKrRYUOzTYnA8oGhLOeRb9Zwki8QwD6Bdu0bgftAe9qh7rT93i9gA7S4EEx+adirjC8bsxB5L&#xa;UFhCdzYD3AsYBK3V/wCAobemUTnMdNl2r9DemsaFsH1aRYXpwy0he3i/ar+jOlNhwRaABqJUkq&#xa;zOXNCLf1pTyLY2hezBLg7jStTh0q8+To/OAsdZWpj7VydnjaJJLB8DelFGkCyaxBAnHrdlPi1F&#xa;HgKv1pbCf+fyT6ZxCw1Vm7Tb8k/sLc2kJc7M2bD8s/HAATwOU0xItbqNWTvfiqdTXvgkapL5Yo&#xa;4ydVW+VW07vYpvF5nlvmQ6qEumyg7OrfE7B5zHiO1XIXeSu32dsBxdXT1adiOuE2+NrsR1hYun&#xa;SH+2r/yG70Ncty32hQV52uLGRRej4dbnuH2cvDh2e9Ciszf/I+fFFUby4c7rd0FjeNQRyMhu0+&#xa;KlvvuaF/9D5cVbKWO0pMyxsB0N6s8YA6+BbuL7Oulzx62xmHTGMdy0tHbGGCcowr3Vej08Jd4t&#xa;bRAm5JqZzoaj/tKGapKfaVqca87BRLaPOv2jZ8VX8r2w5AJLrr/Gjnr9MOHr0S1bd0PhHz90RI&#xa;VotVMK/rZ7IHzJIdq+ABsMQ1vtqE2EXwNs3QCbMnhGkWzXd36Nr92XyQSUD8PtnDv5BdepUAVh&#xa;2ONTGkU1aPtCC8LuqOYBinjvkQpJfunlPPcHvY2VGvt1Ub1HvsygN9X2wHDBlKBaAn6h9ReU1s&#xa;L+9gbPFP2qte48yAVgpLGdqOnXMpX+Hq/YsJTbdtjwiy5TuTNLh41jDWNfSxHv1lfSSWlNJ0L4&#xa;5eqr3tPMjJKScRJifa3XJDv+aPRZONlF+AuNPfQnyqVhmIOiyhC/5sn/jfPkHuGKTuep3bdJwg&#xa;PceeeMuAflybHvcXncV5TXaeFB4E+Sji6QierOCH3HVzOJkQzsMtppI4LdR0NBZb+Bl93eziY5&#xa;Lv6UB//EM5gWfbLrzFs9mW1za3UWvO7r3eE1XziAKb/68B/8LnwhqjePP8LkOZ5C7VPreX3M7z&#xa;S6xXbZWJEQXV9n6XUSFfHKkAfBGTyg7qVxc3W7mpLHZH2KhzkDt/qv4O3qEdTfGsVFlEyaZ/cx&#xa;joLeKVxgWLZK9lUNwU92bF/Nccv8tKcgqIhgGkezfOUw2bpfSFWjgZP7U+4JXqZXh+n0OsqqI6&#xa;mnAXxj5lVNWewRlT07PLoue9HcWQyxCWdcJXEWZcOr22ZZCMBy1T4MrkzZSd+XcoW44PIY7CCq&#xa;99WLYwB8kX643WiG95Ua1By1TrUBkh5W495D9IAjgSVZu/Naf8ZaWYtFi2JfCmXHGWunsfWp6J&#xa;zJ2Zuwrua3t94b+0hYY+/VUOhu9rI3Y13OMtzbcfc7zFgTEHCJ9xbBa1xj5dS6G7t5yPEYVSb2&#xa;VXiBB3xuq97WmjEgR1B5mozoUAnrxYzp8GCdsN7P2RTpxX5pIYUUMLd1GxzXtECQf0foYT+0qA&#xa;IneyUIUxpPfiVP0SY9wQVF2J2e4F4o0nBltyVKX4oZ6/jC0FKdrzdtS93M+v4z+hANwOm6HJyk&#xa;s8t/4aWlPVWaWdPuGQL0NSEGM9rN7coLQoXdNsJ3bLWwmtvQ0OfsrNMIu/GUZnq2NS/eSA4qrd&#xa;CNCqlpgYUlJAwuOCyivD+WsRZLg3MF7pVc+9Czhb6jw4t1OmQvHL3I5uxVyLlwSmi7dsf4BUXo&#xa;LFodStyzjG+G79bLxoYWS3y1WTcb227W3xRz3S/muqFfjbBGyXaXSE9ibYRu+xscz5gw6AFuEm&#xa;Rfiw0MF1o5egMykUtdcIG5M5e6J7mI92z3gO0FM6Z95PUXrCVg6gCNrbPrBoU/czVBpT9BJIEC&#xa;jm/be79pLm2/ubTNJuue7O1mE14NWDwniNIP1i66yK6ZpRTgBGBTYaqQYsNDC5qB5dbEWKO6EV&#xa;sddg8H8sN3oG0IrwMuMDRSu8IBAJVUqNY+zOQPj/WtCTV3NvxC5Lu3v4tloOaAAUjGWOM0kqYs&#xa;9IMAtgQB1kruFG/vDy9Z3ihByji47WEbA2ys0gFJcC6dXffYmM/cu7sjiQfKTChOVhCvc0LIxv&#xa;oPbgCOkGm3PPPuDtyV9oNCjWUkD0i67ePIDaEksK5oO6o+66AtJ3LFLHShDKujhz7qkRvbNbZu&#xa;0KhpMFnIebtHwUc+XUOGYKnAaenuwf3S+omHxgkDFoyixB+qofgaxMAAvihTLmseggMSqUCz8x&#xa;WuWBylsx9a7O74mztPHsGNlGDN29U/n+nBI74xkW4noR507kj6/lGZUC3i6xwXpPfoEcOZCHXn&#xa;bD7PPka5Dk7Bo0fCULju+WnJLCkS3J3vz5VoejvMORl2z8hhmPJ2hqhKgAsOgDx11FzkLb1/88&#xa;++siC6SD/EtRD6czAx4w+LksEqPIvfljUkz/wBJph2Too8yJOLCeaZ/9Kgg1Jaa9GODZTTdZIT&#xa;G8HBFjIru84SDrPwpQV5Oo0DD9rwMna0z4sqI14XulTVCZ2hNkCF4waDQ9TIrLREqTfYCTAizB&#xa;JB4wk6i1jRApy63KCPS+f7KjSOjmnv18e2IQAI2rCyfBqjz6iBhbfdI6irUVQJ7OA6yqJpXDTK&#xa;eBA5K9U+99DzBUB4SbEkh0fBEHomXBUzdJ/EDNbR204OwN8SD3aiZsVFaEVvqK759PJs9MbuP+&#xa;2EIA4H9gzvCHwBF5RGSrTuTHVm8L8sF7Cx7ZxZo1n7oDy8uQi5Et39FHABHCbbyz9RVUwzW4id&#xa;55g0646iOjmogcrBpksjWLfFCM4VvBMCWjLcf6y7wY9GxBVQtHFMUTd1ALTpm8KFLtQ/vOc4Bw&#xa;zeAAhrn13rqQaQi9rFDxcAyNxR+pXFj2sRXFWeHoUr1j08Au4JgyDqzOCCAo2rO9p5vNKApdGB&#xa;ZOXAnSe4is1SnGGWgMAk0SOs4woqBmit8drKpCyka9TleNVGeBngd4dSUfIgmQRYs4G/NI2u4f&#xa;//D1BLBwh+wc1ZmiYAAFLnAABQSwECFAAUAAgICAAnUmtRfsHNWZomAABS5wAAGQAAAAAAAAAA&#xa;AAAAAAAAAAAAZG9jL1N3YXAtTy1NYXRpYyBndWlkZS5tbVBLBQYAAAAAAQABAEcAAADhJgAAAA&#xa;A=" ID="ID_1991723462" CREATED="1605275995557" MODIFIED="1605275995797"/>
</node>
</node>
<node TEXT="images" POSITION="right" ID="ID_711900479" CREATED="1604620485163" MODIFIED="1605275964822">
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
