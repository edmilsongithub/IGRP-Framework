
package nosi.webapps.igrp.pages.novoutilizador;
import nosi.core.webapp.View;
import nosi.core.gui.components.*;
import nosi.core.gui.fields.*;
import static nosi.core.i18n.Translator.gt;

public class NovoUtilizadorView extends View {
	
	
	public Field sectionheader_1_text;
	public Field email;
	public Field nada;
	public Field aplicacao;
	public Field organica;
	public Field perfil;
	public IGRPForm sectionheader_1;
	public IGRPForm form_1;

	public IGRPToolsBar toolsbar_1;
	public IGRPButton btn_gravar;
	public NovoUtilizadorView(NovoUtilizador model){
		this.setPageTitle("Registar Utilizador");
			
		sectionheader_1 = new IGRPForm("sectionheader_1","");
		form_1 = new IGRPForm("form_1","");
		sectionheader_1_text = new TextField(model,"sectionheader_1_text");
		sectionheader_1_text.setLabel(gt(""));
		sectionheader_1_text.setValue(gt("Convite - Novo"));
		sectionheader_1_text.propertie().add("type","text").add("name","p_sectionheader_1_text").add("persist","true").add("maxlength","4000");
		
		email = new EmailField(model,"email");
		email.setLabel(gt("Email"));
		email.propertie().add("name","p_email").add("type","email").add("maxlength","100").add("required","true").add("change","false").add("readonly","false").add("disabled","false").add("placeholder","").add("right","false");
		
		nada = new SeparatorField(model,"nada");
		nada.setLabel(gt(" "));
		nada.propertie().add("name","p_nada").add("type","separator").add("maxlength","30").add("placeholder","").add("right","false");
		
		aplicacao = new ListField(model,"aplicacao");
		aplicacao.setLabel(gt("Aplicação"));
		aplicacao.propertie().add("name","p_aplicacao").add("type","select").add("multiple","false").add("maxlength","100").add("required","true").add("change","true").add("disabled","false").add("right","false").add("domain","").add("java-type","int");
		
		organica = new ListField(model,"organica");
		organica.setLabel(gt("Orgânica"));
		organica.propertie().add("name","p_organica").add("type","select").add("multiple","false").add("maxlength","100").add("required","true").add("change","true").add("disabled","false").add("right","false").add("domain","").add("java-type","int");
		
		perfil = new ListField(model,"perfil");
		perfil.setLabel(gt("Perfil"));
		perfil.propertie().add("name","p_perfil").add("type","select").add("multiple","false").add("maxlength","100").add("required","true").add("change","false").add("disabled","false").add("right","false").add("domain","").add("java-type","int");
		

		toolsbar_1 = new IGRPToolsBar("toolsbar_1");
		btn_gravar = new IGRPButton("Gravar","igrp","NovoUtilizador","gravar","submit","primary|fa-save","","");
		btn_gravar.propertie.add("type","specific").add("code","").add("rel","gravar");
		
	}
		
	@Override
	public void render(){
		
		sectionheader_1.addField(sectionheader_1_text);


		form_1.addField(email);
		form_1.addField(nada);
		form_1.addField(aplicacao);
		form_1.addField(organica);
		form_1.addField(perfil);

		toolsbar_1.addButton(btn_gravar);
		this.addToPage(sectionheader_1);
		this.addToPage(form_1);
		this.addToPage(toolsbar_1);
	}
}
