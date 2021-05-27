package com.freemanwu.controller;

import com.freemanwu.entity.Resume;
import com.freemanwu.service.ResumeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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
    public String save(Resume resume) {
        try {
            resumeService.save(resume);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "redirect:/resume/findAll1";
    }

    @RequestMapping("userSave")
    public String usersave(Resume resume) {
        try {
            resumeService.save(resume);
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "findAllUser";
    }

    @RequestMapping("delete")
    public String delete(String id) {
        try {
            resumeService.delete(id);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "redirect:/resume/findAll1";
    }

    @RequestMapping("findById")
    public String findById(String id, HttpServletRequest request) {
        try {
            Resume resume = resumeService.findById(id);
            request.setAttribute("resume", resume);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "findByIdResult";
    }

    @RequestMapping("update")
    public String update(Resume resume) {
        try {
            resumeService.update(resume);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "add";
    }

    @RequestMapping("findByIdUpdate")
    public String findByIdUpdate(String id, HttpServletRequest request) {
        try {
            Resume resume = resumeService.findById(id);
            request.setAttribute("resume", resume);
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "update2";
    }

    @RequestMapping("findByName")
    public String findByName(String name, HttpServletRequest request) {
        try {
            List<Resume> resume = resumeService.findByName(name);
            request.setAttribute("resumes", resume);

        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
        return "findByName";
    }

    @RequestMapping("deleteByIds")
    public String deleteByIds(String[] id){
            resumeService.deleteList(id);
            return "findAll1";
    }
}