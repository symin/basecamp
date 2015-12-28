package com.board.boardProject;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.board.boardProject.dao.BbsDao;
import com.board.boardProject.dao.BbsVo;


/**
 * <pre>
 * 		viewController 
 * </pre>
 * 
 * @Author syMin
 * @Date 2015. 12. 23.
 *
 */
@Controller
public class ViewController {

	// Resource 어노테이션을 이용하여 BbsDao 선언.
    @Resource(name = "bbsDao")
    private BbsDao bbsDao;


    /**
     * <pre>
     * 		게시판 목록으로 이동
     * </pre>
    
     * @Author : syMin
     * @Date : 2015. 12. 23.
     */
    @RequestMapping(value="/", method=RequestMethod.GET)
    public String dispBbsList(Model model){
    	List<BbsVo> list = this.bbsDao.getSelect();
        model.addAttribute("list", list);
         
        return "bbs.list";
    }

    
    /**
     * <pre>
     * 		게시글 보기 화면으로 이동 
     * 			-PathVariable index를 url 형식으로 입력받음 
     * </pre>
    
     * @Author : syMin
     * @Date : 2015. 12. 23.
     */
    @RequestMapping("/{idx}")
    public String dispBbsView(@PathVariable int idx, Model model){
    	BbsVo object = this.bbsDao.getSelectOne(idx);
        model.addAttribute("object", object);

        return "bbs.view";
    }
    

    /**
     * <pre>
     * 		게시판 쓰기 화면으로 이동 
     * 			- 화면 index는 0으로 설정 
     * </pre>
    
     * @Author : syMin
     * @Date : 2015. 12. 26.
     */
    @RequestMapping(value = "/write", method = RequestMethod.GET)
    public String dispBbsWrite(@RequestParam(value="idx", 
                                    defaultValue="0") int idx, Model model) {
        if (idx > 0) {
            BbsVo object = this.bbsDao.getSelectOne(idx);
            model.addAttribute("object", object);
        }
        return "bbs.write";
    }
    
 
    /**
     * <pre>
     * 		게시글 추가 및 수정 화면으로 이동 
     * 			- idx가 null이거나 0일 경우 insert 작업 수행
     * 			- idx가 0 이상일 경우 수정 update 작업 수행 
     * </pre>
    
     * @Author : syMin
     * @Date : 2015. 12. 26.
     */
    @RequestMapping(value = "/write_ok", method = RequestMethod.POST)
    public String procBbsWrite(@ModelAttribute("bbsVo") BbsVo bbsVo) {
        Integer idx = bbsVo.getIdx();
        
        System.out.println("write_ok : " + bbsVo.getContent());
        
        if (idx == null || idx == 0) {
            this.bbsDao.insert(bbsVo);
            return "redirect:/";
        } else {
            this.bbsDao.update(bbsVo);
            return "redirect:/";
        }
    }
 
    /**
     * <pre>
     * 		해당 idx의 data를 삭제 
     * </pre>
    
     * @Author : syMin
     * @Date : 2015. 12. 26.
     */
    @RequestMapping(value = "/delete", method = RequestMethod.POST)
    public String procBbsDelete(@RequestParam(value = "idx", required = false) int idx) {
        this.bbsDao.delete(idx);
        return "redirect:/";
    }



	
}
