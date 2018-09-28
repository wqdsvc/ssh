package cap.action;

import cap.bean.User;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
    private User user;

    public String register() {
        return SUCCESS;

    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void validateRegister() {
        if (user.getUsername() == null || user.getUsername().equals("")) {
            this.addFieldError("user.username", getText("name.null"));
        }
        if (user.getUsername().length() < 6 || user.getUsername().length() > 16) {
            this.addFieldError("user.username", getText("name.length"));
        }
        if (user.getPassword() == null || user.getPassword().equals("")) {
            this.addFieldError("user.password", getText("password.null"));
        }
        if (user.getPassword().length() <= 8) {
            this.addFieldError("user.password", getText("password.length"));
        }
        if (user.getUsername() == null || user.getPassword().equals("")) {
            this.addFieldError("user.password", getText("repassword.null"));
        }
        if (!user.getRepassword().equals(user.getPassword())) {
            this.addFieldError("user.password", getText("repassword.same"));
        }

    }
}
