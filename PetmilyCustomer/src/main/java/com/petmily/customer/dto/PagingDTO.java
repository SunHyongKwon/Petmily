package com.petmily.customer.dto;

public class PagingDTO {
	int cPage;
	int currentBlock;
	int pageLength;
	int startPage;
	int endPage;
	int totalPages;
	int startRow;
	int endRow;
	public PagingDTO() {
		// TODO Auto-generated constructor stub
	}
	
	

	



	public PagingDTO(int cPage, int currentBlock, int pageLength, int startPage, int endPage, int totalPages,
			int startRow, int endRow) {
		super();
		this.cPage = cPage;
		this.currentBlock = currentBlock;
		this.pageLength = pageLength;
		this.startPage = startPage;
		this.endPage = endPage;
		this.totalPages = totalPages;
		this.startRow = startRow;
		this.endRow = endRow;
	}







	public int getcPage() {
		return cPage;
	}

	public void setcPage(int cPage) {
		this.cPage = cPage;
	}

	public int getCurrentBlock() {
		return currentBlock;
	}

	public void setCurrentBlock(int currentBlock) {
		this.currentBlock = currentBlock;
	}

	public int getPageLength() {
		return pageLength;
	}

	public void setPageLength(int pageLength) {
		this.pageLength = pageLength;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}



	public int getStartRow() {
		return startRow;
	}



	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	
	
}
