package cap.action;
import org.apache.struts2.convention.annotation.*;
import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
@ParentPackage("login")
@InterceptorRefs(@InterceptorRef("mystack"))
@Results({@Result(name="success",location="/index.jsp"),
            @Result(name="input",location="/login.jsp")})
public class TimerAction extends ActionSupport {
    @Action(value="timer",results={@Result(name="success",location="/result.jsp")})
    public String timer() {
        try {
            Thread.sleep(500);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        return SUCCESS;
    }
}

