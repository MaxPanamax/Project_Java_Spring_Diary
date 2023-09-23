package com.example.buysell.services;

import com.example.buysell.model.Diary;
import com.example.buysell.model.User;
import com.example.buysell.repositories.DiaryRepository;
import com.example.buysell.repositories.UserRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
@Slf4j
@Service
@RequiredArgsConstructor
public class DiariesServices {
    private  final DiaryRepository diaryRepository;
    private final UserRepository userRepository;
    public List<Diary>listDiary(String date){
        if(date!=null)return diaryRepository.findByDate(date);
        return diaryRepository.findAll();
    }
    public void saveDiary(Principal principal, Diary diary){
        diary.setUser(getUserByPrincipal(principal));
        log.info("Saveing new Diary. Date:{}; Author email:{}",diary.getDate(),diary.getUser().getEmail());
        diaryRepository.save(diary);
    }

    public User getUserByPrincipal(Principal principal) {
        if(principal==null)return  new User();
        return userRepository.findUserByEmail(principal.getName());
    }

    public void deleteDiary(Long id){
       diaryRepository.deleteById(id);
    }
    public Diary getDiaryById(Long id){
        return  diaryRepository.findById(id).orElse(null);
    }
}
