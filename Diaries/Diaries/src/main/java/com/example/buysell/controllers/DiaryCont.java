package com.example.buysell.controllers;

import com.example.buysell.model.Diary;
import com.example.buysell.services.DiariesServices;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.io.IOException;
import java.security.Principal;

@Controller
@RequiredArgsConstructor
public class DiaryCont {
    private final DiariesServices diariesServices;
//конструктор нужно создать если не прописывать @RequiredArgsConstructor
//    public DiaryCont(DiariesServices diariesServices) {
//        this.diariesServices = diariesServices;
//    }

    @GetMapping("/")
    public String diaries(@RequestParam(name="date",required = false)String date,Principal principal, Model model){
        model.addAttribute("diary",diariesServices.listDiary(date));
        model.addAttribute("user",diariesServices.getUserByPrincipal(principal));
        return "diary";
    }
    @PostMapping("/diary/create")
    public String createDiary(Diary diary, Principal principal)throws IOException {
       diariesServices.saveDiary(principal,diary);
       return "redirect:/";
    }
    @PostMapping("/diary/delete/{id}")
    public String  deleteDiary(@PathVariable Long id){
        diariesServices.deleteDiary(id);
        return "redirect:/";
    }
    @GetMapping("/diary/{id}")
    public  String diaryInfo(@PathVariable Long id,Model model){
        model.addAttribute("diary",diariesServices.getDiaryById(id));
        return "diary-info";
    }
}
