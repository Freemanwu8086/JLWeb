package com.freemanwu.controller;

import com.freemanwu.entity.Resume;
import com.freemanwu.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
@RequestMapping("resume")
public class ResumeController {
    @Autowired
    private ResumeService resumeService;
    /**
     * findAll
     */
    @RequestMapping("findAll")
    public String findAll(HttpServletRequest request){
        List<Resume> resumes = resumeService.findAll();
        request.setAttribute("resumes",resumes);
        return  "findAll";
    }

    @RequestMapping("save")
    public String save(Resume resume){
        try {
            resumeService.save(resume);
            return "redirect:/resume/findAll";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/add";
        }
    }

    @RequestMapping("delete")
    public String delete(String id){
        try {
            resumeService.delete(id);
            return "redirect:/resume/findAll";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/delete";
        }
    }

    @RequestMapping("findById")
    public String findById(String id,HttpServletRequest request) {
        Resume resume = resumeService.findById(id);
        request.setAttribute("resume",resume);
        return "findByIdResult";
    }

    @RequestMapping("update")
    public String update(String id){
        resumeService.delete(id);
        return "add";
    }

}
