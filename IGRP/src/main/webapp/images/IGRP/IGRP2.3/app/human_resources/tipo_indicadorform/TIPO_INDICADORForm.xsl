<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"><xsl:output method="html" omit-xml-declaration="yes" encoding="utf-8" indent="yes" doctype-system="about:legacy-compat"/><xsl:template match="/"><html><head><xsl:call-template name="IGRP-head"/><link rel="stylesheet" type="text/css" href="{$path}/core/igrp/toolsbar/toolsbar.css?v={$version}"/><style/></head><body class="{$bodyClass} sidebar-off"><xsl:call-template name="IGRP-topmenu"/><form method="POST" class="IGRP-form" name="formular_default" enctype="multipart/form-data"><div class="container-fluid"><div class="row"><xsl:call-template name="IGRP-sidebar"/><div class="col-sm-9 col-md-10 col-md-offset-2 col-sm-offset-3 main" id="igrp-contents"><div class="content"><div class="row row-msg"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:apply-templates mode="igrp-messages" select="rows/content/messages"/></div></div></div><div class="row " id="row-110e7abc"><div class="gen-column col-md-12"><div class="gen-inner"><xsl:if test="rows/content/toolsbar_1"><div class="toolsbar-holder default gen-container-item " gen-structure="toolsbar" gen-fields=".btns-holder&gt;a.btn" gen-class="" item-name="toolsbar_1"><div class="btns-holder   pull-right" role="group"><xsl:apply-templates select="rows/content/toolsbar_1" mode="gen-buttons"><xsl:with-param name="vertical" select="'true'"/><xsl:with-param name="outline" select="'false'"/></xsl:apply-templates></div></div></xsl:if><xsl:if test="rows/content/form_1"><div class="box igrp-forms gen-container-item " gen-class="" item-name="form_1"><xsl:call-template name="box-header"><xsl:with-param name="title" select="rows/content/form_1/@title"/><xsl:with-param name="collapsible" select="'false'"/><xsl:with-param name="collapsed" select="'false'"/></xsl:call-template><div class="box-body"><div role="form"><xsl:apply-templates mode="form-hidden-fields" select="rows/content/form_1/fields"/><xsl:if test="rows/content/form_1/fields/id"><div class="form-group col-sm-3   gen-fields-holder" item-name="id" item-type="number" required="required"><label for="{rows/content/form_1/fields/id/@name}"><span><xsl:value-of select="rows/content/form_1/fields/id/label"/></span></label><input type="number" value="{rows/content/form_1/fields/id/value}" class="form-control " id="{rows/content/form_1/fields/id/@name}" name="{rows/content/form_1/fields/id/@name}" required="required" min="" max="" maxlength="39" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/id"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_1/fields/codigo"><div class="form-group col-sm-3   gen-fields-holder" item-name="codigo" item-type="text"><label for="{rows/content/form_1/fields/codigo/@name}"><span><xsl:value-of select="rows/content/form_1/fields/codigo/label"/></span></label><input type="text" value="{rows/content/form_1/fields/codigo/value}" class="form-control " id="{rows/content/form_1/fields/codigo/@name}" name="{rows/content/form_1/fields/codigo/@name}" maxlength="20" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/codigo"/></xsl:call-template></input></div></xsl:if><xsl:if test="rows/content/form_1/fields/nome"><div class="form-group col-sm-3   gen-fields-holder" item-name="nome" item-type="text"><label for="{rows/content/form_1/fields/nome/@name}"><span><xsl:value-of select="rows/content/form_1/fields/nome/label"/></span></label><input type="text" value="{rows/content/form_1/fields/nome/value}" class="form-control " id="{rows/content/form_1/fields/nome/@name}" name="{rows/content/form_1/fields/nome/@name}" maxlength="20" placeholder=""><xsl:call-template name="setAttributes"><xsl:with-param name="field" select="rows/content/form_1/fields/nome"/></xsl:call-template></input></div></xsl:if></div></div><xsl:apply-templates select="rows/content/form_1/tools-bar" mode="form-buttons"/></div></xsl:if></div></div></div></div></div></div></div><xsl:call-template name="IGRP-bottom"/></form><script type="text/javascript" src="{$path}/core/igrp/form/igrp.forms.js?v={$version}"/></body></html></xsl:template><xsl:include href="../../../xsl/tmpl/IGRP-functions.tmpl.xsl?v=1528890170786"/><xsl:include href="../../../xsl/tmpl/IGRP-variables.tmpl.xsl?v=1528890170786"/><xsl:include href="../../../xsl/tmpl/IGRP-home-include.tmpl.xsl?v=1528890170786"/><xsl:include href="../../../xsl/tmpl/IGRP-utils.tmpl.xsl?v=1528890170786"/><xsl:include href="../../../xsl/tmpl/IGRP-form-utils.tmpl.xsl?v=1528890170786"/></xsl:stylesheet>
