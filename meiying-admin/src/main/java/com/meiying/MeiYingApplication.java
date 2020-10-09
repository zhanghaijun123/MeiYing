package com.meiying;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class MeiYingApplication {
    public static void main(String[] args) {
        SpringApplication.run(MeiYingApplication.class,args);
        System.out.println("MeiYing系统启动成功 \n"+
                "   _____ _____.___.  \n" +
                "  /     \\\\__  |   | \n" +
                " /  \\ /  \\/   |   | \n" +
                "/    Y    \\____   |  \n" +
                "\\____|__  / ______|  \n" +
                "        \\/\\/          ");
    }
}
