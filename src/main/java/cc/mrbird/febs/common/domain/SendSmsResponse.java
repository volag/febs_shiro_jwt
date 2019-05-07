package cc.mrbird.febs.common.domain;

import lombok.Data;

@Data
public class SendSmsResponse {

    private String phoneNumbers;
    private String signName;
    private String templateCode;
    private String templateParam;

}
