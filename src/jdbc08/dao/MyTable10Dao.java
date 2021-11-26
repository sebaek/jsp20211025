package jdbc08.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.Timestamp;

import jdbc08.bean.Bean10;

public class MyTable10Dao {

	public boolean insert(Connection con, Bean10 bean) {
		String sql = "INSERT INTO mytable10 (col1, col2, col3, col4, col5, col6, col7) "
				+ "VALUE (?, ?, ?, ?, ?, ?, ?)";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setInt(1, bean.getCol1());
			pstmt.setDouble(2, bean.getCol2());
			pstmt.setDouble(3, bean.getCol3());
			pstmt.setString(4, bean.getCol4());
			pstmt.setString(5, bean.getCol5());
			pstmt.setDate(6, Date.valueOf(bean.getCol6()));
			pstmt.setTimestamp(7, Timestamp.valueOf(bean.getCol7()));
			
			return pstmt.executeUpdate() == 1;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return false;
	}
}
