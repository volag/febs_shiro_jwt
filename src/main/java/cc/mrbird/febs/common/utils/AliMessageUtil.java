package cc.mrbird.febs.common.utils;
import com.aliyuncs.CommonRequest;
import com.aliyuncs.CommonResponse;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.http.MethodType;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.DefaultAcsClient;


public class AliMessageUtil {
    public static void main(String[] args) {

//        send("15779551676","123456");

    }

    public static String send(String PhoneNumbers,String code){
        DefaultProfile profile = DefaultProfile.getProfile("default", "LTAI5Wg2fR09MqNu", "5rKO01gMSNBECmUwobln21IBRwQngM");
        IAcsClient client = new DefaultAcsClient(profile);
        CommonRequest request = getRequest(PhoneNumbers,code);
        try {
            CommonResponse response = client.getCommonResponse(request);
            System.out.println(response.getData());
            return response.getData();
        } catch (ClientException e) {
            e.printStackTrace();
        }
        return null;
    }

    public static CommonRequest getRequest(String PhoneNumbers,String code){
        CommonRequest request = new CommonRequest();
        //request.setProtocol(ProtocolType.HTTPS);
        request.setMethod(MethodType.POST);
        request.setDomain("dysmsapi.aliyuncs.com");
        request.setVersion("2017-05-25");
        request.setAction("SendSms");
        request.putQueryParameter("PhoneNumbers", PhoneNumbers);
        request.putQueryParameter("SignName", "猎聘管理系统");
        request.putQueryParameter("TemplateCode", "SMS_164276788");
        request.putQueryParameter("TemplateParam", "{'code':"+code+"}");
        return request;
    }

}


