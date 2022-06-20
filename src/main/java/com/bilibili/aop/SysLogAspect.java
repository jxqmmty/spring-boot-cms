package com.bilibili.aop;

import com.bilibili.annotation.MyLog;
import com.bilibili.constant.BaseConstant;
import com.bilibili.domain.AdminLog;
import com.bilibili.domain.User;
import com.bilibili.mapper.MyLogMapper;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/** 系统日志：切面处理类 */
@Aspect
@Component
public class SysLogAspect {
	/**我这里是使用log4j2把一些信息打印在控制台上面，可以不写 */
    private static final Logger log = LogManager.getLogger(SysLogAspect.class);

	/**操作数据库 */
    @Autowired
    private MyLogMapper myLogMapper;

    //定义切点 @Pointcut
    //在注解的位置切入代码
    @Pointcut("@annotation(com.bilibili.annotation.MyLog)")
    public void logPoinCut() {
    }

    //切面 配置通知
    @Before("logPoinCut()")         //AfterReturning
    public void saveOperation(JoinPoint joinPoint) {
        log.info("---------------接口日志记录---------------");
        //用于保存日志
        AdminLog adminLog = new AdminLog();

        //从切面织入点处通过反射机制获取织入点处的方法
        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        //获取切入点所在的方法
        Method method = signature.getMethod();

        //获取操作--方法上的Log的值
        MyLog myLog = method.getAnnotation(MyLog.class);
        if (myLog != null) {
            //保存操作事件
            String operation = myLog.operation();
            adminLog.setOperation(operation);

            //保存日志类型
            int type = myLog.type();
            adminLog.setType(type);

            log.info("operation="+operation+",type="+type);
        }

        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
        String requestURL = request.getRequestURL().toString();
        adminLog.setUrl(requestURL);
        // 客户端ip
        String ip = request.getRemoteAddr();
        adminLog.setLoginip(ip);
        // 操作人账号、姓名（需要提前将用户信息存到session）
        User user = (User) request.getSession().getAttribute(BaseConstant.USER_SESSION);
        if(user != null) {
            Long userId = user.getId();
            String userName = user.getUsername();
            adminLog.setUserId(userId);
            adminLog.setUserName(userName);
        }
        log.info("url="+requestURL,"ip="+ip);
       
        //调用service保存Operation实体类到数据库
        //我id使用的是UUID，不需要的可以注释掉
        myLogMapper.insert(adminLog);
    }
}