USE master
go
CREATE DATABASE DBFoodRecipes
go
USE DBFoodRecipes
go

CREATE TABLE FoodRecipes
(
	ID int,
	NameFood nvarchar(100),
	DishDescription nvarchar(max),
	CookingIngredients nvarchar(max),
	FoodImage nvarchar(max),
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

CREATE TABLE FavoriteFood
(
	IdFoodRecipes int,
	primary key(IdFoodRecipes)
)
go

ALTER TABLE FoodCookingStep
	ADD CONSTRAINT fk_FoodCookingStep_FoodRecipes
	FOREIGN KEY(IdFoodRecipes)
	REFERENCES FoodRecipes(ID)

ALTER TABLE FavoriteFood
	ADD CONSTRAINT fk_FavoriteFood_FoodRecipes
	FOREIGN KEY(IdFoodRecipes)
	REFERENCES FoodRecipes(ID)
go


INSERT INTO FoodRecipes VALUES
	(
		1, 
		N'Phở bò', 
		N'Phở bò là món ăn phổ biến khắp các vùng miền với công thức chế biến khác nhau, nổi tiếng ngon nhất là ở Hà Nội và Nam Định. Hãy tham khảo ngay cách nấu phở bò gia truyền dưới đây để cả gia đình cùng thưởng thức hương vị thơm ngon đậm đà vừa đơn giản mà lại tiết kiệm.',
		N'- Thịt bò thăn: 500 gram
- Xương bò: 2 kg
- Hành tây: 200 gram
- Rễ cây ngò gai (rau mùi): 6 rễ
- Mía: 2 lóng (mỗi lóng dài khoảng 10 cm)
- Bánh phở: 500 gram
- Gia vị: Bột ngọt, mắm, muối, đường, tiêu, dầu ăn, tương ớt, tương đen, quế khô, hoa hồi, thảo quả, gừng tươi, hành tím, hạt mùi ...
- Các loại rau thơm, giá, ớt sừng, chanh, rau mùi, hành lá …',
		'Images/phobo3.jpg',
		'https://youtu.be/yJuQ4tS6O18'
	),
	(
		2, 
	N'Bún bò Huế', 
	N'Món bún bò Huế là một trong những món ăn đặc trưng của người miền Trung, sẽ thật tuyệt vời nếu bạn có thể tự tay làm những tô bún thơm ngon để cả nhà cùng thưởng thức vào dịp cuối tuần.',
	N'-Xương Ống heo 2 kí
-Bò bắp 700g
-Bắp giò heo (nên chọn giò trước) 700g
-Sả cây khoảng 10 cây
-Sả băm, tỏi, ớt xay mỗi loại 100g
-Hành tím/ đầu hành lá + ngò rí xay 200g
-Mắm ruốc Huế (Bà Duệ) 1 hủ nhỏ
-Bún bò cọng lớn 3 kíRau muống cọng
-Ớt hiểm xanh 100g
-Hành tây 200g
-Gừng 100g
-Thơm chín 1 trái
-Chả lá Huế 20 cái',
		'Images/bunbohue4.jpg',
		'https://youtu.be/43uGYn0iyNw'
	),
	(
		3,
		N'Burger thịt bò phô mai',
		N'Bữa ăn sẽ thật tuyệt vời và tràn đầy năng lượng với chiếc bánh burger với nhân thịt bò đậm đà quyến rũ cùng lớp phô mai béo ngậy, bên dưới là lớp rau xanh cùng cà chua mọng nước quyện với sốt mayonnaise và tương cà hấp dẫn.',
		N'- Thịt bò xay sẵn: 300gr
- Tỏi băm: 5gr
- Muối, ớt bột, tiêu xay
- Lòng đỏ trứng gà: 1 quả',
		'Images/burger5.jpg',
		'https://youtu.be/3KQs3EqQ9SA'
	),
	(
		4,
		N'Bánh Flan trà sữa trân châu đường nâu',
		N'Bạn thích bánh flan, bạn cũng thích nhâm nhi trà sữa với trân châu đường nâu ngọt lịm. Vậy tại sao không kết hợp 2 món ăn hấp dẫn này lại với nhau để tạo thành món bánh flan trà sữa trân châu đường đen hấp dẫn. Nhà Cooky còn hướng dẫn các bạn làm món bánh flan này với size cỡ bự nữa đó nha, đảm bảo ăn hoài không hết luôn, thỏa mãn cơn thèm bánh flan lẫn trà sữa của các tín đồ mê ăn vặt nha!',
		N'- 20gr trà hoa trân số 09
- 20gr trà đen Phúc Long
- 200ml sữa tươi không đường
- 200ml sữa đặc
- 100ml kem béo
- 30gr đường
- 10 quả trứng gà',
		'Images/flan5.jpg',
		'https://youtu.be/YqgDpVxgA7E'
	),
	(
		5,
		N'Da heo chiên tỏi ớt',
		N'Da heo chiên tỏi ớt, món ăn vặt được nhiều người yêu thích. Da heo chiên vẫn giữ được độ giòn rụm, cảm giác nhai như tan vào trong miệng. Trong đó, còn hòa quyện chút vị mằn mặn vừa phải, chút cay nồng từ ớt, cháy giòn thơm của tỏi. Với hương vị nồng nàn, hấp dẫn, bạn hãy từ từ cản nhận độ giòn, xốp của từng miếng da heo đậm đà và thỏa mãn vị giác của mình.',
		N'- 400gr da heo
- 1 muỗng cà phê muối
- 5gr gừng lát',
		'Images/daheo6.jpg',
		'https://youtu.be/3vI7CNSyQEo'
	),
	(
		6,
		N'Bánh Sandwich sữa chua',
		N'Bánh Sandwich sữa chua nhỏ xinh, lớp nhân sữa chua thanh mát làm dịu nhẹ độ béo của phô mai, không quá ngấy ăn vào lại muốn ăn tiếp. Bánh ngon, thực hiện nhanh trong vòng 1 nốt nhạc, không cần phải nấu.',
		N'Phô mai, sữa chua, và sữa đặc',
		'Images/sandwich3.jpg',
		'https://youtu.be/N4Z2eSbC2JQ'
	),
	(
		7,
		N'Tôm viên củ sen chiên giòn',
		N'Một chút biến tấu với củ sen thanh ngọt và thịt tôm được bọc bởi một lớp bột giòn xù sẽ đem lại cảm giác thích thú ngay từ cái nhìn đầu tiên. Món tôm viên củ sen chiên giòn đã tạo nên sự kết hợp hài hòa giữa hải sản và củ sen tạo nên một phong cách ẩm thực mới mẻ lạ miệng cho gia đình bạn thưởng thức vào ngày cuối tuần đấy.',
		N'- 200gr tôm bóc vỏ.
- 50gr củ sen băm nhuyễn.
- 20gr hành lá cắt nhỏ. 
- 100gr giò sống
- 1/2 muỗng cà phê đường
- 1 muỗng cà phê hạt nêm
- 1/2 muỗng cà phê tiêu
- 1/2 muỗng cà phê ớt bột
- 1 muỗng cà phê dầu hào 
- 20gr bột bắp',
		'Images/tomvien4.jpg',
		'https://youtu.be/dSpo7o6Msw0'
	),
	(
		8,
		N'Bim bim khoai lang',
		N'Bim bim khoai lang là món ăn vặt được yêu thích bởi sự giòn tan của khoai lang mà vẫn giữ được hương vị ban đầu.',
		N'Khoai lang, dầu ăn',
		'Images/bimbimkhoailang3.jpg',
		'https://youtu.be/jwcjuhwX2AQ'
	)

INSERT INTO FoodCookingStep VALUES
	(
		1,
		1,
		N'- Xương bò bạn cho vào nồi nước sôi nấu khoảng 5 phút sau đó lấy ra rửa sạch.
- Hành tây, hành tím, gừng, mía để nguyên vỏ nướng chín. Sau đó bạn cạo  sạch vỏ gừng và hành rửa sạch để ráo. Cắt lát gừng, hành tây bổ đôi để riêng.
- Mía sau khi nước róc vỏ chẻ miếng để riêng.
- Nhặt hành lá, ngò rửa sạch ngâm với nước muối loãng rồi cắt nhỏ.
- Rang hoa hồi, quế, thảo quả, hạt mùi ở lửa nhỏ đến khi có mùi thơm rồi cho vào túi vải buộc chặt.',
		'Images/phobo1.jpg'
	),

	(
		1,
		2,
		N'- Bạn nấu sôi nước hầm xương bò trong nồi áp suất khoảng 40 phút sau đó cho lần lượt các gia vị như hành tây, mía, gừng, rễ mùi, túi dụng hỗn hợp các loại gia vị vào nước dùng rồi hầm trong 3 tiếng. Chú ý điều chỉnh nêm nếm gia vị sao cho vừa ăn.',
		'Images/phobo2.jpg'
	),

	(
		1,
		3,
		N'- Do thịt bò có hương vị đặc trưng nên sử dụng hành gừng nướng trong nước dùng rất quan trọng để át mùi hôi của bò. Khi rửa thịt bạn nên dùng hành gừng nướng giã nhuyễn chà sát lên bề mặt của thịt rồi rửa lại với nước sạch.
- Thịt bò bạn thái mỏng theo thớ ngang hoặc để thịt mềm bạn dùng chày giã sơ qua thịt bò trước khi cắt. Để làm phở bò tái bạn trần qua thịt bò với nước sôi rồi để riêng.
- Khi ăn bạn trần phở qua nước sôi rồi xếp vào bát sau đó cho thịt bò tái đã trần sơ qua, các loại rau thơm ở trên. Rồi chan nước dùng để làm chín thịt bò.
- Khi ăn bạn ăn cùng quẩy, rau sống, giá, chanh, ớt, tương ớt…sẽ rất ngon.',
		'Images/phobo3.jpg'
	),

	(
		2,
		1,
		N'Chặt đôi, phan chia phần móng giò và bắp giò. Lọc bỏ xương của phần bắp giò tiếp nối bó chặt thịt bắp lại bằng chỉ buộc thực phẩm. Tiếp đến, bạn dồn phần các nguyên vật liệu này trần qua nước sôi rồi rửa sạch.\nXương heo bạn đem rửa kỹ với nước rồi cũng đem chần qua nước sôi cho sạch bọt bẩn. Chần và rửa kỹ lại với nướcchấm dứt bạn đem chặt xương thành các miếng cờ vừa phải.
		Chặt đôi, phan chia phần móng giò và bắp giò. Lọc bỏ xương của phần bắp giò tiếp nối bó chặt thịt bắp lại bằng chỉ buộc thực phẩm. Tiếp đến, bạn dồn phần các nguyên vật liệu này trần qua nước sôi rồi rửa sạch.\nXương heo bạn đem rửa kỹ với nước rồi cũng đem chần qua nước sôi cho sạch bọt bẩn. Chần và rửa kỹ lại với nước chấm dứt bạn đem chặt xương thành các miếng cờ vừa phải.',
		'Images/bunbohue1.jpg'
	),
	(
		2,
		2,
		N'Pha loãng 3 thìa cafe mắm ruốc với 5 thìa cafe nước lọc cho thật đều. Tiếp đến, bạn bỏ phần thịt giò heo, bắp bò, nạm bò và gân bò vào ướp với mắm muối tiêu theo một lượng vừa phải. Cuối cùng, bạn đổ phần nước mắm ruốc đã hoà loãng vào ướp cùng trong khoảng nửa tiếng.
		Sả cây bạn bóc đi lớp bẹ già, úa bên ngoài, rửa sạch rồi chẻ đôi cây sả. Về phần gừng, bạn gọt vỏ rồi tiếp đến cắt lát mỏng hoặc thái chỉ. Xong xuôi, bạn xếp phần gừng và sả này xuống dưới đáy nồi sẽ dùng để triển khai chín phần thịt.
		Cho phầnthịt bò bắp gân bò và nạm bò vào làm chín trước. Khi nồi thịt đã sôi được chừng 10 phút thì bạn cho tiếp phần giò heo và móng heo vào ninh cùng cho tới khi phần các nguyên vật liệu này mềm thì tắt bếp và vớt ra để nguội.',
		'Images/bunbohue2.jpg'
	),
	(
		2,
		3,
		N'Phần xương ninh làm nước dùng này bạn có thể thực hiện đồng thời cùng lúc với việc nấu thịt để tiết kiệm trong khoảng thời gian Ninh xương kỹ trong khoảng 1 tiếng xong bạn cho chung phần nước luộc thịt đã sẵn có đó vào hoà cùng.
		Đun sôi phần nước này, tiếp đến bạn nêm phần nước mắm, muối,hạt nêm đường và mắm ruốc cho đủ ăn. Để nước dùng có màuưa nhìn bạn phi thơm phần tỏi băm với 2 thìa cafe sa tế và mắm chưng rồi trút vào nồi nước dùng.',
		'Images/bunbohue3.jpg'
	),
	(
		2,
		4,
		N'Thịt bắp heo, bắp bò, nạm bò bạn đem thái thành các miếng mỏng. Phần gân bò bạn bổ thành các khúc nhỏ cho vừa ăn. Với phần móng giò, bạn dùng dao sắc và chặt thành các miếng mỏng.\nChuẩn bị kỹ (rửa sạch + ngâm muối loãng) phần rau sống và bày sẵn ra bát Bún bạn trụng qua nước sôi cho sạch hơn rồi cho vào bát tô. Xếp phầnthịt heo thịt bò và móng giò lên ở trên Tiếp đến, rắc phần hành, rau thơm thái nhỏ dại lên rồi chế nước dùng vào và thưởng thức.',
		'Images/bunbohue4.jpg'
	),
	(
		3,
		1,
		N'Cho vào tô lớn 300gr thịt bò xay sẵn, trộn cùng 5gr tỏi băm, 3gr muối, 5gr ớt bột, 3gr tiêu xay và 1 lòng đỏ trứng gà. Trộn đều cho các nguyên liệu được hòa quyện lại với nhau và ướp khoảng 15 phút cho thịt thấm gia vị. Sau đó dùng tay nặn thịt thành những viên tròn lớn dẹt mỗi viên khoảng 100gr.',
		'Images/burger1.jpg'
	),
	(
		3,
		2,
		N'Cho thịt bò vào áp chảo cùng dầu olive khoảng 2-3 phút mỗi mặt, nên để lửa vừa để thịt được chín từ từ. Khi thịt chín đều các mặt, ta tắt bếp rồi thêm miếng phô mai trên mặt để phô mai tan chảy.',
		'Images/burger2.jpg'
	),
	(
		3,
		3,
		N'Một thành phần cũng rất đặc biệt để góp phần tạo nên độ ngon của chiếc burger đó chính là hành tây caramel. Cách làm cũng rất đơn giản, cho vào chảo 3gr bơ lạt, cho 100gr hành tây (đã cắt dọc) đảo đều, nêm thêm 3gr muối và 10gr đường rồi đảo nhẹ tay đến khi hành ngả màu vàng nâu đẹp mắt thì tắt bếp.',
		'Images/burger3.jpg'
	),
	(
		3,
		4,
		N'Các nguyên liêu đã chuẩn bị xong, giờ đến công đoạn thành phẩm thôi. Bánh burger cắt làm đôi, phết sốt mayonnaise đều trong mặt bánh, phủ xà lách và cà chua cắt lát rồi cho miếng bò đã áp chảo lên tầng tiếp theo, thêm vài lát hành tây caramel trên đầu, phủ thêm một lớp tương cà trên mặt nữa là có ngay một chiếc burger tuyệt vời rồi!',
		'Images/burger4.jpg'
	),
	(
		3,
		5,
		N'Bày hamburger ra đĩa và thưởng thức. Bánh burger bò phô mai sốt mayonnaise đơn giản, nhanh chóng với hương vị béo ngậy, mềm tan và thơm lừng trong miệng khiến ai cũng mê mẩn không thôi. Vậy còn chờ gì mà không lưu lại công thức và làm ngay cho bữa sáng!',
		'Images/burger5.jpg'
	),
	(
		4,
		1,
		N'Trộn 20gr trà hoa trân số 09 với 20gr trà đen Phúc Long, rồi nấu trên lửa nhỏ khoảng 15 phút. Tắt bếp và ủ trà từ 1-2 tiếng. Sau đó lọc phần bã trà qua rây để lấy nước.',
		'Images/flan1.jpg'
	),
	(
		4,
		2,
		N'Đun nóng nhẹ trên bếp 200ml sữa tươi không đường, 200ml sữa đặc, 100ml kem béo và 30gr đường. Khuấy đều cho tan rồi cho hỗn hợp sữa đã đun vào 300ml nước trà đen đã lọc để tạo thành hỗn hợp trà sữa.',
		'Images/flan2.jpg'
	),
	(
		4,
		3,
		N'Cho vào tô 6 quả trứng gà và 4 lòng đỏ trứng, khuấy tan nhẹ để tránh tạo bọt khí. Cho hỗn hợp trà sữa vào phần trứng, khuấy đều cho hòa quyện rồi đem lọc qua rây nhiều lần để phần flan được mịn nhất.',
		'Images/flan3.jpg'
		),
	(
		4,
		4,
		N'Làm Caramen: Cho 70gr đường và 50ml nước vào chảo đun trên bếp. Trong quá trình đun nhớ để yên không khuấy. Khi hỗn hợp bắt đầu chuyển sang màu vàng nhạt thì vắt nước cốt chanh vào, lắc nhẹ chảo để đường tan đều. Khi màu đường chuyển sang màu nâu cánh gián đẹp mắt thì tắt bếp. Cho phần caramen vào khuôn và để trong tủ đông khoảng 1 tiếng.',
		'Images/flan4.jpg'
	),
	(
		4,
		5,
		N'Cho hỗn hợp flan vào khuôn, bọc giấy bạc trên mặt và nướng cách thủy 2 tiếng với nhiệt độ là 155 độ C. Phần nước sôi đổ vào các bạn nhớ đổ ngập 3/4 khuôn nhé để phần flan được nóng và chín đều.',
		'Images/flan5.jpg'
	),
	(
		4,
		6,
		N'Chiếc bánh flan khổng lồ đã sẵn sàng trên đĩa, rưới một ít trân châu đường đen và đá nhuyễn là ta có thể thưởng thức ngay rồi nè! Hãy cảm nhận vị béo ngậy của chiếc bánh flan được hòa quyện cùng vị ngọt thơm của vị trà sữa, lại còn được kết hợp cùng trân châu đường đen dẻo dai, ngọt dịu, thật sự rất tuyệt vời. Công thức Cooky đã có sẵn, còn chờ gì mà không bắt tay vào làm ngay thôi!',
		'Images/flan6.jpg'
	),
	(
		5,
		1,
		N'Đầu tiên, 400gr da heo sơ chế sạch, cho vào nồi nước sôi luộc với 1 muỗng cà phê muối và 5gr gừng lát. Khi da heo chín thì vớt ra cho vào tô nước lạnh để da heo trắng và giữ được độ giòn.',
		'Images/daheo1.jpg'
	),
	(
		5,
		2,
		N'Tiếp đó, dùng nĩa xăm xung quanh miếng da, rắc ít muối lên mặt ngoài da heo và chà xát rồi cắt thành miếng nhỏ vừa ăn. Sau đó, trải đều da heo lên trên khay nướng và cho vào lò nướng 30 phút để nhiệt độ 160 độ, nướng đến khi miếng da có độ khô cứng.',
		'Images/daheo2.jpg'
	),
	(
		5,
		3,
		N'Cho dầu vào 1/2 chảo dầu, cho 10gr lá chanh vào chiên sơ rồi vớt ra. Sau đó, cho da heo đã khô vào chiên da chiên phồng rồi vớt ra.',
		'Images/daheo3.jpg'
	),
	(
		5,
		4,
		N'Cho 1 muỗng canh dầu ăn vào chảo, phi thơm 30gr tỏi băm, 20gr ớt băm cho vàng. Sau đó để lửa nhỏ, cho 1 muỗng canh nước mắm, 1.5 muỗng canh đường, 1 muỗng canh tương ớt, 1 muỗng canh nước cốt chanh, khuấy đến khi tan hỗn hợp.',
		'Images/daheo4.jpg'
	),
	(
		5,
		5,
		N'Rồi cho da heo đã chiên phồng và lá chanh chiên rồi đảo đều cho hỗn hợp sốt áo đều miếng da heo thì tắt bếp.',
		'Images/daheo5.jpg'
	),
	(
		5,
		6,
		N'Da heo chiên giòn tỏi ớt vẫn giữ được độ giòn rụm, cảm giác nhai như tan vào trong miệng. Trong đó, còn hòa quyện chút vị mằn mặn vừa phải, chút cay nồng từ ớt, cháy giòn thơm của tỏi. Đảm bảo kích thích vị giác của bạn trên từng miếng da heo luôn.',
		'Images/daheo6.jpg'
	),

	(
		6,
		1,
		N'Đối với phần nhân, bạn chuẩn bị Phô mai, sữa chua, và sữa đặc vô 1 tô lớn để tán mịn hỗn hợp. Sau đó cho vào túi bắt kem để tủ đá 30 phút. Nhớ dùng sữa chua không đường nhé, độ ngọt của sữa đặc đã đủ làm dịu độ ngọt của bánh. Để túi bắt kem vào ly cho việc đổ hỗn hợp vào túi dễ dàng.',
		'Images/sandwich1.jpg'
	),
	(
		6,
		2,
		N'Tiếp đến bạn chuẩn bị cắt viền sandwich, dùng chài cán bột để cán mỏng bánh. Sau khi cán xong, bạn quết sữa đặc hoặc sữa tươi quanh 3 mép bánh. Sau đó gấp đôi bánh lại và dùng nĩa ấn cố định 2 mép bánh lại, bạn nhớ ấn cả 2 bên mặt. Sữa giúp 2 mép bánh dính lại với nhau hơn. Bỏ qua bước này thành phẩm bánh sẽ không dẻ mịn và khi bơm hỗn hợp sữa chua phô mai vào vỏ bánh xốp sẽ không giữ được nhân bên trong. Bạn lưu ý nhé.',
		'Images/sandwich2.jpg'
	),
	(
		6,
		3,
		N'Sau khi gấp và ấn mép bánh thành hình dạng chiếc túi, bạn từ từ bơm hỗn hợp sữa chua phô mai đã để đông lúc nãy vào bánh, cuối cùng dùng nĩa ấn cố định mép bánh còn lại là đã hoàn tất chiếc bánh sandwich sữa chua nhỏ xinh ngon miệng rồi. Bạn nhớ cắt lại các mép bánh cho đẹp mắt. Bạn có thể bảo quản bánh trong tủ lạnh, nhưng nhớ bọc bánh bằng lớp màng thực phẩm nhé. Không là lớp bánh sandwich sẽ bị khô và mất ngon nhé.',
		'Images/sandwich3.jpg'
	),
	(
		7,
		1,
		N'200gr tôm bóc vỏ, rửa sạch, cắt riêng phần đuôi, băm nhuyễn phần thịt. 50gr củ sen băm nhuyễn, 20gr hành lá cắt nhỏ. Cho tất cả nguyên liệu đã băm nhuyễn vào tô cùng 100gr giò sống, thêm 1/2 muỗng cà phê đường, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê tiêu, 1/2 muỗng cà phê ớt bột, 1 muỗng cà phê dầu hào và cuối cùng là 20gr bột bắp. Trộn đều lên và để ướp khoảng 15 phút.',
		'Images/tomvien1.jpg'
	),
	(
		7,
		2,
		N'Tiếp đến, dùng bao tay nilong, thoa một chút dầu ăn lên bao tay rồi vo và nặn viên tôm thành viên tròn. Để lên 1 cái đĩa có thoa 1 chút dầu ăn. Nhúng viên tôm qua bột chiên giòn, đến trứng gà, và cuối cùng là bột chiên xù. Phần đuôi tôm cắm vào viên tôm cho đẹp.',
		'Images/tomvien2.jpg'
	),
	(
		7,
		3,
		N'Cho dầu vào chảo, thử dầu nóng già thì cho viên tôm vào. Để lửa vừa, chiên đều tôm cho vàng đều là được.',
		'Images/tomvien3.jpg'
	),
	(
		7,
		4,
		N'Cho tôm viên ra đĩa, ăn cùng tương ớt Chin-Su rất ngon. Chỉ với chút biến tấu bạn đã có món tôm viên củ sen hấp dẫn, giòn ngon cho cả nhà rồi.',
		'Images/tomvien4.jpg'
	),
	(
		8,
		1,
		N'Khoai lang được gọt vỏ sạch. Bào mỏng và ngâm nước muối 15 phút. Rửa sạch lại và để thật khô ráo.',
		'Images/bimbimkhoailang1.jpg'
	),
	(
		8,
		2,
		N'Cho dầu vào chảo và lấy giấy ăn lau qua chảo dầu, cho khoai lang vào, lật mặt khoai đến khi khoai vàng giòn đều thì cho ra.',
		'Images/bimbimkhoailang2.jpg'
	),
	(
		8,
		3,
		N'Các bạn lưu ý để khoai thật nguội thì ăn lúc đó mới giòn tan.Chúc các bạn thành công!',
		'Images/bimbimkhoailang3.jpg'
	)


	