/*-------------------------*/

/*Create Controller*/

package nosi.webapps.igrp.pages.pesquisarorganica;
import nosi.core.webapp.Controller;
import nosi.core.webapp.Igrp;
import nosi.webapps.igrp.dao.Application;
import nosi.webapps.igrp.dao.Menu;
import nosi.webapps.igrp.dao.Organization;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;


public class PesquisarOrganicaController extends Controller {		

	public void actionIndex() throws IOException{
		PesquisarOrganica model = new PesquisarOrganica();
		PesquisarOrganicaView view = new PesquisarOrganicaView(model);
		ArrayList<PesquisarOrganica.Table_1> lista = new ArrayList<>();
		//Alimentando o selectorOption (Aplicacao, organica, e menuPrincipal)
		HashMap<Integer,String> applications =  new Application().getListApps();
		view.aplicacao.setValue(applications);
		//condiccao para pesquisar com filtros
		if(Igrp.getInstance().getRequest().getMethod().toUpperCase().equals("POST")){
			/*model.load();
			menu_db.setEnv_fk(model.getAplicacao());
			Organization objOrg = new Organization();
			objOrg.setId(model.getOrganica());
			menu_db.setOrganica(objOrg);
			menu_db.setFlg_base(model.getMenu_principal());*/
		}
		
		//Preenchendo a tabela
		for(Object obj:new Organization().getAll()){
			Organization org = (Organization) obj;
			PesquisarOrganica.Table_1 table1 = new PesquisarOrganica().new Table_1();
			table1.setDescricao(org.getName());
			table1.setEstado(org.getStatus());
			lista.add(table1);
		}
		//Para pegar os parametros que queremos enviar para poder editar o menu no view
		//view..setParam(true);
		view.table_1.addData(lista);
		this.renderView(view);
		this.renderView(view);
	}

}
