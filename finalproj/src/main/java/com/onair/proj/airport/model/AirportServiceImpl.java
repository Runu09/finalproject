package com.onair.proj.airport.model;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.nio.charset.Charset;

import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AirportServiceImpl implements AirportService{
	private static final Logger logger
	=LoggerFactory.getLogger(AirportServiceImpl.class);
	
	private final AirportDAO airportDAO;
	
	private String getUrlAirport(String callUrl) {
		logger.info(this.getClass().getName()+", getUrlAirport");
		
		logger.info("Requsted URL:"+callUrl);
		
		StringBuilder sb=new StringBuilder();
		URLConnection conn=null;
		InputStreamReader isr=null;
		
		String json="";
		
		HostnameVerifier allHostVerifier=new HostnameVerifier() {
			@Override
			public boolean verify(String hostname, SSLSession session) {
				return true;
			}
		};
		HttpsURLConnection.setDefaultHostnameVerifier(allHostVerifier);
		
		try {
			//웹 사이트 접속을 위한 url 파싱
			URL url=new URL(callUrl);
			
			//접속
			conn=url.openConnection();
			
			if(conn!=null) {
				conn.setReadTimeout(60*1000);
			}
			if(conn!=null && conn.getInputStream()!=null) {
				isr=new InputStreamReader(conn.getInputStream(), Charset.forName("UTF-8"));
				
				BufferedReader bufferedReader=new BufferedReader(isr);
				
				if(bufferedReader!=null) {
					int cp;
					while((cp=bufferedReader.read())!=-1) {
						sb.append((char)cp);
					}
					bufferedReader.close();
				}
			}
			isr.close();
		} catch (Exception e) {
			throw new RuntimeException("Exception URL:"+callUrl, e);
		}
		json=sb.toString();
		logger.info("json result : "+json);
		logger.info(this.getClass().getName());
		
		return json;
	}
}
