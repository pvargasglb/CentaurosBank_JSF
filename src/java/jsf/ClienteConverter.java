package jsf;

import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import jpa.controllers.ClienteJpaController;
import jpa.entities.Cliente;

/**
 *
 * @author mbohm
 */
public class ClienteConverter implements Converter {

    public Object getAsObject(FacesContext facesContext, UIComponent component, String string) {
        if (string == null || string.length() == 0) {
            return null;
        }
        Integer id = new Integer(string);
        ClienteJpaController controller = (ClienteJpaController) facesContext.getApplication().getELResolver().getValue(facesContext.getELContext(), null, "customerJpa");
        return controller.findCustomer(id);
    }

    public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
        if (object == null) {
            return null;
        }
        if (object instanceof Cliente) {
            Cliente o = (Cliente) object;
            return o.getCustomerId() == null ? "" : o.getCustomerId().toString();
        } else {
            throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: jpa.entities.Customer");
        }
    }

}
