package com.example.onionapp.adapter;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;

import com.example.onionapp.Models.Sach;
import com.example.onionapp.R;

import java.util.List;

public class SachTableAdapter extends RecyclerView.Adapter<SachTableAdapter.SachViewHolder>{
    private List<Sach> listSach;

    public SachTableAdapter(List<Sach> listSach) {
        this.listSach = listSach;
    }

    @NonNull
    @Override
    public SachViewHolder onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
        View view = LayoutInflater.from(parent.getContext()).inflate(R.layout.item_sach_2,parent,false);
        return new SachViewHolder(view);
    }

    @Override
    public void onBindViewHolder(@NonNull SachViewHolder holder, int position) {
        Sach sach = listSach.get(position);
        if (sach == null)   return;

        holder.imgSach.setImageResource(sach.getHinhAnh());
        holder.txtTenSach.setText(sach.getTenSach());
        holder.txtGia.setText(sach.toString());
    }

    @Override
    public int getItemCount() {
        if (listSach != null){
            return listSach.size();
        }
        return 0;
    }

    class SachViewHolder extends RecyclerView.ViewHolder {
        private ImageView imgSach;
        private TextView txtTenSach;
        private TextView txtGia;


        public SachViewHolder(@NonNull View itemView) {
            super(itemView);
            imgSach = itemView.findViewById(R.id.img_sach);
            txtTenSach = itemView.findViewById(R.id.txt_sach);
            txtGia = itemView.findViewById(R.id.txt_Gia);


        }
    }
}

// Link tham khảo
// https://www.youtube.com/watch?v=c8HoSMpaQOQ
