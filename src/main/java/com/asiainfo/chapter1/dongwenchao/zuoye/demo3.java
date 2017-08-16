package com.asiainfo.chapter1.dongwenchao.zuoye;

import java.io.BufferedReader;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
//客户端
/**
 * Created by 超超 on 2017/8/10 0010.
 */
public class demo3 {
    public static void main(String[] args) {
        try {
            /** 创建Socket*/
            // 创建一个流套接字并将其连接到指定 IP 地址的指定端口号(本处是本机)
            Socket socket =new Socket("192.168.17.1",2014);
            // 60s超时
            socket.setSoTimeout(60000);
            /** 发送客户端准备传输的信息 */
            // 由Socket对象得到输出流，并构造PrintWriter对象
            PrintWriter printWriter =new PrintWriter(socket.getOutputStream(),true);//PrintWriter 向文本输出流打印对象的格式化表示形式。
            // 将输入读入的字符串输出到Server
            System.out.println("请输入你要查询的Id");
            BufferedReader sysBuff =new BufferedReader(new InputStreamReader(System.in));//BufferedReader一个读的流
            printWriter.println(sysBuff.readLine());//读取要传给服务器的值，传出。
            // 刷新输出流，使Server马上收到该字符串
            printWriter.flush();
            /** 用于获取服务端传输来的信息 */
            // 由Socket对象得到输入流，并构造相应的BufferedReader对象
            BufferedReader bufferedReader =new BufferedReader(new InputStreamReader(socket.getInputStream()));
            // 输入读入一字符串
            String result = bufferedReader.readLine();
            System.out.println("服务器传回 : " + result);
            FileWriter writer=new FileWriter("asd.txt");//写入字符文件的
            writer.write(result);
            writer.close();
            /** 关闭Socket*/
            printWriter.close();
            bufferedReader.close();
            socket.close();
        }catch (Exception e) {
            System.out.println("Exception:" + e);
        }
    }}
