package productDetail;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDetailDao {
	private JdbcTemplate JdbcTemplate;

	public ProductDetailDao() {
	}

	public ProductDetailDao(DataSource dataSource) {
		this.JdbcTemplate = new JdbcTemplate(dataSource);
	}

	public void addToCart(Order_detailDto order_detailDto) {
		this.JdbcTemplate.update("insert into Cart ()");

	}

	public void reviewUpload(ReviewDto reviewDto) {
		/*
		 * // 파일 이름 가져오기 String saveName=uploadfile.getOriginalFilename(); //저장할 File
		 * 객체를 생성 File saveFile = new File("C:\\129mall\\Reviewfileupload",saveName);
		 * try { uploadfile.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입힘 } catch
		 * (IOException e) { e.printStackTrace(); }
		 */
		String sql = "insert into review(mem_userid,it_id,review_date,review_content,review_point,review_Img)"
				+ "values(?,?,?,?,?,?)";
		reviewDto.getReview_date();
		JdbcTemplate.update(sql, reviewDto.getMem_userid(), reviewDto.getIt_id(), reviewDto.getReview_date(),
				reviewDto.getReview_content(), reviewDto.getReview_point(), reviewDto.getReview_Img());
		/*
		 * try {
		 * 
		 * //로컬 파일을 사용하는 경우 File imageFile = new File(
		 * "C:\\jinyeong\\TeamPJT\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\work\\Catalina\\localhost\\ROOT\\tmp\\upload"
		 * +reviewDto.getReview_Img()); image = ImageIO.read(imageFile); //URL을 사용하는 경우
		 * URL url = new URL("이미지 URL"); image = ImageIO.read(url); } }catch
		 * (MalformedURLException e){e.getStackTrace();} catch (IOException e)
		 * {e.getStackTrace(); }
		 */

	}

	public int getReviewCnt() {
		List<Integer> reviewCnt = JdbcTemplate.query("select count(*) from review", new RowMapper<Integer>() {
			public Integer mapRow(ResultSet rs, int rowNum) throws SQLException {
				return rs.getInt(1);
			}
		});

		return reviewCnt.get(0); // List가 비어있으면 null 비어있지 않으면 해당 객체
	}

	public List<ReviewDto> getArticles(int start, int end) {
		List<ReviewDto> results = JdbcTemplate.query("select * from review order by review_id asc limit ?,? ",
				new RowMapper<ReviewDto>() {
					@Override
					public ReviewDto mapRow(ResultSet rs, int rowNum) throws SQLException {
						ReviewDto reviewDto = new ReviewDto(rs.getInt("review_id"), rs.getString("mem_userid"),
								rs.getInt("it_id"), rs.getString("review_date"), rs.getString("review_content"),
								rs.getInt("review_point"), rs.getString("review_Img"));

						return reviewDto;
					}

				}, start-1, end);
		return results;
	}

}
