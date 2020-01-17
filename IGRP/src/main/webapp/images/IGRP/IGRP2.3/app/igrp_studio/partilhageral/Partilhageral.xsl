<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/><xsl:template match="/"><html><head><xsl:call-template name="IGRP-head"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/view/igrp.view.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/datatable/dataTables.bootstrap.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/table/igrp.tables.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/toolsbar/toolsbar.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.min.css?v={$version}"/><link rel="stylesheet" type="text/css" href="{$path}/plugins/select2/select2.style.css?v={$version}"/><style>th.state input.IGRP_checkall{display:none;}</style></head><body class="{$bodyClass} sidebar-off"><xsl:call-template name="IGRP-topmenu"/><form method="POST" class="IGRP-form" name="formular_default" enctype="multipart/form-data"><div class="container-fluid"><div class="row"><xsl:call-template name="IGRP-sidebar"/><div class="col-sm-9 col-md-10 col-md-offset-2 col-sm-offset-3 main" id="igrp-contents"><div class="content"><div class="row row-msg"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:apply-templates mode="igrp-messages" select="rows/content/messages"/></div></div></div><div class="row " id="row-8cff8f20"><div class="gen-column col-sm-9"><div class="gen-inner"><xsl:if test="rows/content/sectionheader_1"><section class="content-header gen-container-item " gen-class="" item-name="sectionheader_1"><h2 class="disable-output-escaping"><xsl:value-of disable-output-escaping="yes" select="rows/content/sectionheader_1/fields/sectionheader_1_text/value"/></h2></section></xsl:if></div></div><div class="gen-column col-sm-3"><div class="gen-inner"/></div></div><div class="row " id="row-b4f159cc"><div class="gen-column col-sm-8"><div class="gen-inner"><xsl:if test="rows/content/form_1"><div class="box igrp-forms gen-container-item " gen-class="" item-name="form_1"><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_1/fields"/><xsl:if test="rows/content/form_1/fields/aplicacao_origem"><div class="col-sm-6 form-group  gen-fields-holder" item-name="aplicacao_origem" item-type="select" required="required"><label for="{rows/content/form_1/fields/aplicacao_origem/@name}"><xsl:value-of select="rows/content/form_1/fields/aplicacao_origem/label"/></label><select class="form-control select2 IGRP_change" id="form_1_aplicacao_origem" name="{rows/content/form_1/fields/aplicacao_origem/@name}" required="required"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/aplicacao_origem"/></xsl:call-template><xsl:for-each select="rows/content/form_1/fields/aplicacao_origem/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if><xsl:if test="rows/content/form_1/fields/elemento"><div class="col-sm-6 form-group pull-right gen-fields-holder" item-name="elemento" item-type="select" required="required"><label for="{rows/content/form_1/fields/elemento/@name}"><xsl:value-of select="rows/content/form_1/fields/elemento/label"/></label><select class="form-control select2 IGRP_change" id="form_1_elemento" name="{rows/content/form_1/fields/elemento/@name}" required="required"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/elemento"/></xsl:call-template><xsl:for-each select="rows/content/form_1/fields/elemento/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_1/tools-bar" mode="form-buttons"/></div></xsl:if><xsl:if test="rows/content/table_1"><div class="box box-table-contents gen-container-item example" gen-class="example" item-name="table_1"><div class="box-body "><div class="table-contents-head"><div class="table-contents-inner"></div></div><div class="table-box"><div class="table-box-inner"><table id="table_1" class="table table-striped  igrp-data-table  " exports=""><thead><tr><xsl:if test="rows/content/table_1/fields/estado"><th class="bs-checkbox gen-fields-holder state" align="left"><label class="container-box "><span><xsl:value-of select="rows/content/table_1/fields/estado/label"/></span><input type="checkbox" class="IGRP_checkall" check-rel="estado" data-title=" " data-toggle="tooltip"/><span class="checkmark"/></label></th></xsl:if><xsl:if test="rows/content/table_1/fields/nome"><th td-name="nome" align="left" show-label="true" class="plaintext  gen-fields-holder" group-in=""><span><xsl:value-of select="rows/content/table_1/fields/nome/label"/></span></th></xsl:if><xsl:if test="rows/content/table_1/table/context-menu/item"><th class="igrp-table-ctx-th"/></xsl:if></tr></thead><tbody><xsl:for-each select="rows/content/table_1/table/value/row[not(@total='yes')]"><tr><xsl:apply-templates mode="context-param" select="context-menu"/><xsl:if test="estado"><td align="left" data-row="{position()}" data-title="{../../label/estado}" class="bs-checkbox state" item-name="estado" data-order="{estado_check=estado}"><xsl:if test="estado != '-0'"><label class="container-box "><input type="checkbox" name="p_estado_fk" value="{estado}" check-rel="estado" class="checkdcontrol"><xsl:if test="estado_check=estado"><xsl:attribute name="checked">checked</xsl:attribute></xsl:if></input><span class="slider round"/><span class="checkmark"/></label></xsl:if><input type="hidden" name="p_estado_check_fk" class="estado_check"><xsl:if test="estado_check=estado"><xsl:attribute name="value"><xsl:value-of select="estado_check"/></xsl:attribute></xsl:if></input><xsl:if test="estado_check!=estado"><input type="hidden" name="p_estado_fk" value="{estado}" class="estado"/></xsl:if></td></xsl:if><xsl:if test="nome"><td align="left" data-order="{nome}" data-row="{position()}" data-title="{../../../fields/nome/label}" class="plaintext" item-name="nome"><span class=" "><xsl:value-of select="nome"/></span></td></xsl:if><xsl:if test="//rows/content/table_1/table/context-menu/item"><td class="igrp-table-ctx-td"><xsl:apply-templates select="../../context-menu" mode="table-context-inline"><xsl:with-param name="row-params" select="context-menu"/><xsl:with-param name="type" select="'inl'"/></xsl:apply-templates></td></xsl:if></tr></xsl:for-each></tbody></table></div></div></div></div></xsl:if></div></div><div class="gen-column col-sm-4"><div class="gen-inner"><xsl:if test="rows/content/form_2"><div class="box igrp-forms gen-container-item " gen-class="" item-name="form_2"><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_2/fields"/><xsl:if test="rows/content/form_2/fields/aplicacao_destino"><div class="col-sm-12 form-group  gen-fields-holder" item-name="aplicacao_destino" item-type="select" required="required"><label for="{rows/content/form_2/fields/aplicacao_destino/@name}"><xsl:value-of select="rows/content/form_2/fields/aplicacao_destino/label"/></label><select class="form-control select2 " id="form_2_aplicacao_destino" name="{rows/content/form_2/fields/aplicacao_destino/@name}" required="required"><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_2/fields/aplicacao_destino"/></xsl:call-template><xsl:for-each select="rows/content/form_2/fields/aplicacao_destino/list/option"><option value="{value}" label="{text}"><xsl:if test="@selected='true'"><xsl:attribute name="selected">selected</xsl:attribute></xsl:if><span><xsl:value-of select="text"/></span></option></xsl:for-each></select></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_2/tools-bar" mode="form-buttons"/></div></xsl:if><xsl:if test="rows/content/toolsbar_1"><div class="toolsbar-holder default gen-container-item " gen-structure="toolsbar" gen-fields=".btns-holder&gt;a.btn" gen-class="" item-name="toolsbar_1"><div class="btns-holder btn-group-lg btn-group-justified" role="group"><xsl:apply-templates select="rows/content/toolsbar_1" mode="gen-buttons"><xsl:with-param name="vertical" select="'true'"/><xsl:with-param name="outline" select="'false'"/></xsl:apply-templates></div></div></xsl:if><xsl:if test="rows/content/view_1"><div class="box clearfix view-block gen-container-item " has-img="false" template="info" gen-class="" item-name="view_1"><div class="box-body"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/view_1/fields"/><xsl:if test="rows/content/view_1/fields/view_1_img"><img src="{rows/content/view_1/fields/view_1_img/value}"/></xsl:if><div class="view-body clearfix "><xsl:if test="rows/content/view_1/fields/documento"><div class="view-item gen-fields-holder" item-name="documento"><a href="{rows/content/view_1/fields/documento/value}" target="_newtab" target-fields="" request-fields=""><i class="fa fa-info-circle"/><span><span><xsl:value-of select="rows/content/view_1/fields/documento/label"/></span></span></a></div></xsl:if></div></div></div></xsl:if></div></div></div></div></div></div></div><xsl:call-template name="IGRP-bottom"/></form><script type="text/javascript" src="{$path}/core/igrp/form/igrp.forms.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/datatable/jquery.dataTables.min.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/datatable/dataTables.bootstrap.min.js?v={$version}"/><script type="text/javascript" src="{$path}/core/igrp/table/igrp.table.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/select2/select2.full.min.js?v={$version}"/><script type="text/javascript" src="{$path}/plugins/select2/select2.init.js?v={$version}"/><script src="{$path}/core/igrp/IGRP.rules.class.js"/><script>
$.IGRP.rules.set({"p_aplicacao_origem":[{"name":"show destino","events":"load,change","isTable":false,"conditions":{"rules":[{"condition":"null","value":"1","value2":"","patern":"","patern_custom":"","opposite":""}],"actions":[{"action":"hide","targets":"form_2","procedure":"","request_fields":"","msg_type":"","msg":""}]}}],"p_aplicacao_destino":[{"name":"Hide button and table","events":"load,change","isTable":false,"conditions":{"rules":[{"condition":"null","value":"1","value2":"","patern":"","patern_custom":"","opposite":"1"}],"actions":[{"action":"hide","targets":"table_1,toolsbar_1","procedure":"","request_fields":"","msg_type":"info","msg":""}]}},{"name":"reload table","events":"change","isTable":false,"conditions":{"rules":[{"condition":"notnull","value":"1","value2":"","patern":"","patern_custom":"","opposite":""}],"actions":[{"action":"remote_list","targets":"table_1","procedure":"webapps?r=igrp_studio/Partilhageral/index","request_fields":"aplicacao_origem,elemento,app_or","msg_type":"","msg":""}]}}]},'actionsList');</script></body></html></xsl:template><xsl:include href="../../../xsl/tmpl/IGRP-functions.tmpl.xsl?v=17"/><xsl:include href="../../../xsl/tmpl/IGRP-variables.tmpl.xsl?v=17"/><xsl:include href="../../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=17"/><xsl:include href="../../../xsl/tmpl/IGRP-utils.tmpl.xsl?v=17"/><xsl:include href="../../../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=17"/><xsl:include href="../../../xsl/tmpl/IGRP-table-utils.tmpl.xsl?v=17"/></xsl:stylesheet>
