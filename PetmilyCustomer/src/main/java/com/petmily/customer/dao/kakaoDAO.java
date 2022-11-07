package com.petmily.customer.dao;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.petmily.customer.dto.kakaoDTO;

public class kakaoDAO {
	
	public kakaoDAO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public String getToken(String code) {
		String token = "";

		final String AUTH_HOST = "https://kauth.kakao.com";
		final String tokenRequestUrl = AUTH_HOST + "/oauth/token?";

		String grant_type = "grant_type=authorization_code&";
		String client_id = "client_id=c0adedd90ef6ae1146e57b65fcf48e85&";
		String redirect_url = "redirect_url=http://localhost:8080/PetmilyCustomer/sign_up_kakao.do&";
		code = "code=" + code + "&";
		String client_secret = "client_secret=KVcPxAefokHxNYI8wSKHbAVXWHYYRG8d";


		HttpsURLConnection conn = null;
		OutputStreamWriter writer = null;
		BufferedReader reader = null;
		InputStreamReader isr = null;
		URL url = null;

		try {
			// api 요청 보내기
			// parameter 는 url에 붙여서 보내기
			url = new URL(tokenRequestUrl + grant_type + client_id + redirect_url + code + client_secret);
			conn = (HttpsURLConnection) url.openConnection();
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			conn.setRequestProperty("charset", "utf-8");

			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			writer = new OutputStreamWriter(conn.getOutputStream());
			writer.flush();

			// 결과값
			int responseCode = conn.getResponseCode();
			isr = new InputStreamReader(conn.getInputStream());
			reader = new BufferedReader(isr);

			final StringBuffer buffer = new StringBuffer();

			String line;
			while ((line = reader.readLine()) != null) {
				buffer.append(line);
			}

			String responseParam = buffer.toString();
			
			Gson gson = new Gson();
			Map< String, Object> map = gson.fromJson(responseParam, Map.class);
			
			token = (String) map.get("access_token");
			
			
			
		} catch (Exception e) {
			return null;
		}
		return token;
	}
	
	public kakaoDTO getKakao(String token) {

		String name = "";
		String profile = "";
		String email = "";
		String birthday = "";
		String gender = "";
		long id = 0;

		String getPersonalInfoUrl = "https://kapi.kakao.com/v2/user/me";

		HttpsURLConnection conn = null;
		OutputStreamWriter writer = null;
		BufferedReader reader = null;
		InputStreamReader isr = null;
		URL url = null;

		try {
			// api 요청 보내기
			url = new URL(getPersonalInfoUrl);
			conn = (HttpsURLConnection) url.openConnection();
			// header는 setRequestProperty 로 보내기
			conn.setRequestProperty("Authorization", "Bearer " + token.trim());
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			conn.setRequestProperty("charset", "utf-8");

			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			writer = new OutputStreamWriter(conn.getOutputStream());
			writer.flush();

			// 결과값
			int responseCode = conn.getResponseCode();
			isr = new InputStreamReader(conn.getInputStream());
			reader = new BufferedReader(isr);

			final StringBuffer buffer = new StringBuffer();

			String line;
			while ((line = reader.readLine()) != null) {
				buffer.append(line);
			}
			// json 형식으로 post 받은 결과값
			String responseParam = buffer.toString();
			// json 형식의 string을 json으로 parsing 하기 위해서
			JsonParser parser = new JsonParser();
			// 전체 element 
			JsonElement element = parser.parse(responseParam);
			id = element.getAsJsonObject().get("id").getAsInt();
			
			// element의 object 단위
			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();
			
			// 동의 했는지 안했는지 가져오기
			String birthday_needs_agreement = kakao_account.get("birthday_needs_agreement").getAsString();
			String gender_needs_agreement = kakao_account.get("gender_needs_agreement").getAsString();
			String email_needs_agreement = kakao_account.get("email_needs_agreement").getAsString();
			
			// object 에서의 원시 타입의 데이터
			name = properties.get("nickname").getAsString();
			profile = properties.get("profile_image").getAsString();
			
			if(birthday_needs_agreement.equals("false")) {
				birthday = kakao_account.get("birthday").getAsString();				
			}
			
			if(gender_needs_agreement.equals("false")) {
				gender = kakao_account.get("gender").getAsString();				
			}
			
			if(email_needs_agreement.equals("false")) {
				email = kakao_account.get("email").getAsString();				
			}
			
			// api 에서 받은 data들 한번에 보내기
			kakaoDTO kakao = new kakaoDTO( id, name, profile, birthday, email, gender);
			
			return kakao;
		} catch (Exception e) {
			return null;
		}
	}
	
	public void unlink(long id ,String token) {
		
		String getPersonalInfoUrl = "https://kapi.kakao.com/v1/user/unlink";
		
		String target_id_type = "user_id";
		
		HttpsURLConnection conn = null;
		OutputStreamWriter writer = null;
		BufferedReader reader = null;
		InputStreamReader isr = null;
		URL url = null;
		
		try {
			// api 요청 보내기
			url = new URL(getPersonalInfoUrl + "?target_id_type=" + target_id_type + "&target_id=" + id);
			conn = (HttpsURLConnection) url.openConnection();
			// header는 setRequestProperty 로 보내기
			conn.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
			conn.setRequestProperty("Authorization", "Bearer " + token.trim());
			
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			writer = new OutputStreamWriter(conn.getOutputStream());
			writer.flush();

			// 결과값
			int responseCode = conn.getResponseCode();
			isr = new InputStreamReader(conn.getInputStream());
			reader = new BufferedReader(isr);

			final StringBuffer buffer = new StringBuffer();

			String line;
			while ((line = reader.readLine()) != null) {
				buffer.append(line);
			}
			// json 형식으로 post 받은 결과값
			String responseParam = buffer.toString();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
