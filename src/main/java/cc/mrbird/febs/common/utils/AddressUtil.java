package cc.mrbird.febs.common.utils;

import lombok.extern.slf4j.Slf4j;
import net.sf.json.JSONObject;
import org.apache.commons.io.FileUtils;
import org.lionsoul.ip2region.DataBlock;
import org.lionsoul.ip2region.DbConfig;
import org.lionsoul.ip2region.DbSearcher;
import org.lionsoul.ip2region.Util;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.lang.reflect.Method;
import java.util.Objects;

@Slf4j
public class AddressUtil {

    private static String GET_ADDRESS_URL = "http://ip.taobao.com/service/getIpInfo.php?ip=";

    /**
     * 返回值
     */
    private static String CODE = "错误码(为零代表请求成功)";
    private static String country = "国名";
    private static String country_id = "国名(英文缩写)";
    private static String area = "地域(如：华东)";
    private static String area_id = "行政区ID";
    private static String region = "行政区ID";
    private static String region_id = "行政区ID";
    private static String city = "城市名";
    private static String city_id = "城市ID";
    private static String isp = "网络提供商";
    private static String isp_id = "网络提供商ID";
    private static String ip = "请求的IP地址";

    private AddressUtil() {
    }

    public static String getCityInfo(int algorithm, String ip) {
        try {
            String dbPath = AddressUtil.class.getResource("/ip2region/ip2region.db").getPath();
            File file = new File(dbPath);
            if (!file.exists()) {
                String tmpDir = System.getProperties().getProperty("java.io.tmpdir");
                dbPath = tmpDir + "ip.db";
                file = new File(dbPath);
                FileUtils.copyInputStreamToFile(Objects.requireNonNull(AddressUtil.class.getClassLoader().getResourceAsStream("classpath:ip2region/ip2region.db")), file);
            }
            DbConfig config = new DbConfig();
            DbSearcher searcher = new DbSearcher(config, file.getPath());
            Method method;
            switch (algorithm) {
                case DbSearcher.BTREE_ALGORITHM:
                    method = searcher.getClass().getMethod("btreeSearch", String.class);
                    break;
                case DbSearcher.BINARY_ALGORITHM:
                    method = searcher.getClass().getMethod("binarySearch", String.class);
                    break;
                case DbSearcher.MEMORY_ALGORITYM:
                    method = searcher.getClass().getMethod("memorySearch", String.class);
                    break;
                default:
                    method = searcher.getClass().getMethod("memorySearch", String.class);
                    break;
            }
            if (!Util.isIpAddress(ip)) {
                log.error("Error: Invalid ip address");
            }
            DataBlock dataBlock = (DataBlock) method.invoke(searcher, ip);
            return dataBlock.getRegion();
        } catch (Exception e) {
            log.error("获取地址信息异常：{}", e.getMessage());
        }
        return "";
    }

    public static String getCityByIp() throws IOException {
        String message =  HttpUtil.sendGet(GET_ADDRESS_URL+IPUtil.getIp());
//        String message = HttpUtil.sendGet(GET_ADDRESS_URL + IPUtil.getIpAddr(request));
        JSONObject json = JSONObject.fromObject(message);
        JSONObject jsonObject = (JSONObject) json.get("data");
        String region = (String) jsonObject.get("region");
        return region;
    }

    public static void main(String[] args) throws IOException {
        System.out.println(getCityByIp());
    }

}