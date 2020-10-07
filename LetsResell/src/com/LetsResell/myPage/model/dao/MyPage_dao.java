package com.LetsResell.myPage.model.dao;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import static com.LetsResell.template.JDBCTemplate.*;

import com.LetsResell.member.model.vo.Member;
import com.LetsResell.myPage.model.vo.Account;
import com.LetsResell.myPage.model.vo.Address;
import com.LetsResell.myPage.model.vo.Card;
import com.LetsResell.myPage.model.vo.Wishlist;
import com.LetsResell.myPage.model.vo.WishlistPageInfo;

public class MyPage_dao {
	
	private Properties prop = new Properties();
	
	public MyPage_dao() {
		
		String fileName = MyPage_dao.class.getResource("/sql/myPage/myPage-mapper1.xml").getPath();
		
		try {
			prop.loadFromXML(new FileInputStream(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}	
	}
	
	/**
	 * 회원 정보 조회
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public Member selectMember(Connection conn, int userNo) {
		
		Member member = null;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				
				member = new Member(rset.getInt("MEM_USER_NO"),
									rset.getString("MEM_USER_ID"),
									rset.getString("MEM_USER_PWD"),
									rset.getString("MEM_USER_NAME"),
									rset.getString("MEM_PHONE"),
									rset.getDate("MEM_ENROLL_DATE"),
									rset.getDate("MEM_MODIFY_DATE"),
									rset.getString("MEM_STATUS"),
									rset.getString("MEM_USER_SSN"),
									rset.getDate("MEM_OUT_DATE"),
									rset.getInt("MEM_REPORT_COUNT"),
									rset.getString("MEM_BLACKLIST_STATUS")
									);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return member;
	}
	
	/**
	 * 등록된 카드 조회
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public ArrayList<Card> selectCard(Connection conn, int userNo) {
		
		ArrayList<Card> cardList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				cardList.add(new Card(rset.getString("CARD_NAME"),
									  rset.getString("CARD_NUMBER")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return cardList;
	}
	
	
	/**
	 * 등록된 주소 조회
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public ArrayList<Address> selectAddress(Connection conn, int userNo) {
		
		ArrayList<Address> addressList = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectAddress");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				addressList.add(new Address(rset.getInt("ADDRESS_CODE"),
											rset.getString("ADDRESS_MAIN"),
											rset.getString("ADDRESS_DETAIL"),
											rset.getString("ADDRESS_PHONE"),
											rset.getString("ADDRESS_NAME"),
											rset.getString("ADDRESS_MESSAGE")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return addressList;
	}

	/**
	 * 프로필 수정
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @param name		이름
	 * @param userSsn	생년월일
	 * @return
	 */
	public int updateMember(Connection conn, int userNo, String name, String userSsn) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, userSsn);
			pstmt.setInt(3, userNo);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return(result);
	}
	
