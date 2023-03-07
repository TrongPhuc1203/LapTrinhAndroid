package com.example.quanlybansach;

import androidx.appcompat.app.AppCompatActivity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    private Button btnTheLoai;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        btnTheLoai =(Button) findViewById(R.id.btnTheLoai);
        btnTheLoai.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                openTheLoai();
            }
        });
    }

    private void openTheLoai() {
        Intent intent = new Intent(this, TheLoai.class);
        startActivity(intent);
    }
}