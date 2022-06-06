package com.jjr8112.Util;

import java.net.*;

public class MAC3Util {

    public static String getHostName(String ip){
        InetAddress inet;
        try {
            inet = InetAddress.getByName(ip);
            return inet.getHostName();
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
        return "";
    }

    public static void main(String[] args) throws Exception {
        // TODO Auto-generated method stub
        InetAddress ia=null;
        try {
            ia=ia.getLocalHost();
            byte[]addr = ia.getAddress();


            String localname=ia.getHostName();
            String localip=ia.getHostAddress();
            //System.out.println("本机名称是："+ localname);
            //System.out.println("本机的ip是 ："+localip);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        InetAddress ia1 = InetAddress.getLocalHost();//获取本地IP对象
        System.out.println(/*"MAC ......... "+*/getMACAddress("ia"));
    }
    //获取MAC地址的方法
    public static String getMACAddress(String ip/*,InetAddress ia*/)throws Exception{
        InetAddress ia = InetAddress.getByName(ip);

        //获得网络接口对象（即网卡），并得到mac地址，mac地址存在于一个byte数组中。

        byte[] mac = NetworkInterface.getByInetAddress(ia).getHardwareAddress();
        System.out.println(mac);
        //下面代码是把mac地址拼装成String
        StringBuffer sb = new StringBuffer();

        for(int i=0;i<mac.length;i++){
            if(i!=0){
                sb.append("-");
            }
            //mac[i] & 0xFF 是为了把byte转化为正整数
            String s = Integer.toHexString(mac[i] & 0xFF);
            //System.out.println("--------------");
            //System.err.println(s);

            sb.append(s.length()==1?0+s:s);
        }

        //把字符串所有小写字母改为大写成为正规的mac地址并返回
        System.out.println(sb.toString());
        return sb.toString().toUpperCase();
    }

}