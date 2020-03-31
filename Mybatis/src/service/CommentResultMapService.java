package service;

import model.Comment;
import model.CommentUser;
import repository.CommentSessionResultMapRepository;

public class CommentResultMapService {
	private CommentSessionResultMapRepository 
	commentRepository = new CommentSessionResultMapRepository();
	
	public Comment selectByPrimaryKey(Long commentNo) {
		return commentRepository.selectCommentByPrimaryKey(commentNo);
	}
	public Comment selectCommentByPrimaryKeyDiscriminator(Long commentNo) {
		return commentRepository.selectCommentByPrimaryKey(commentNo);
	}
	public Comment selectCommentByPrimaryKeyConstructor(Long commentNo) {
		return commentRepository.selectCommentByPrimaryKeyConstructor(commentNo);
	}
	public CommentUser selectCommentByPrimaryKeyAssociation(Long commentNo) {
		return commentRepository.selectCommentByPrimaryKeyAssociation(commentNo);
	}
	public Comment selectCommentByPrimaryKeyCollection(Long commentNo) {
		return commentRepository.selectCommentByPrimaryKeyCollection(commentNo);
	}

}
