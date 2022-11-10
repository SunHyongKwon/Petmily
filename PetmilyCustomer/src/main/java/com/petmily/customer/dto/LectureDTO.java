package com.petmily.customer.dto;

import java.sql.Timestamp;

public class LectureDTO {

		int lid;
		String ltitle;
		String lcontent;
		String lvideolink;
		int lchapter;
		int lvideolength;
		Timestamp linitdate;
		Timestamp ldeletedate;
		
		public LectureDTO() {
			// TODO Auto-generated constructor stub
		}
		
		
		public LectureDTO(int lid, String ltitle, String lcontent, String lvideolink, int lchapter, int lvideolength,
				Timestamp linitdate, Timestamp ldeletedate) {
			super();
			this.lid = lid;
			this.ltitle = ltitle;
			this.lcontent = lcontent;
			this.lvideolink = lvideolink;
			this.lchapter = lchapter;
			this.lvideolength = lvideolength;
			this.linitdate = linitdate;
			this.ldeletedate = ldeletedate;
		}


		public int getLid() {
			return lid;
		}

		public void setLid(int lid) {
			this.lid = lid;
		}

		public String getLtitle() {
			return ltitle;
		}

		public void setLtitle(String ltitle) {
			this.ltitle = ltitle;
		}

		public String getLcontent() {
			return lcontent;
		}

		public void setLcontent(String lcontent) {
			this.lcontent = lcontent;
		}

		public String getLvideolink() {
			return lvideolink;
		}

		public void setLvideolink(String lvideolink) {
			this.lvideolink = lvideolink;
		}

		public int getLchapter() {
			return lchapter;
		}

		public void setLchapter(int lchapter) {
			this.lchapter = lchapter;
		}

		public int getLvideolength() {
			return lvideolength;
		}

		public void setLvideolength(int lvideolength) {
			this.lvideolength = lvideolength;
		}

		public Timestamp getLinitdate() {
			return linitdate;
		}

		public void setLinitdate(Timestamp linitdate) {
			this.linitdate = linitdate;
		}

		public Timestamp getLdeletedate() {
			return ldeletedate;
		}

		public void setLdeletedate(Timestamp ldeletedate) {
			this.ldeletedate = ldeletedate;
		}
		
		

}