	/**
	 * 비밀번호 변경
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @param oldPwd	기존 비밀번호
	 * @param newPwd	새 비밀번호
	 * @return
	 */
	public int updatePwd(Connection conn, int userNo, String oldPwd, String newPwd) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updatePwd");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, newPwd);
			pstmt.setInt(2, userNo);
			pstmt.setString(3, oldPwd);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;	
	}
	
	/**
	 * 탈퇴
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @param pwd		비밀번호
	 * @return
	 */
	public int updateMemStatus(Connection conn, int userNo, String pwd) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateMemStatus");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setString(2, pwd);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		
		return result;
		
	}
	
	/**
	 * 카드 등록
	 * @param conn			
	 * @param cardName		카드별칭
	 * @param cardNumber	카드번호
	 * @param cardValidate	유효기간
	 * @param cardMemBirth	생년월일
	 * @param cardPwd		카드비밀번호
	 * @return
	 */
	public int insertCard(Connection conn, int userNo, String cardName, String cardNumber, String cardValidate,
					      String cardMemBirth, int cardPwd) {
		// insert문
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertCard");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setString(2, cardName);
			pstmt.setString(3, cardNumber);
			pstmt.setString(4, cardValidate);
			pstmt.setString(5, cardMemBirth);
			pstmt.setInt(6, cardPwd);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/**
	 * 배송지 등록
	 * @param conn
	 * @param userNo			로그인된 회원의 번호
	 * @param addressName		주소 별칭
	 * @param addressCode		우편 번호
	 * @param addressMain		도로명 주소
	 * @param addressDetail		상세 주소
	 * @param addressPhone		핸드폰 번호
	 * @param addressMessage	배송 메세지
	 * @param addressBasic		기본 배송지 등록 여부 ("Y"/"N")
	 * @return
	 */
	public int insertAddress(Connection conn, int userNo, String addressName, int addressCode, String addressMain,
							 String addressDetail, String addressPhone, String addressMessage,
							 String addressBasic) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("insertAddress");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, addressCode);
			pstmt.setString(3, addressMain);
			pstmt.setString(4, addressDetail);
			pstmt.setString(5, addressPhone);
			pstmt.setString(6, addressName);
			pstmt.setString(7, addressBasic);
			pstmt.setString(8, addressMessage);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
		
	}
	
	/**
	 * 계좌 정보 등록
	 * @param conn
	 * @param userId			로그인된 아이디
	 * @param memBankname		은행명
	 * @param memAccountNum		계좌번호
	 * @param memAccountholder	예금주
	 * @return
	 */
	public int updateAccount(Connection conn, String userId, String memBankname, String memAccountNum, String memAccountholder) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateAccount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memBankname);
			pstmt.setString(2, memAccountNum);
			pstmt.setString(3, memAccountholder);
			pstmt.setString(4, userId);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}		
		return result;
	}
	
	/**
	 * 
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @param name		삭제하고자 하는 카드들
	 * @return
	 */
	public int deleteCard(Connection conn, int userNo, String name) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
			
		String sql = prop.getProperty("deleteCard");
			
		try {
				
			pstmt = conn.prepareStatement(sql);
				
			pstmt.setInt(1, userNo);
			pstmt.setString(2, name);
				
			result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
		
		return result;
	}
	

	/**
	 * 회원 정보 수정일 업데이트
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public int updateModifyDate(Connection conn, int userNo) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("updateModifyDate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	/**
	 * 현재 총 찜 제품 갯수 조회
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @return
	 */
	public int selectWishlistCount(Connection conn, int userNo) {
		
		int wishlistCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectWishlistCount");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, userNo);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				wishlistCount = rset.getInt("WISHLISTCOUNT");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
	
		return wishlistCount;
		
	}
	
	/**
	 * 위시리스트 조회
	 * @param conn
	 * @param userNo		로그인된 회원의 번호
	 * @param wishlistPage	페이지 정보
	 * @return
	 */
	public ArrayList<Wishlist> selectWishlist(Connection conn, int userNo, WishlistPageInfo wishlistPage, String order) {
		
		ArrayList<Wishlist> wishlist = new ArrayList<>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		// String sql = prop.getProperty("selectWishlist");
		
		String sql = "";
		if(order.equals("new")) {
			sql = prop.getProperty("selectWishlist");
		}else {
			sql = prop.getProperty("selectWishlist2");
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			int startRow = (wishlistPage.getCurrentPage() - 1) * wishlistPage.getWishlistLimit() + 1;
			int endRow = startRow + wishlistPage.getWishlistLimit() - 1;
			
			pstmt.setInt(1, userNo);
			pstmt.setInt(2, startRow);
			pstmt.setInt(3, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				wishlist.add(new Wishlist(rset.getDate("WISHLIST_ADD_DATE"),
										  rset.getString("PR_NAME")));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return wishlist;
	}
	
	/**
	 * 위시리스트 삭제
	 * @param conn
	 * @param userNo	로그인된 회원의 번호
	 * @param name		삭제하고자 하는 제품
	 * @return
	 */
	public int deleteWishlist(Connection conn, int userNo, String name) {
		
		int result = 0;
			
		PreparedStatement pstmt = null;
			
		String sql = prop.getProperty("deleteWishlist");
			
		try {
				
			pstmt = conn.prepareStatement(sql);
				
			pstmt.setInt(1, userNo);
			pstmt.setString(2, name);
				
			result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				close(pstmt);
			}
		
		return result;
	}
	
}
