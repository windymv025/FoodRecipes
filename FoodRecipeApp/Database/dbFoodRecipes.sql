USE master
go
CREATE DATABASE dbFoodRecipes
go
USE dbFoodRecipes
go

CREATE TABLE FoodRecipes
(
	ID int,
	NameFood nvarchar(100),
	DishDescription nvarchar(max),
	CookingIngredients nvarchar(max),
	ulrVideo nvarchar(100),
	primary key(ID)
)
go

CREATE TABLE FoodCookingStep
(
	IdFoodRecipes int,
	NumberStep int,
	Step nvarchar(max),
	ImageStep nvarchar(max)
	primary key (NumberStep, IdFoodRecipes)
)
go

ALTER TABLE FoodCookingStep
	ADD CONSTRAINT fk_FoodCookingStep_FoodRecipes
	FOREIGN KEY(IdFoodRecipes)
	REFERENCES FoodRecipes(ID)
go

--CREATE VIEW InformationFoodRecipes AS
--	SELECT f.NumberStep, f.NameFood, f.recipes, i.ulrImage, f.ulrVideo
--	FROM FoodRecipes AS fr JOIN FoodCookingStep AS fcs
--					ON fr.ID = fcs.IdFoodRecipes
--go

--Insert

INSERT INTO FoodRecipes VALUES
	(
		1, 
		'Phở bò', 
		'Phở bò là món ăn phổ biến khắp các vùng miền với công thức chế biến khác nhau, nổi tiếng ngon nhất là ở Hà Nội và Nam Định. Hãy tham khảo ngay cách nấu phở bò gia truyền dưới đây để cả gia đình cùng thưởng thức hương vị thơm ngon đậm đà vừa đơn giản mà lại tiết kiệm.',
		'- Thịt bò thăn: 500 gram\n- Xương bò: 2 kg\n- Hành tây: 200 gram\n- Rễ cây ngò gai (rau mùi): 6 rễ\n- Mía: 2 lóng (mỗi lóng dài khoảng 10 cm)\n- Bánh phở: 500 gram\n- Gia vị: Bột ngọt, mắm, muối, đường, tiêu, dầu ăn, tương ớt, tương đen, quế khô, hoa hồi, thảo quả, gừng tươi, hành tím, hạt mùi ...\n- Các loại rau thơm, giá, ớt sừng, chanh, rau mùi, hành lá …',
		'https://youtu.be/yJuQ4tS6O18'
	),
	(
		2, 
		'Bún bò Huế', 
		'PhởMón bún bò Huế là một trong những món ăn đặc trưng của người miền Trung, sẽ thật tuyệt vời nếu bạn có thể tự tay làm những tô bún thơm ngon để cả nhà cùng thưởng thức vào dịp cuối tuần.',
		'-Xương Ống heo 2 kí\n-Bò bắp 700g\n-Bắp giò heo (nên chọn giò trước) 700g\n-Sả cây khoảng 10 cây\n-Sả băm, tỏi, ớt xay mỗi loại 100g\n-Hành tím/ đầu hành lá + ngò rí xay 200g\n-Mắm ruốc Huế (Bà Duệ) 1 hủ nhỏ\n-Bún bò cọng lớn 3 kíRau muống cọng\n-Ớt hiểm xanh 100g\n-Hành tây 200g\n-Gừng 100g\n-Thơm chín 1 trái\n-Chả lá Huế 20 cái',
		'https://youtu.be/43uGYn0iyNw'
	)

