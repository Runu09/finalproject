package com.onair.proj.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
//import org.json.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.onair.proj.note.model.NoteService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ProjController {

	private final NoteService noteService;
	private static final Logger logger
	=LoggerFactory.getLogger(ProjController.class);


	@RequestMapping("/about/about.do")
	public String about() {
		return "/about/about";
	}

	/*
	 * @RequestMapping("/main/main.do") public String main() { return "/main/main";
	 * }
	 */

	/*
	 * @RequestMapping("/customer/notice.do") public String notice() { return
	 * "/customer/notice"; }
	 */

	@RequestMapping("/customer/noticeDetail.do")
	public String noticeDetail() {
		return "/customer/noticeDetail";
	}

	@RequestMapping("/customer/noticeWrite.do")
	public String noticeWrite() {
		return "/customer/noticeWrite";
	}

	@RequestMapping("/customer/terms.do")
	public String terms() {
		return "/customer/terms";
	}

	@RequestMapping("/customer/information.do")
	public String information() {
		return "/customer/information";
	}

	/*
	 * @RequestMapping("/booking/flight-booking.do") public String booking() {
	 * return "/booking/flight-booking"; }
	 */

	@RequestMapping("/booking/flight-booking-addons.do")
	public String bookingAddons() {
		return "/booking/flight-booking-addons";
	}

	@RequestMapping("/booking/flight-booking-failed.do")
	public String bookingFailed() {
		return "/booking/flight-booking-failed";
	}



	/*
	 * @RequestMapping("/booking/flight-booking-success.do") public String
	 * bookingSuccess() { return "/booking/flight-booking-success"; }
	 */

	@RequestMapping("/booking/flight-not-found.do")
	public String bookingNotFound() {
		return "/booking/flight-not-found";
	}

	/*
	 * @RequestMapping("/booking/flight-round-trip.do") public String
	 * bookingRoundTrip() { return "/booking/flight-round-trip"; }
	 */

	@RequestMapping("/customer/faq.do")
	public String faq() {
		return "/customer/faq";
	}


	@RequestMapping("/customer/airport.do")
	public String airport() {
		return "/customer/airport";
	}

	@RequestMapping("/inc/top")
	@ResponseBody
	public String incTop(String memId) {
		String count=null;
		if(memId!=null&&!memId.isEmpty()) {

			count=Integer.toString(noteService.newNoteCount(memId));

		}

		return count;
	}


	@RequestMapping("/token")
	@ResponseBody
	public String token(String imp_key, String imp_secret, HttpServletRequest request,HttpServletResponse response) throws Exception {

		logger.info("imp_key={}, imp_secret={}",imp_key,imp_secret);

		JSONObject json = new JSONObject();

		json.put("imp_key", URLEncoder.encode(imp_key, "UTF-8"));

		json.put("imp_secret", URLEncoder.encode(imp_secret, "UTF-8"));

		String _token = getToken(request, response, json, "https://api.iamport.kr/users/getToken"); 

		return _token;
	}

	public String getToken(HttpServletRequest request

			,HttpServletResponse response

			,JSONObject json

			,String requestURL) throws Exception{



		// requestURL 아임퐅크 고유키, 시크릿 키 정보를 포함하는 url 정보 

		String _token = "";

		try{

			String requestString = "";

			URL url = new URL(requestURL);

			HttpURLConnection connection = (HttpURLConnection) url.openConnection();

			connection.setDoOutput(true); 				

			connection.setInstanceFollowRedirects(false);  

			connection.setRequestMethod("POST");

			connection.setRequestProperty("Content-Type", "application/json");

			OutputStream os= connection.getOutputStream();

			os.write(json.toString().getBytes());

			connection.connect();

			StringBuilder sb = new StringBuilder(); 

			if (connection.getResponseCode() == HttpURLConnection.HTTP_OK) {

				BufferedReader br = new BufferedReader(new InputStreamReader(connection.getInputStream(), "utf-8"));



				String line = null;  

				while ((line = br.readLine()) != null) {  

					sb.append(line + "\n");  

				}

				br.close();

				requestString = sb.toString();



			}

			os.flush();

			connection.disconnect();



			JSONParser jsonParser = new JSONParser();

			JSONObject jsonObj = (JSONObject) jsonParser.parse(requestString);



			if((Long)jsonObj.get("code")  == 0){

				JSONObject getToken = (JSONObject) jsonObj.get("response");

				System.out.println("getToken==>>"+getToken.get("access_token") );

				_token = (String)getToken.get("access_token");

			}



		}catch(Exception e){

			e.printStackTrace();

			_token = "";

		}

		return _token;

	}
}
