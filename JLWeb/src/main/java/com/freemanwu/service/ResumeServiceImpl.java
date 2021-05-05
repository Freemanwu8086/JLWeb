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
    public List<Resume> findAll() {
        return resumeDAO.findAll();
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

}
