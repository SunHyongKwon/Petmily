package com.petmily.customer.dao;

import java.util.Properties;
import java.util.Random;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class EmailDAO {
	
	public EmailDAO() {
		// TODO Auto-generated constructor stub
	}
	
	
	public int send(String email) {
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		
		Session session = Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("mikekwon42@gmail.com", "slycrwzinpidjvuc");
			}
		});
		
		Random random = new Random();
		
		int certifyNum = random.hashCode();
		
		String receiver = email; // 메일 받을 주소
		String title = "[펫밀리] 회원가입 이메일 인증";
		String content = "<div"
				+ "		style=\"font-family: 'Apple SD Gothic Neo', 'sans-serif' !important; width: 540px; height: 600px; border-top: 4px solid{$point_color\">"
				+ "		<h1"
				+ "			style=\"margin: 0; padding: 0 5px; font-size: 28px; font-weight: 400;\">"
				+ "			<span style=\"font-size: 30px; margin: 0 0 10px 3px; color: #de6637;\"><strong>Petmily</strong></span><br />"
				+ "			<span style=\"color: {$point_color\">메일인증</span> 안내입니다."
				+ "		</h1>"
				+ "		<p"
				+ "			style=\"font-size: 16px; line-height: 26px; margin-top: 50px; padding: 0 5px;\">"
				+ "			안녕하세요.<br /> Petmily에 가입해 주실려고 해서 진심으로 감사드립니다.<br /> 아래 <b"
				+ "				style=\"color: {$point_color\">'메일 인증 번호'</b>를 입력하여 회원가입을 완료해 주세요.<br />"
				+ "			<br />"
				+ "			인증번호 : "
				+ "			<br />"
				+ "			<h2><strong>" + certifyNum + "</strong></h2><br />"
				+ "			<br /> 감사합니다."
				+ "		</p>"
				+ ""
				+ "		<div style=\"border-top: 1px solid #DDD; padding: 5px;\">"
				+ "			<p style=\"font-size: 13px; line-height: 21px; color: #555;\">"
				+ "				직업정보제공사업 신고번호 2016-서울강남-1234<br>"
				+ "				주소 서울특별시 강남구"
				+ "				전화 010-9711-0641|고객문의 raindrop6651@gmail.com<br><br />"
				+ "			</p>"
				+ "		</div>"
				+ "	</div>";
		Message message = new MimeMessage(session);
		
		try {
			message.setFrom(new InternetAddress("raindrop6651@gmail.com", "Petmily", "utf-8"));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(receiver));
			message.setSubject(title);
			message.setContent(content, "text/html; charset=utf-8");

			Transport.send(message);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		
		return certifyNum;
	}
}
