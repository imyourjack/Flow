package kr.flow.web;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.flow.domain.FileVO;
import kr.flow.mapper.FileMapper;

@Controller
public class FileController {
	@Inject
	private FileMapper fileMapper;
	
	@RequestMapping("/file.do")
	public void file() {
	}

	@RequestMapping("/fileList.do")
	public void fileList(Model model) {
	List<FileVO> list = fileMapper.fileList();
	model.addAttribute("list", list);
	}
	
	@RequestMapping("/fileInsert.do")
	public String fileInsert(FileVO vo) {
		fileMapper.fileInsert(vo);
		return "redirect:/file.do";
	}
	
	@RequestMapping("/fileDelete.do")
	public String fileDelete(int idx_extension) {
	fileMapper.fileDelete(idx_extension); 
	return "redirect:/file.do";
	}
	
}
