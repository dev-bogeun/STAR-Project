package com.star.answer.domain;

public class AnswerDTO {
	private Long answerNumber;
	private String answerContent;
	private Long userNumber;
	private Long boardNumber;
	private String userId;
	private String userName;
	private String useStatus;
	private String boardDate;

	public AnswerDTO() {;}

	public Long getAnswerNumber() {
		return answerNumber;
	}

	public void setAnswerNumber(Long answerNumber) {
		this.answerNumber = answerNumber;
	}

	public String getAnswerContent() {
		return answerContent;
	}

	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}

	public Long getUserNumber() {
		return userNumber;
	}

	public void setUserNumber(Long userNumber) {
		this.userNumber = userNumber;
	}

	public Long getBoardNumber() {
		return boardNumber;
	}

	public void setBoardNumber(Long boardNumber) {
		this.boardNumber = boardNumber;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUseStatus() {
		return useStatus;
	}

	public void setUseStatus(String useStatus) {
		this.useStatus = useStatus;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}
	
	

	@Override
	public String toString() {
		return "AnswerDTO [answerNumber=" + answerNumber + ", answerContent=" + answerContent + ", userNumber="
				+ userNumber + ", boardNumber=" + boardNumber + ", userId=" + userId + ", userName=" + userName
				+ ", useStatus=" + useStatus + ", boardDate=" + boardDate + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((userNumber == null) ? 0 : userNumber.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		AnswerDTO other = (AnswerDTO) obj;
		if (userNumber == null) {
			if (other.userNumber != null)
				return false;
		} else if (!userNumber.equals(other.userNumber))
			return false;
		return true;
	}

}
