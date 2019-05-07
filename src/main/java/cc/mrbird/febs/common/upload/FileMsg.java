package cc.mrbird.febs.common.upload;

import lombok.Data;

@Data
public class FileMsg {

        private String status;
        private String filename;
        private String fileLocation;

        public FileMsg(String status, String filename, String fileLocation) {
            super();
            this.status = status;
            this.fileLocation = fileLocation;
        }
        public FileMsg() {
            super();
        }

    }
