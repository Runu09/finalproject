package com.onair.proj.airport.model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class AirportInfoExplorer {
	//tag값의 정보를 가져오는 메소드
	private static String getTagValue(String tag, Element eElement) {
		NodeList nList = eElement.getElementsByTagName(tag).item(0).getChildNodes();
		Node nValue = (Node) nList.item(0);
		if (nValue == null) {
			return null;
		}
		return nValue.getNodeValue();
	}

	public List<AirportVO> parsingData(String searchName) throws IOException, ParserConfigurationException, SAXException {

		List<AirportVO> list = new ArrayList<AirportVO>();
		// "&pageNo=100&numOfRows=100"  갯수와 로우 100까지는 테스트 10000은 404에러
		String str = "";    //return을 위해서
		String parsingUrl = "";//Parsing할 URL
		String urlBuilder = "http://apis.data.go.kr/1613000/DmstcFlightNvgInfoService/getArprtList" + "?" 
				+ URLEncoder.encode("ServiceKey", "UTF-8") + "=nO3iT4gITCWRXgfAKvwtPnMfFQ7jlwxotDSkHFRXiDZKBEYbBTTQWOKSlsVg8f3GmmvUMnWesRk3vsZiy%2FRfTw%3D%3D"/*Service Key*/;
		URL url = new URL(urlBuilder);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("GET");
		conn.setRequestProperty("Content-type", "application/json");
		System.out.println("Response code: " + conn.getResponseCode());
		BufferedReader rd;
		if (conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
			rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = rd.readLine()) != null) {
			sb.append(line);
		}
		rd.close();
		conn.disconnect();
		System.out.println(sb.toString());

		parsingUrl = url.toString();
		System.out.println(parsingUrl);

		//페이지에 접근해줄 Document객체 생성
		//doc객체를 통해 파싱할 url의 요소를 읽어들인다.
		//doc.getDocumentElement().getNodeName()을 출력하면 위 xml의 최상위 태그를 가져온다.
		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
		Document doc = dBuilder.parse(parsingUrl);

		// root tag
		doc.getDocumentElement().normalize();
		System.out.println("Root element: " + doc.getDocumentElement().getNodeName()); // Root element: result

		//파싱할 데이터  tag에 접근하는데 리스트 수 확인
		NodeList nList = doc.getElementsByTagName("item");
		System.out.println("파싱할 리스트 수 : " + nList.getLength());//파링할 리스트 수

		for (int i = 0; i < nList.getLength(); i++) {
			Node nNode = nList.item(i);
			if (nNode.getNodeType() == Node.ELEMENT_NODE) {

				Element eElement = (Element) nNode;

				AirportVO vo = new AirportVO();

				System.out.println("=================================");
				System.out.println(getTagValue("airportId", eElement));
				System.out.println(getTagValue("airportNm", eElement));

				vo.setAName((getTagValue("airportId", eElement)));
				vo.setALoc((getTagValue("airportNm", eElement)));

				assert false;
				list.add(vo);
			}
		}

		return list;

	}
}
