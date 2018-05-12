package com.NUAALH;

import java.io.UnsupportedEncodingException;

public class EncodingFilter {
    public String to_UTF8(String a) throws UnsupportedEncodingException {
        String aim = new String(a.getBytes("ISO-8859-1"),"UTF-8");
        return aim;
    }
}
