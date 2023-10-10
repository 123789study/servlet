package JDBC.BOOK.Tool;

import java.io.UnsupportedEncodingException;

public class CharactorEncoding {
    public CharactorEncoding() {
    }
    public String Chinese(String str){
        String text="";
        try {
            if (str!=null&&!"".equals(str)){
                text=new String(str.getBytes("ISO-8859-1"),"UTF-8");
            }
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
        return text;
    }
}
