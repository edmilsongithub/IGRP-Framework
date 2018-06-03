package nosi.core.gui.components;
/**
 * Emanuel
 * 28 Mar 2018
 */

import nosi.core.config.Config;
import nosi.core.webapp.QueryString;

public class IGRPLink {

	private String app;
	private String page;
	private String action;	
	private String link = "";
	private QueryString<String,Object> queryString;

	public IGRPLink() {
		this.queryString = new QueryString<>();
	}
	public IGRPLink(String app,String page,String action) {
		this();
		this.setAction(action);
		this.setApp(app);
		this.setPage(page);
		this.link = new Config().getResolveUrl(this.getApp(), this.getPage(), this.getAction());
	}
	public IGRPLink(String link) {
		this();
		this.link = link;
	}
	public String getApp() {
		return app;
	}
	public void setApp(String app) {
		this.app = app;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getAction() {
		return action;
	}
	public void setAction(String action) {
		this.action = action;
	}	
	
	public IGRPLink addParam(String name,Object value) {
		this.queryString.addQueryString(name, value);
		return this;
	}

	@Override
	public String toString() {
		return "IGRPLink [app=" + app + ", page=" + page + ", action=" + action + ", queryString=" + queryString + "]";
	}
	
	public String getLink() {
		if(this.queryString.getQueryString()!=null && !this.queryString.getQueryString().isEmpty()) {
			this.queryString.getQueryString().entrySet().stream().forEach(q->{
				q.getValue().stream().forEach(q1->{
					this.link += "&"+q.getKey()+"="+q1.toString();
				});					
			});
		}
		return this.link.replace("&&", "&");
	}
}
