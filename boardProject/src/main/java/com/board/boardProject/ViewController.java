package com.board.boardProject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


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

    /**
     * <pre>
     * 		게시판 목록으로 이동
     * </pre>
    
     * @Author : syMin
     * @Date : 2015. 12. 23.
     */
    @RequestMapping(value="/", method=RequestMethod.GET)//POST, GET, PUT, DELETE
    public String dispBbsList(Model model){
                
        return "bbs.list";
    }

    
    /**
     * <pre>
     * 		게시글 보기 화면으로 이동 
     * 		PathVariable index를 url 형식으로 입력받음 
     * </pre>
    
     * @Author : syMin
     * @Date : 2015. 12. 23.
     */
    @RequestMapping("/{idx}")
    public String dispBbsView(@PathVariable int idx, Model model){
        
        return "bbs.view";
    }
    

    /**
     * <pre>
     * 		게시글 쓰기 
     * </pre>
    
     * @Author : syMin
     * @Date : 2015. 12. 23.
     */
    @RequestMapping(value="/write", method=RequestMethod.GET)
    public String dispBbsWrite(Model model){
        
        return "bbs.write";
    }

	
}
