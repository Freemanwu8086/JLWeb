package com.freemanwu.controller;

import com.freemanwu.entity.Resume;
import com.freemanwu.entity.User;
import com.freemanwu.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("resume")
public class ResumeController {
    @Autowired
    private ResumeService resumeService;


    /**
     * findAll
     */
    @RequestMapping("findAll1")
    public String findAll1(HttpServletRequest request) {
        List<Resume> resumes = resumeService.findAll1();
        request.setAttribute("resumes", resumes);
        return "findAll1";
    }

    @RequestMapping("findAll2")
    public String findAll2(HttpServletRequest request){
        List<Resume> resumes = resumeService.findAll2();
        request.setAttribute("resumes",resumes);
        return "findAll2";
    }

    @RequestMapping("findAll3")
    public String findAll3(HttpServletRequest request){
        List<Resume> resumes = resumeService.findAll3();
        request.setAttribute("resumes",resumes);
        return "findAll3";
    }


    @RequestMapping("save")
    public String save(User user, Resume resume, HttpServletRequest request, HttpSession session) {
        try {
            session.setAttribute("loginUser", user);
            resumeService.save(resume);
            return "redirect:/resume/findAll1";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/add";
        }
    }

    @RequestMapping("delete")
    public String delete(String id) {
        try {
            resumeService.delete(id);
            return "redirect:/resume/findAll1";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/delete";
        }
    }

    @RequestMapping("findById")
    public String findById(String id, HttpServletRequest request) {
        Resume resume = resumeService.findById(id);
        request.setAttribute("resume", resume);
        return "findByIdResult";
    }

    @RequestMapping("update")
    public String update(Resume resume) {
        resumeService.update(resume);
        return "add";
    }

    @RequestMapping("findByIdUpdate")
    public String findByIdUpdate(String id, HttpServletRequest request) {
        Resume resume = resumeService.findById(id);
        request.setAttribute("resume", resume);
        return "update2";
    }

    @RequestMapping("findByName")
    public String findByName(String name, HttpServletRequest request) {
        List<Resume> resume = resumeService.findByName(name);
        request.setAttribute("resumes", resume);
        return "findByName";
    }
}