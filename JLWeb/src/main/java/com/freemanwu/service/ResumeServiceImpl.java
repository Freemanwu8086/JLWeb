package com.freemanwu.service;

import com.freemanwu.dao.ResumeDAO;
import com.freemanwu.entity.Resume;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ResumeServiceImpl implements ResumeService {
    @Autowired
    private ResumeDAO resumeDAO;

    @Override
    public void save(Resume resume) {
        resumeDAO.save(resume);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Resume> findAll1() {
        return resumeDAO.findAll1();
    }

    @Override
    public List<Resume> findAll2() {
        return resumeDAO.findAll2();
    }

    @Override
    public List<Resume> findAll3() {
        return resumeDAO.findAll3();
    }

    @Override
    @Transactional(propagation = Propagation.REQUIRED)
    public void delete(String id) {
        resumeDAO.delete(id);
    }

    @Override
    @Transactional(isolation = Isolation.READ_COMMITTED)
    public Resume findById(String id) {
        return resumeDAO.findById(id);
    }

    @Override
    public void update(Resume resume) {
        resumeDAO.update(resume);
    }

    @Override
    @Transactional(propagation = Propagation.SUPPORTS)
    public List<Resume> findByName(String name) {
        return resumeDAO.findByName(name);
    }

    @Override
    public void deleteList(String[] id) {
        resumeDAO.deleteList(id);
    }
}
