package model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Comment implements Serializable{
	private Long commentNo;
	private String userId;
	private Date regDate;
	private String commentContent;
	private String userName;
	private List<Reply> replies;
	private Reply reply;
	//꼭 default 생성자를 만들어 줘야 한다.
	public Comment() {
		
	}
	
	public Comment(Long commentNo, String userId, Date regDate, String commentContent) {
		this.commentNo = commentNo;
		this.userId = userId;
		this.regDate = regDate;
		this.commentContent = commentContent;
	}
	
	
	public List<Reply> getReplies() {
		return replies;
	}

	public void setReplies(List<Reply> replies) {
		this.replies = replies;
	}

	public Reply getReply() {
		return reply;
	}

	public void setReply(Reply reply) {
		this.reply = reply;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 * @return the commentNo
	 */
	public Long getCommentNo() {
		return commentNo;
	}
	/**
	 * @param commentNo the commentNo to set
	 */
	public void setCommentNo(Long commentNo) {
		this.commentNo = commentNo;
	}
	/**
	 * @return the userId
	 */
	public String getUserId() {
		return userId;
	}
	/**
	 * @param userId the userId to set
	 */
	public void setUserId(String userId) {
		this.userId = userId;
	}
	/**
	 * @return the regDate
	 */
	public Date getRegDate() {
		return regDate;
	}
	/**
	 * @param regDate the regDate to set
	 */
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	/**
	 * @return the commentContent
	 */
	public String getCommentContent() {
		return commentContent; 
	}
	/**
	 * @param commentContent the commentContent to set
	 */
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	@Override
	public String toString() {
		return "Comment [commentNo=" + commentNo + ", userId=" + userId + ", regDate=" + regDate + ", commentContent="
				+ commentContent + "]";
	}
	
	
}
