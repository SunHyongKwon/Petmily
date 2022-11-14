package com.petmily.customer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.petmily.customer.dto.ApplyDTO;
import com.petmily.customer.dto.PagingDTO;

public class ApplyDAO {

	DataSource dataSource;
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	ResultSet resultSet = null;

	public ApplyDAO() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/petmily");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public int applyListRow(String user_uid) {
		int totalRow = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();
			String query = "select count(*) from apply where posting_user_uid = '" + user_uid + "' ";
			String query2 = "and apcanceldate is null and apmatchingdate is null and apcompletedate is null";
			preparedStatement = connection.prepareStatement(query + query2);
			resultSet = preparedStatement.executeQuery();
			// 한개일때는 if, 여러개일때는while

			if (resultSet.next() == true) {
				totalRow = resultSet.getInt(1);
			}
			return totalRow;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		return 0;
	}

	public PagingDTO applyListPaging(int cPage, int totalRows, int pageLength) {

		int currentBlock = 0;
		int startPage = 0;// 시작 페이지
		int endPage = 0;// 마지막 페이지
		int totalPages = 0;// 총 페이지수
		int startRow = 0;// 시작 로우
		int endRow = 0;// 마지막로우

		totalPages = totalRows % pageLength == 0 ? totalRows / pageLength : (totalRows / pageLength) + 1;

		currentBlock = cPage % pageLength == 0 ? cPage / pageLength : (cPage / pageLength) + 1;
		startPage = (currentBlock - 1) * pageLength + 1;
		endPage = startPage + pageLength - 1;

		startRow = (cPage - 1) * pageLength;
		endRow = totalRows - startRow;

		if (endPage > totalPages) {
			endPage = totalPages;
		}

		PagingDTO dto = new PagingDTO(cPage, currentBlock, pageLength, startPage, endPage, totalPages, startRow,
				endRow);

		return dto;

	}

	public ArrayList<ApplyDTO> applyGetList(int cPage, int rowLength, String uid) {

		ArrayList<ApplyDTO> dtos = new ArrayList<ApplyDTO>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		int start = (cPage - 1) * rowLength;

		try {
			connection = dataSource.getConnection();

			// apid , aptitle , apcontent , apdate , posting_pid , user_uid
			String query1 = "select a.apid , a.aptitle , a.apcontent, a.apdate , a.posting_pid , a.user_uid from apply a , posting p ";
			String query2 = "where a.posting_user_uid = '" + uid + "' ";
			String query3 = "and apcanceldate is null and apmatchingdate is null and apcompletedate is null "
					+ "and p.pid = a.posting_pid and p.pdeletedate is null ";
			String query4 = "order by a.apdate desc limit " + start + "," + rowLength;
			preparedStatement = connection.prepareStatement(query1 + query2 + query3 + query4);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				int apid = resultSet.getInt(1);
				String aptitle = resultSet.getString(2);
				String apcontent = resultSet.getString(3);
				Timestamp apdate = resultSet.getTimestamp(4);
				int posting_pid = resultSet.getInt(5);
				String user_uid = resultSet.getString(6);

				ApplyDTO dto = new ApplyDTO(apid, aptitle, apcontent, apdate, user_uid, posting_pid);
				dtos.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return dtos;

	}

	public void postingApplyInsert(String user_uid, int posting_pid, String posting_user_uid, String aptitle,
			String apcontent) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "insert into apply (user_uid, posting_pid, posting_user_uid, aptitle, apcontent, apdate) ";
			String query2 = "values (?,?,?,?,?,now())";
			preparedStatement = connection.prepareStatement(query + query2);

			preparedStatement.setString(1, user_uid);
			preparedStatement.setInt(2, posting_pid);
			preparedStatement.setString(3, posting_user_uid);
			preparedStatement.setString(4, aptitle);
			preparedStatement.setString(5, apcontent);

			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}

	public void updateByApId(int apid, String columnname) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "update apply set " + columnname + " = now() where apid = " + apid;
			preparedStatement = connection.prepareStatement(query);

			preparedStatement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
				if (resultSet != null) {
					resultSet.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	public int applyUserCount(String user_uid, int posting_pid) {

		int result = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();
			String query = "select count(apid) from apply where user_uid = '" + user_uid + "' and posting_pid = '"
					+ posting_pid + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next() == true) {
				result = resultSet.getInt(1);
			}
			return result;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {

				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}

	public void updateByPId(int pid, String columnname) {
		Connection connection = null;
		PreparedStatement preparedStatement = null;

		try {
			connection = dataSource.getConnection();

			String query = "update apply set apcanceldate = now() where posting_pid = " + pid
					+ " and apmatchingdate is null";
			preparedStatement = connection.prepareStatement(query);

			preparedStatement.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();
				if (resultSet != null) {
					resultSet.close();
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		}

	}
	
	public int selectCategory(String uid , String pcategory) {
		int postingCnt = 0;
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;// 검색

		try {
			connection = dataSource.getConnection();

			String query = "select count(*) from apply a, posting p where a.apcompletedate is not null ";
			String query2 = "and ( a.user_uid = '" + uid + "' or a.posting_user_uid = '" + uid + "' ) ";
			String query3 = "and a.posting_pid = p.pid and p.pcategory = '" + pcategory + "'";
			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			if (resultSet.next() == true) {
				postingCnt = resultSet.getInt(1);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				if (preparedStatement != null) {
					preparedStatement.close();
				}
				if (connection != null) {
					connection.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return postingCnt;
	}

}
