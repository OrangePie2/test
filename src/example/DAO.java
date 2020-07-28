package example;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;


public class DAO {
	private DAO() {

	}

	private static DAO instance = new DAO();

	public static DAO getInstance() {
		return instance;
	}

	public Connection getConnection() throws Exception {
		Connection conn = null;
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		DataSource ds = (DataSource) envContext.lookup("jdbc/myoracle");
		conn = ds.getConnection();
		return conn;
	}

	public List<VO> selectAllcust() {
		VO mVo = null;
		String sql = "select * from member_tbl_02 order by custno desc";
		List<VO> list= new ArrayList<VO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				mVo = new VO();
				mVo.setCustno(rs.getInt("no"));
				mVo.setCustname(rs.getString("name"));
				mVo.setPhone(rs.getString("phone"));
				mVo.setAddress(rs.getString("address"));
				mVo.setJoindate(rs.getString("joindate"));
				mVo.setGrade(rs.getString("grade"));
				mVo.setCity(rs.getString("city"));
				list.add(mVo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn,pstmt,rs);
			}
		return list;
		}
}
