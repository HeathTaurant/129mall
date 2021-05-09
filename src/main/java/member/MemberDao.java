package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

public class MemberDao {
	//----2021-04-29
	private JdbcTemplate jdbcTemplate; //spring jdbctemplate 사용
	
	//JDBCTemplate 연결
	public MemberDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
	
	//회원가입 DB insert 메서드
	public void MemberInset(Member member) {
		try {
		KeyHolder keyHolder = new GeneratedKeyHolder(); //자동생성 키값 구해줌
		jdbcTemplate.update(new PreparedStatementCreator() { //SQL 연결 가져옴
			@Override
			public PreparedStatement createPreparedStatement(Connection con) throws SQLException {
				// TODO Auto-generated method stub
				PreparedStatement pstmt = con.prepareStatement(
						"insert into member(mem_userid, mem_email, mem_password, mem_username, mem_phone, "
						+ "mem_birthday, mem_sex, mem_postcode, mem_address1, mem_address2, mem_register_datetime) " +
						"values(?,?,?,?,?,?,?,?,?,?,?)",
						new String[] {"mem_id"} //자동생성되는 키값을 지정할 String 배열 두번째 파라미터, key 칼럼을 목록을 지정할때 사용
						);
					pstmt.setString(1, member.getMem_userid());//사용자 아이디
					pstmt.setString(2, member.getMem_email());//사용자 이메일
					pstmt.setString(3, member.getMem_password());//사용자 비밀번호
					pstmt.setString(4, member.getMem_username()); //사용자 이름
					pstmt.setString(5, member.getMem_phone());//사용자 핸드폰 번호
					pstmt.setTimestamp(6, Timestamp.valueOf(member.getMem_birthday())); //사용자 생일
					pstmt.setInt(7, member.getMem_sex()); //사용자 성별
					pstmt.setInt(8, member.getMem_postcode());//사용자 우편번호
					pstmt.setString(9, member.getMem_address1());//사용자 상세주소1
					pstmt.setString(10, member.getMem_address2());//사용자 상세주소2
					pstmt.setTimestamp(11, Timestamp.valueOf(member.getMem_register_datetime()));//사용자 가입일자
				return pstmt;
				}
		},keyHolder);//가변인자 오는곳, keyHolder
		Number keyValue = keyHolder.getKey();
		member.setMem_id(keyValue.intValue()); //number클래스 int로 정의
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	//----2021-04-29
	
	//---2021-05-03 InfoChk
	public AutoInfo InfoChk(String id, String pw) {
		List<AutoInfo> results = jdbcTemplate.query(
				"select mem_id,mem_userid,mem_password,mem_username from member where mem_userid = ?",
				new RowMapper<AutoInfo>() {
					@Override
					public AutoInfo mapRow(ResultSet rs, int rowNum) throws SQLException {
						// TODO Auto-generated method stub
						AutoInfo info = new AutoInfo(
								rs.getInt("mem_id"), rs.getString("mem_userid"),
								rs.getString("mem_password"), rs.getString("mem_username"));
						return info;
					}
				}, id);
		return results.isEmpty() ? null : results.get(0); //List가 비어있으면 null 비어있지 않으면 해당 객체
	}
	
	//--2021-05-04
	public String IdSearch(String mem_username,String mem_phone) {
		String mem_userid = jdbcTemplate.queryForObject("select mem_userid from MEMBER where mem_username = ? && mem_phone = ?",
				String.class,mem_username, mem_phone);
		return mem_userid;
	}

	//--2021-05-09 아이디 중복체크
	//org.springframework.dao.EmptyResultDataAccessException 결과 값이 없는 경우, 즉 0인경우에 발생하는 오류
	// queryForObject를 쓸 때는 try~catch문과 함께 써줘야 된다고 한다.
	public String ChkId(String id) {
		try {
		String mem_userid = jdbcTemplate.queryForObject(
				"select mem_userid from member where mem_userid=?", 
				String.class,id);
			return mem_userid;
		}catch(Exception e) {
			return "";
		}
	}
}