INSERT INTO FoodCookingStep VALUES
	(
		1,
		1,
		'- Xương bò bạn cho vào nồi nước sôi nấu khoảng 5 phút sau đó lấy ra rửa sạch.\n- Hành tây, hành tím, gừng, mía để nguyên vỏ nướng chín. Sau đó bạn cạo  sạch vỏ gừng và hành rửa sạch để ráo. Cắt lát gừng, hành tây bổ đôi để riêng.\n- Mía sau khi nước róc vỏ chẻ miếng để riêng.\n- Nhặt hành lá, ngò rửa sạch ngâm với nước muối loãng rồi cắt nhỏ.\n- Rang hoa hồi, quế, thảo quả, hạt mùi ở lửa nhỏ đến khi có mùi thơm rồi cho vào túi vải buộc chặt.',
		'Images/phobo1.jpg'
	),

	(
		1,
		2,
		'- Bạn nấu sôi nước hầm xương bò trong nồi áp suất khoảng 40 phút sau đó cho lần lượt các gia vị như hành tây, mía, gừng, rễ mùi, túi dụng hỗn hợp các loại gia vị vào nước dùng rồi hầm trong 3 tiếng. Chú ý điều chỉnh nêm nếm gia vị sao cho vừa ăn.',
		'Images/phobo2.jpg'
	),

	(
		1,
		3,
		'- Do thịt bò có hương vị đặc trưng nên sử dụng hành gừng nướng trong nước dùng rất quan trọng để át mùi hôi của bò. Khi rửa thịt bạn nên dùng hành gừng nướng giã nhuyễn chà sát lên bề mặt của thịt rồi rửa lại với nước sạch.\n- Thịt bò bạn thái mỏng theo thớ ngang hoặc để thịt mềm bạn dùng chày giã sơ qua thịt bò trước khi cắt. Để làm phở bò tái bạn trần qua thịt bò với nước sôi rồi để riêng.\n- Khi ăn bạn trần phở qua nước sôi rồi xếp vào bát sau đó cho thịt bò tái đã trần sơ qua, các loại rau thơm ở trên. Rồi chan nước dùng để làm chín thịt bò.\n- Khi ăn bạn ăn cùng quẩy, rau sống, giá, chanh, ớt, tương ớt…sẽ rất ngon.',
		'Images/phobo3.jpg'
	),

	(
		2,
		1,
		'Chặt đôi, phan chia phần móng giò và bắp giò. Lọc bỏ xương của phần bắp giò tiếp nối bó chặt thịt bắp lại bằng chỉ buộc thực phẩm. Tiếp đến, bạn dồn phần các nguyên vật liệu này trần qua nước sôi rồi rửa sạch.\nXương heo bạn đem rửa kỹ với nước rồi cũng đem chần qua nước sôi cho sạch bọt bẩn. Chần và rửa kỹ lại với nướcchấm dứt bạn đem chặt xương thành các miếng cờ vừa phải.\nChặt đôi, phan chia phần móng giò và bắp giò. Lọc bỏ xương của phần bắp giò tiếp nối bó chặt thịt bắp lại bằng chỉ buộc thực phẩm. Tiếp đến, bạn dồn phần các nguyên vật liệu này trần qua nước sôi rồi rửa sạch.\nXương heo bạn đem rửa kỹ với nước rồi cũng đem chần qua nước sôi cho sạch bọt bẩn. Chần và rửa kỹ lại với nướcchấm dứt bạn đem chặt xương thành các miếng cờ vừa phải.',
		'Images/bunbohue1.jpg'
	),
	(
		2,
		2,
		'Pha loãng 3 thìa cafe mắm ruốc với 5 thìa cafe nước lọc cho thật đều. Tiếp đến, bạn bỏ phần thịt giò heo, bắp bò, nạm bò và gân bò vào ướp với mắm muối tiêu theo một lượng vừa phải. Cuối cùng, bạn đổ phần nước mắm ruốc đã hoà loãng vào ướp cùng trong khoảng nửa tiếng.\nSả cây bạn bóc đi lớp bẹ già, úa bên ngoài, rửa sạch rồi chẻ đôi cây sả. Về phần gừng, bạn gọt vỏ rồi tiếp đến cắt lát mỏng hoặc thái chỉ. Xong xuôi, bạn xếp phần gừng và sả này xuống dưới đáy nồi sẽ dùng để triển khai chín phần thịt.\nCho phầnthịt bò bắp gân bò và nạm bò vào làm chín trước. Khi nồi thịt đã sôi được chừng 10 phút thì bạn cho tiếp phần giò heo và móng heo vào ninh cùng cho tới khi phần các nguyên vật liệu này mềm thì tắt bếp và vớt ra để nguội.\n',
		'Images/bunbohue2.jpg'
	),
	(
		2,
		3,
		'Phần xương ninh làm nước dùng này bạn có thể thực hiện đồng thời cùng lúc với việc nấu thịt để tiết kiệm trong khoảng thời gian Ninh xương kỹ trong khoảng 1 tiếngxong bạn cho chung phần nước luộc thịt đã sẵn có đó vào hoà cùng.\nĐun sôi phần nước này, tiếp đến bạn nêm phần nước mắm, muối,hạt nêm đường và mắm ruốc cho đủ ăn. Để nước dùng có màuưa nhìn bạn phi thơm phần tỏi băm với 2 thìa cafe sa tế và mắm chưng rồi trút vào nồi nước dùng.',
		'Images/bunbohue3.jpg'
	),
	(
		2,
		4,
		'Thịt bắp heo, bắp bò, nạm bò bạn đem thái thành các miếng mỏng. Phần gân bò bạn bổ thành các khúc nhỏ cho vừa ăn. Với phần móng giò, bạn dùng dao sắc và chặt thành các miếng mỏng.\nChuẩn bị kỹ (rửa sạch + ngâm muối loãng) phần rau sống và bày sẵn ra bát Bún bạn trụng qua nước sôi cho sạch hơn rồi cho vào bát tô. Xếp phầnthịt heo thịt bò và móng giò lên ở trên Tiếp đến, rắc phần hành, rau thơm thái nhỏ dại lên rồi chế nước dùng vào và thưởng thức.',
		'Images/bunbohue4.jpg'
	)