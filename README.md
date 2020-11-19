# FoodRecipes
WPF .net framework

# Điểm đề nghị:

# Thông tin nhóm:
| MSSV     |     Họ và tên    |
|:--------:|:----------------:|
| 18120568 | Phạm Văn Thật    |
| 18120655 | Phạm Minh Vương  |
| 18120653 | Lưu Trường Vũ    |

# Chức năng làm được:
1. Splash Screen (0.5 điểm):
- Hiển thị thông tin chào mừng mỗi khi ứng dụng khởi chạy.
- Mỗi lần hiện ngẫu nhiên một thông tin thú vị về món ăn / loại đồ ăn.
- Cho phép chọn check “Không hiện hộp thoại này mỗi khi khởi động”. Từ nay về sau đi thẳng vào màn hình HomeScreen.

2. HomeScreen (3 điểm):
- Liệt kê danh sách các món ăn được ưa thích.
- Liệt kê toàn bộ danh sách món ăn có phân trang.
- Lưu lại thông tin phân trang cho mỗi lần mở app lên.
   	+ Có 2 chế độ: xem 6 sản phẩm mỗi trang hoặc 8 sản phẩm mỗi trang.
        + Sắp xếp tăng dần hoặc giảm dần theo tên.
- Có thể xem danh sách các món ăn ưa thích (được ghim lại), thêm và loại bỏ món ăn vào danh sách ưa thích này.

3. SearchScreen (2 điểm):
Tìm kiếm món ăn theo tên. Đã hoàn thành các cảnh giới sau:
- Cảnh giới 1: Tìm chính xác. 
	(ví dụ: tìm "Phở bò" sẽ hiện chính xác món "Phở bò").
- Cảnh giới 2: Hỗ trợ tìm kiếm không dấu.                                                             
	(ví dụ: tìm "lau ca keo" vẫn hiện "Lẩu cá kèo").
- Cảnh giới 3: Tìm không dấu hay có dấu hoặc có dấu chưa đúng nhưng kết quả vẫn ra và có độ ưu tiên.   // Không có
	(ví dụ: tìm "com" vẫn hiện kết quả có "cơm trộn mayonaise", "cá cơm kho tiêu").
- Cảnh giới 4: Tìm với từng từ hoặc kết hợp tạo ra tổ hợp từ các từ, có thể trong các trường khác nhau của dữ liệu.
	(ví dụ: tìm 1 từ "cơm" sẽ ra kết quả có chứa từ "cơm" như "cơm trộn mayonaise", "cá cơm kho tiêu",
	          tìm 1 cụm từ "cơm trộn" thì sẽ hiện kết quả có chứa "cơm trộn" như "cơm trộn mayonaise").
- Cảnh giới 5: Thêm các từ khóa and, or, not.
	(ví dụ: tìm "thịt and kho" sẽ hiện món có chữ "thịt" VÀ chữ "kho" như: "thịt kho trứng",
	          tìm "thịt or kho" sẽ hiện món có chữ "thịt" HOẶC chữ "kho" như: "thịt kho trứng", "lẩu kim chi thịt bò", "cá cơm kho tiêu",
	          tìm "thịt not kho" sẽ hiện món có chữ "thịt" KHÔNG CÓ chữ "kho" như: "thịt heo om nấm đậu Hà Lan").
- Cảnh giới 6: dùng CSDL hỗ trợ sạch các cảnh giới trên. (dùng SQL và ADO.NET framework).

4. DetailScreen (2 điểm):
- Hiển thị chi tiết các bước nấu món ăn.
- Có thể xem video (nhúng youtube).
- Xem video từ internet.

5. AddRecipe (2 điểm):
- Cho phép người dùng tự thêm một công thức nấu ăn vào hệ thống.
- Tên món.
- Thêm các bước làm, với mỗi bước:
	+ Thêm mô tả bằng text.
	+ Thêm hình ảnh.
	+ Thêm link video youtube.
  
# Các chức năng đã thêm:
- Nhúng video youtube vào phần chi tiết của món ăn.
- Xử lí thay đổi kích thước cửa sổ ứng dụng.

# Thư viện và package đã dùng:
- MaterialDesign. (Hướng dẫn cài đặt: http://materialdesigninxaml.net/)
- EntityFramework.

# Con đường bất hạnh:

# Link youtube demo:

# Ghi chú: