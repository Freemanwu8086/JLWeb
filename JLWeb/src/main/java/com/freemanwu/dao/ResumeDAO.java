package com.freemanwu.dao;

import com.freemanwu.entity.Resume;

import java.util.List;

public interface ResumeDAO {
    void save(Resume resume);

    List<Resume> findAll();

    void delete(String id);

    Resume findById(String id);

}
