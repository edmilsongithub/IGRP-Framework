package nosi.core.gui.fields;
/**
 * @author: Emanuel Pereira
 * 
 * Apr 13, 2017
 *
 * Description: class to configure hidden field
 */
public class HiddenField extends AbstractField {

	public HiddenField(Object model,String name) {
		super();
		name = !name.startsWith("p_")?"p_"+name:name;
		this.propertie.put("type","hidden");
		this.setTagName("hidden");
		this.setName(name);
		this.propertie.put("name",name);
		this.propertie.put("tag", "hidden_1");
		this.propertie.put("maxlength", 30);
		this.configValue(model);
	}
	
	public HiddenField(String name, String value) {
		super();
		name = !name.startsWith("p_")?"p_"+name:name;
		this.propertie.put("type","hidden");
		this.setTagName("hidden");
		this.setName(name);
		this.propertie.put("name",name);
		this.propertie.put("tag", "hidden_1");
		this.setValue(value);
	}

}
