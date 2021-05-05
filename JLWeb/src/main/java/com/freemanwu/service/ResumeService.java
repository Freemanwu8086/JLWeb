package com.freemanwu.service;

import com.freemanwu.entity.Resume;

import java.util.List;

public interface ResumeService {
    void save(Resume resume);

    List<Resume> findAll();

    void delete(String id);

    Resume findById(String id);

}
