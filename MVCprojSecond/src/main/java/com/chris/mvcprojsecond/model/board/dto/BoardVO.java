package com.chris.mvcprojsecond.model.board.dto;

import java.util.Arrays;
import java.util.Date;

public class BoardVO {
	private int bno;			// �Խñ� ��ȣ
	private String title;		// �Խñ� ����
	private String content;		// �Խñ� ����
	private String writer;		// �Խñ� �ۼ���
	private String userName;	// �Խñ� �ۼ����� �̸�(ȸ���̸�)
	private Date regdate;		// �Խñ� �ۼ����� util.Date
	private int viewcnt;		// �Խñ� ��ȸ��
	private int recnt;			// �Խñ� ����� �� 
	private String show;		// �Խñ� ���� ���� ����(y, n)
	private String[] files;		// �Խñ� ÷�������� �̸�(�迭)
	// Getter/Setter
	public int getBno() {
		return bno;
	}

	public void setBno(int bno) {
		this.bno = bno;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public int getViewcnt() {
		return viewcnt;
	}

	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}

	public int getRecnt() {
		return recnt;
	}

	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}
	
	public String getShow() {
		return show;
	}
	
	public void setShow(String show) {
		this.show = show;
	}
	
	public String[] getFiles() {
		return files;
	}
	
	public void setFiles(String[] files) {
		this.files = files;
	}
	// toString()
	@Override
	public String toString() {
		return "BoardVO [bno=" + bno + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", userName=" + userName + ", regdate=" + regdate + ", viewcnt=" + viewcnt + ", recnt=" + recnt
				+ ", show=" + show + ", files=" + Arrays.toString(files) + "]";
	}
}