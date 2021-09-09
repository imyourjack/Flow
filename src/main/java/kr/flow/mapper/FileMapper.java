package kr.flow.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kr.flow.domain.FileVO;

@Mapper
public interface FileMapper {
	@Select("select * from tbl_extension where custom_extension = #{custom_extension}")
	public List<FileVO> fileList();
	
    @Insert("insert into tbl_extension(custom_extension) values(#{custom_extension})")
    public void fileInsert(FileVO vo);
    
    @Delete("delete from tbl_board where board_idx=#{board_idx}")
    public void fileDelete(int idx_extension);


}
