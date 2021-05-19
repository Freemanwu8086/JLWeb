package com.freemanwu.dao;

import com.freemanwu.entity.Resume;

import java.util.List;

public interface ResumeDAO {
    void save(Resume resume);

    List<Resume> findAll1();

    List<Resume> findAll2();

    List<Resume> findAll3();

    void delete(String id);

    Resume findById(String id);

    void update(Resume resume);

    List<Resume> findByName(String name);

    void deleteMany(String id);
}
