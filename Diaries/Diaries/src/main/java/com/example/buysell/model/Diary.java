package com.example.buysell.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.Date;
@Entity
@Table(name="diary")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Diary {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name="id")
    private Long id;
    @Column(name="title")
    private String title;
    @Column(name="description",columnDefinition = "text")
    private String description;
    @Column(name="pages")
    private int pages;
    @Column(name="date")
    private String date;
    @Column(name="text",columnDefinition = "text")
    private String text;
    @ManyToOne(cascade = CascadeType.REFRESH,fetch = FetchType.LAZY)
    @JoinColumn
    private User user;
}
