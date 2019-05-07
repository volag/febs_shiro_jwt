package cc.mrbird.febs.common.converter;

import cc.mrbird.febs.common.utils.DateUtil;
import com.wuwenze.poi.convert.ReadConverter;
import com.wuwenze.poi.exception.ExcelKitReadConverterException;
import lombok.extern.slf4j.Slf4j;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * Execl导入时间类型字段格式化
 */
@Slf4j
public class StringConverter implements ReadConverter {

    @Override
    public Date convert(Object o) throws ExcelKitReadConverterException {
        String value = (String) o;
        try {
            if (value == null)
                return null;
            else {
                String time = DateUtil.formatCSTTime(value.toString(), DateUtil.FULL_TIME_SPLIT_PATTERN);
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                return sdf.parse(time);
            }
        } catch (Exception e) {
            log.error("时间转换异常", e);
            return null;
        }
    }
}
