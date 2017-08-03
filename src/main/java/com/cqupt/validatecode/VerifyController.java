package com.cqupt.validatecode;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by I am master on 2017/8/2.
 */
@Controller
public class VerifyController {
    @RequestMapping(value = "/checkVerificationCode")
    @ResponseBody
    public boolean checkVerificationCode(@RequestParam("verifyCode")String verifyCode,
                                         HttpServletRequest request){
        //验证码的值
        String kaptchaExpected = (String)request.getSession()
                .getAttribute(com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY);
        //用户输入的验证码的值
        String kaptchaReceived = verifyCode;
        System.out.println("实际的验证码为："+kaptchaExpected);
        System.out.println("输入的验证码为："+kaptchaReceived);
        if(kaptchaReceived == null  || !kaptchaReceived.equalsIgnoreCase(kaptchaExpected)) {
            return false;
        }
        return true;
    }
}
