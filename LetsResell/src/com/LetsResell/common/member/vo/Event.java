package com.LetsResell.common.member.vo;

public class Event {

	private int eventNo;
	private String eventImage;
	private String eventDetail;
	private String eventStatus;
	
	public Event() {}

	public Event(int eventNo, String eventImage, String eventDetail, String eventStatus) {
		super();
		this.eventNo = eventNo;
		this.eventImage = eventImage;
		this.eventDetail = eventDetail;
		this.eventStatus = eventStatus;
	}

	public int getEventNo() {
		return eventNo;
	}

	public void setEventNo(int eventNo) {
		this.eventNo = eventNo;
	}

	public String getEventImage() {
		return eventImage;
	}

	public void setEventImage(String eventImage) {
		this.eventImage = eventImage;
	}

	public String getEventDetail() {
		return eventDetail;
	}

	public void setEventDetail(String eventDetail) {
		this.eventDetail = eventDetail;
	}

	public String getEventStatus() {
		return eventStatus;
	}

	public void setEventStatus(String eventStatus) {
		this.eventStatus = eventStatus;
	}

	@Override
	public String toString() {
		return "Event [eventNo=" + eventNo + ", eventImage=" + eventImage + ", eventDetail=" + eventDetail
				+ ", eventStatus=" + eventStatus + "]";
	}
}
