package cc.mrbird.febs.common.service;

import com.qiniu.common.QiniuException;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;

public interface QnUploadService {

     String uploadFile(File file, String fileName) throws QiniuException;

     String uploadFile(InputStream inputStream, String fileName) throws QiniuException;

     Boolean upload(byte[] localData,String remoteFileName,String key) throws IOException;

     String delete(String key) throws QiniuException;

     void afterPropertiesSet() throws Exception;

}
