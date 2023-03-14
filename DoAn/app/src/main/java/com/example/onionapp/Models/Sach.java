package com.example.onionapp.Models;

public class Sach {
    private int maSach;
    private String tenSach;
    private String tenTacGia;
    private String nhaXuatBan;
    private int namXuatBan;
    private int donGia;
    private int hinhAnh;

    public Sach() {
    }

    public Sach(int maSach, String tenSach, String tenTacGia, String nhaXuatBan, int namXuatBan, int donGia, int hinhAnh) {
        this.maSach = maSach;
        this.tenSach = tenSach;
        this.tenTacGia = tenTacGia;
        this.nhaXuatBan = nhaXuatBan;
        this.namXuatBan = namXuatBan;
        this.donGia = donGia;
        this.hinhAnh = hinhAnh;
    }

    public Sach(String tenSach, int hinhAnh) {
        this.tenSach = tenSach;
        this.hinhAnh = hinhAnh;
    }

    public Sach(String tenSach, int donGia, int hinhAnh) {
        this.tenSach = tenSach;
        this.donGia = donGia;
        this.hinhAnh = hinhAnh;
    }

    public int getMaSach() {
        return maSach;
    }

    public String getTenSach() {
        return tenSach;
    }

    public String getTenTacGia() {
        return tenTacGia;
    }

    public String getNhaXuatBan() {
        return nhaXuatBan;
    }

    public int getNamXuatBan() {
        return namXuatBan;
    }

    public int getDonGia() {
        return donGia;
    }

    @Override
    public String toString() {
        return this.donGia +"đ";
    }

    public String toStringTenTacGia() {
        return "Tác giả " + this.tenTacGia ;
    }


    public int getHinhAnh() {
        return hinhAnh;
    }

    public void setMaSach(int maSach) {
        this.maSach = maSach;
    }

    public void setTenSach(String tenSach) {
        this.tenSach = tenSach;
    }

    public void setTenTacGia(String tenTacGia) {
        this.tenTacGia = tenTacGia;
    }

    public void setNhaXuatBan(String nhaXuatBan) {
        this.nhaXuatBan = nhaXuatBan;
    }

    public void setNamXuatBan(int namXuatBan) {
        this.namXuatBan = namXuatBan;
    }

    public void setDonGia(int donGia) {
        this.donGia = donGia;
    }

    public void setHinhAnh(int hinhAnh) {
        this.hinhAnh = hinhAnh;
    }
}
