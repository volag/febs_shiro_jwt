package cc.mrbird.febs.common.utils;

import net.sf.json.JSONObject;
import org.lionsoul.ip2region.DbSearcher;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.net.InetAddress;

public class IPUtil {

	private static final String UNKNOWN = "unknown";

	private static String GET_ADDRESS_IP = "http://ip.360.cn/IPShare/info";

	protected IPUtil(){

	}

	/**
	 * 获取 IP地址
	 * 使用 Nginx等反向代理软件， 则不能通过 request.getRemoteAddr()获取 IP地址
	 * 如果使用了多级反向代理的话，X-Forwarded-For的值并不止一个，而是一串IP地址，
	 * X-Forwarded-For中第一个非 unknown的有效IP字符串，则为真实IP地址
	 */
	public static String getIpAddr(HttpServletRequest request) {
		String ip = request.getHeader("x-forwarded-for");
		if (ip == null || ip.length() == 0 || UNKNOWN.equalsIgnoreCase(ip)) {
			ip = request.getHeader("Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || UNKNOWN.equalsIgnoreCase(ip)) {
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if (ip == null || ip.length() == 0 || UNKNOWN.equalsIgnoreCase(ip)) {
			ip = request.getRemoteAddr();
		}
		return "0:0:0:0:0:0:0:1".equals(ip) ? "127.0.0.1" : ip;
	}

	public static String getIp() throws IOException {
        JSONObject json = JSONObject.fromObject(HttpUtil.sendGet(GET_ADDRESS_IP));
        return (String)json.get("ip");
    }

    public static void main(String[] args) throws IOException {
        System.out.println(getIp());
    }
}
