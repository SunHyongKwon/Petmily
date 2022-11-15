package com.petmily.customer.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.petmily.customer.dao.ApplyDAO;
import com.petmily.customer.dao.LecturecheckDAO;
import com.petmily.customer.dto.UserDTO;

public class MypageChallengeCommand implements CustomerCommand {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();

		UserDTO user = (UserDTO) session.getAttribute("user");
		String uid = user.getUid();

		LecturecheckDAO dao = new LecturecheckDAO();

		int chapterOne = dao.selectChapterOne(uid);
		int chapterTwo = dao.selectChapterTwo(uid);
		int chapterThree = dao.selectChapterThree(uid);

		int checkChapter = 0;

		if (chapterOne == 2) {
			checkChapter++;
		}

		if (chapterTwo == 6) {
			checkChapter++;
		}

		if (chapterThree == 3) {
			checkChapter++;
		}

		// 도전 과제 수행 했는지 안했는지
		request.setAttribute("checkChapater", checkChapter);

		ApplyDAO dao2 = new ApplyDAO();

		// 같이 산책 completedate 찍힌 거 가져오기
		String pcategory = "walk";
		int countWalk = dao2.selectCategory(uid, pcategory);

		int checkWalk = 0;

		if (countWalk >= 3) {
			checkWalk++;
		}

		if (countWalk >= 5) {
			checkWalk++;
		}

		if (countWalk >= 10) {
			checkWalk++;
		}

		request.setAttribute("checkWalk", checkWalk);

		// 같이 펫카페 completedate 찍힌 거 가져오기
		pcategory = "petcafe";
		int countPetcafe = dao2.selectCategory(uid, pcategory);

		int checkPetcafe = 0;

		if (countPetcafe >= 3) {
			checkPetcafe++;
		}

		if (countPetcafe >= 5) {
			checkPetcafe++;
		}

		if (countPetcafe >= 10) {
			checkPetcafe++;
		}

		request.setAttribute("checkPetcafe", checkPetcafe);
		// 같이 봉사 completedate 찍힌 거 가져오기
		pcategory = "volunteer";
		int countVolunteer = dao2.selectCategory(uid, pcategory);
		
		int checkVolunteer = 0;

		if (countVolunteer >= 3) {
			checkVolunteer++;
		}

		if (countVolunteer >= 5) {
			checkVolunteer++;
		}

		if (countVolunteer >= 10) {
			checkVolunteer++;
		}

		request.setAttribute("checkVolunteer", checkVolunteer);
		// 찾아주세요 completedate 찍힌 거 가져오기
		pcategory = "find";
		int countFind = dao2.selectCategory(uid, pcategory);
		
		int checkFind = 0;

		if (countFind >= 3) {
			checkFind++;
		}

		if (countFind >= 5) {
			checkFind++;
		}

		if (countFind >= 10) {
			checkFind++;
		}

		request.setAttribute("checkFind", checkFind);
		
		// 찾았어요 completedate 찍힌 거 가져오기
		pcategory = "found";
		int countFound = dao2.selectCategory(uid, pcategory);
		
		int checkFound = 0;

		if (countFound >= 3) {
			checkFound++;
		}

		if (countFound >= 5) {
			checkFound++;
		}

		if (countFound >= 10) {
			checkFound++;
		}

		request.setAttribute("checkFound", checkFound);

	}

	@Override
	public int executeInt(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		return 0;
	}

}
