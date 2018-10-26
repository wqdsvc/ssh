package cap.util;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

import java.util.Date;

@Aspect
public class AdminnnAspectjLogger {
    public static final String AAP = "execution(* cap.dao.impl.*.*(..))";

    @Before(AAP)
    public void logBefore() {
        System.out.println("记录前：现在时间是：" + new Date().toString());
    }

    @After(AAP)
    public void logAfter() {
        System.out.println("记录后：现在时间是：" + new Date().toString());
    }

    @Around(AAP)
    public Object logAround(ProceedingJoinPoint joinPoint) {
        System.out.println("记录开始：现在的时间是：" + new Date().toString());
        Object[] args = joinPoint.getArgs();
        Object obj = null;
        try {
            obj = joinPoint.proceed(args);
        } catch (Throwable e) {
            e.printStackTrace();
        }
        System.out.println("记录结束：现在时间是：" + new Date().toString());
        return obj;
    }
}
