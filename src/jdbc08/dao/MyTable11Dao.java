package jdbc08.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;

import jdbc08.bean.Bean11;

public class MyTable11Dao {

	public boolean insert(Connection con, Bean11 bean) {
		String sql = "INSERT INTO mytable11 (name, age, birth) VALUES (?, ?, ?)";
		
		try (PreparedStatement pstmt = con.prepareStatement(sql)) {
			pstmt.setString(1, bean.getName());
			pstmt.setInt(2, bean.getAge());
			pstmt.setDate(3, Date.valueOf(bean.getBirth()));
			
			return pstmt.executeUpdate() == 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return false;
	}

}
