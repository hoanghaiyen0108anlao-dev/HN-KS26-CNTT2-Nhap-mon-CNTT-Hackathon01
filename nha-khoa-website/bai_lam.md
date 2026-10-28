# BÀI LÀM – HACKATHON 01

- **Mã đề:** 14
- **Họ tên:Hoàng Hải Yến** 
- **Lớp:Cntt2** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):WINDOWS** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -Force
mv .\huong_dan_cham_soc.txt .\docs|mv .\logo_nha_khoa.PNG .\media
cp .\media\logo_nha_khoa.PNG .\backup
rm .\temp_226.tmp
cd .\logs
ls
cd..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: C:\Users\ACER\Downloads\starter-kit\starter-kit\nha-khoa-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   1:42 PM                backup
d-----        10/28/2026   1:36 PM                data
d-----        10/28/2026   1:41 PM                docs
d-----        10/28/2026   1:36 PM                logs
d-----        10/28/2026   1:33 PM                media
------        10/27/2026   1:32 AM             65 .env
-a----        10/27/2026   1:32 AM           2224 bai_lam.md
-a----        10/27/2026   1:32 AM           5736 logo_nha_khoa.PNG


    Directory:
    C:\Users\ACER\Downloads\starter-kit\starter-kit\nha-khoa-website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   1:42 PM                media


    Directory:
    C:\Users\ACER\Downloads\starter-kit\starter-kit\nha-khoa-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6094 dieu_tri_thang_4.xlsx


    Directory:
    C:\Users\ACER\Downloads\starter-kit\starter-kit\nha-khoa-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             63 huong_dan_cham_soc.txt


    Directory:
    C:\Users\ACER\Downloads\starter-kit\starter-kit\nha-khoa-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1079 clinic.log

```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
Get-content logs/clinic.log | Select-String "ERROR" >> logs/daily_report.txt
Get-Content .\logs\daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2026-04-28 09:51:29 [ERROR] Ket noi he thong ho so that bai
2026-04-28 10:07:29 [ERROR] Khong tim thay trang /bang-gia-dich-vu (404)

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
ni auto_report.ps1
#Script: auto_report.txt
#ten tac gia:"Hai Yen"
Write-Host "dang loc log..."

"=== BAO CAO LOI ==="> logs/auto_report.txt
Get-Content logs/clinic.log | Select-String "ERROR" >> logs/auto_report.txt
Write-Host "Hoan Thanh"
./auto_report.ps1


```

### Kết quả hiển thị

```text
dang loc log...
Hoan Thanh

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 (Get-Content logs/clinic.log| Select-String "ERROR").count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
5

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
1: "=== TONG HOP LOG ===" > logs/tong_hop.txt
B2: get-content logs/clinic.log | Select-String "WARNING" >> logs/tong_hop.txt
B3: (get-content logs/clinic.log | Select-String "ERROR").count >> logs/tong_hop.txt
B4: get-content logs/tong_hop.txt

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===

2026-04-28 09:27:29 [WARNING] Thoi gian phan hoi cham
2026-04-28 09:31:29 [WARNING] Anh X-quang dung luong lon
2026-04-28 09:39:29 [WARNING] Anh X-quang dung luong lon
2026-04-28 10:11:29 [WARNING] Lich kham chieu thu bay sap kin


0
5

```

## 4.8. Excel
> Phần Excel được chấm trực tiếp trên file `data/dieu_tri_thang_4.xlsx`, không cần ghi vào đây.
