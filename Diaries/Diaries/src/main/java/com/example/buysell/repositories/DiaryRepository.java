package com.example.buysell.repositories;

import com.example.buysell.model.Diary;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface DiaryRepository extends JpaRepository<Diary,Long> {
    List<Diary> findByDate(String date);
}
