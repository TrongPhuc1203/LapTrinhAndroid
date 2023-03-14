package com.example.onionapp;

import androidx.appcompat.app.AppCompatActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import android.os.Bundle;

import com.example.onionapp.Models.Sach;
import com.example.onionapp.adapter.SachAdapter;
import com.example.onionapp.adapter.SachTableAdapter;

import java.util.ArrayList;
import java.util.List;

public class MainActivity extends AppCompatActivity {
    private RecyclerView rcvSach_DeXuat;
    private RecyclerView rcvSach_ThinhHanh;
    private List<Sach> sachList;
    private SachAdapter sachAdapter;
    private SachTableAdapter sachTableAdapter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_trangchu);


       // trang chu

        rcvSach_DeXuat = findViewById(R.id.rcv_sach_DeXuat);
        rcvSach_ThinhHanh = findViewById(R.id.rcv_sach_ThinhHanh);
        sachList = new ArrayList<>();
        Sach sach1 = new Sach("Không bao giờ là thất bại! Tất cả chỉ là thử thách",12000,R.drawable.h2);
        Sach sach2 = new Sach("Đắc nhân tâm",130000,R.drawable.h3);
        Sach sach3 = new Sach("Nhà giả kim",140000,R.drawable.h4);
        Sach sach4 = new Sach("Luật hấp dẫn",150000,R.drawable.h5);

        sachList.add(sach1);
        sachList.add(sach2);
        sachList.add(sach3);
        sachList.add(sach4);
        sachList.add(sach1);
        sachList.add(sach2);
        sachList.add(sach3);
        sachList.add(sach4);

        sachAdapter = new SachAdapter(sachList);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this,LinearLayoutManager.HORIZONTAL,false);
        rcvSach_ThinhHanh.setLayoutManager(linearLayoutManager);
        rcvSach_ThinhHanh.setAdapter(sachAdapter);


        sachTableAdapter = new SachTableAdapter(sachList);
        rcvSach_DeXuat.setLayoutManager(new GridLayoutManager(this, 2));
        rcvSach_DeXuat.setAdapter(sachTableAdapter);


    }
}










