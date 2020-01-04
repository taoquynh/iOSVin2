# iOSVin2

## Day1
- Bài tập về nhà Day1:
Layout giao diện Đăng ký, đăng nhập trong thư mục img

## Day2
- Bài tập về nhà Day2:
Layout giao diện Sửa hồ sơ (Layout bằng snapkit, Kung_pao (Layout bằng code) 

## Day3
- Bài tập về nhà Day3:
- Thêm scrollView vào giao diện Profile, Login, Register
- Làm ứng dụng PageControl tự động scroll
- Thêm animate khi cuộn pageControl

## Day4
- Bài tập về nhà Day4:
- Làm giao diện Báo cáo sự cố và Chi tiết sự cố

## Day5: 
- Bài tập về nhà Day5:
- Ghép tất cả các api vào màn hình

## Domain: http://45.118.145.149:8100
1. API đăng ký
- URL: /register
- Method: POST 
- Request: https://jsoneditoronline.org/?id=1c6b9f1c09b74d6ca436c19f07cf2d80
- Response: https://jsoneditoronline.org/?id=98ae04986fe34ddaaa7413f719572777

2. API đăng nhập
- URL: /login
- Method: POST
- Request: https://jsoneditoronline.org/?id=99e88fff5ceb4d16be03566e96fe746d
- Response: https://jsoneditoronline.org/?id=b57da20044ad4096963cb3f1c2f47ff9

3. List Issues ( Đã xử lý, chưa xử lý), Search Issue (token trong header)
- URL: /issues
- Method: GET 
- Response: https://jsoneditoronline.org/?id=659ed9f220104571b6e40f9f5d0243d8
```
Chưa đăng nhập trả mã lỗi 403
→ Chú ý: 
/issues?status=0&keyword=: Lấy issue bản thân tạo theo trạng thái (-1 lấy tất cả, 0 - chưa xử lý, 1 - đang xử lý, 2 - đã xử lý)
```

4. Get Issue detail (token trong header)
- URL: /issues/{id} 
- Method: GET 
- Response: https://jsoneditoronline.org/?id=9639d0d6022d4c7bacc83175622bf2eb

5. Get Profile (token trong header)
- URL: /profile
- Method: GET
- Response: https://jsoneditoronline.org/?id=fa36e1e42c664b9aaf968c16aaf1e4b3

6. Update Profile (token trong header)
- URL: /update-profile
- Method: PUT
- Request: https://jsoneditoronline.org/?id=2674bae561c044e7a86738a375d56a30

7. Create Issue (token trong header)
- URL: /create-issue
- Method: POST
- Request: https://jsoneditoronline.org/?id=54dd23034f4746dab6105f6acf4fbdfe

8. Upload image (token trong header)
- URL: /upload-file
- Method: POST
- Request: Form 


