use master
go

CREATE DATABASE [DBFoodRecipes]
go

USE [DBFoodRecipes]
GO
/****** Object:  FullTextCatalog [foodname_ctlg]    Script Date: 21/11/2020 01:06:44 ******/
CREATE FULLTEXT CATALOG [foodname_ctlg] WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT
GO
/****** Object:  Table [dbo].[FavoriteFood]    Script Date: 21/11/2020 01:06:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteFood](
	[IdFoodRecipes] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFoodRecipes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodCookingStep]    Script Date: 21/11/2020 01:06:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodCookingStep](
	[IdFoodRecipes] [int] NOT NULL,
	[NumberStep] [int] NOT NULL,
	[Step] [nvarchar](max) NULL,
	[ImageStep] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[NumberStep] ASC,
	[IdFoodRecipes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FoodRecipes]    Script Date: 21/11/2020 01:06:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FoodRecipes](
	[ID] [int] NOT NULL,
	[NameFood] [nvarchar](100) NOT NULL,
	[DishDescription] [nvarchar](max) NOT NULL,
	[CookingIngredients] [nvarchar](max) NULL,
	[FoodImage] [nvarchar](max) NULL,
	[ulrVideo] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (1, 1, N'- Xương bò bạn cho vào nồi nước sôi nấu khoảng 5 phút sau đó lấy ra rửa sạch.
- Hành tây, hành tím, gừng, mía để nguyên vỏ nướng chín. Sau đó bạn cạo  sạch vỏ gừng và hành rửa sạch để ráo. Cắt lát gừng, hành tây bổ đôi để riêng.
- Mía sau khi nước róc vỏ chẻ miếng để riêng.
- Nhặt hành lá, ngò rửa sạch ngâm với nước muối loãng rồi cắt nhỏ.
- Rang hoa hồi, quế, thảo quả, hạt mùi ở lửa nhỏ đến khi có mùi thơm rồi cho vào túi vải buộc chặt.', N'Images/phobo1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (2, 1, N'Chặt đôi, phan chia phần móng giò và bắp giò. Lọc bỏ xương của phần bắp giò tiếp nối bó chặt thịt bắp lại bằng chỉ buộc thực phẩm. Tiếp đến, bạn dồn phần các nguyên vật liệu này trần qua nước sôi rồi rửa sạch.\nXương heo bạn đem rửa kỹ với nước rồi cũng đem chần qua nước sôi cho sạch bọt bẩn. Chần và rửa kỹ lại với nướcchấm dứt bạn đem chặt xương thành các miếng cờ vừa phải.
		Chặt đôi, phan chia phần móng giò và bắp giò. Lọc bỏ xương của phần bắp giò tiếp nối bó chặt thịt bắp lại bằng chỉ buộc thực phẩm. Tiếp đến, bạn dồn phần các nguyên vật liệu này trần qua nước sôi rồi rửa sạch.\nXương heo bạn đem rửa kỹ với nước rồi cũng đem chần qua nước sôi cho sạch bọt bẩn. Chần và rửa kỹ lại với nước chấm dứt bạn đem chặt xương thành các miếng cờ vừa phải.', N'Images/bunbohue1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (3, 1, N'Cho vào tô lớn 300gr thịt bò xay sẵn, trộn cùng 5gr tỏi băm, 3gr muối, 5gr ớt bột, 3gr tiêu xay và 1 lòng đỏ trứng gà. Trộn đều cho các nguyên liệu được hòa quyện lại với nhau và ướp khoảng 15 phút cho thịt thấm gia vị. Sau đó dùng tay nặn thịt thành những viên tròn lớn dẹt mỗi viên khoảng 100gr.', N'Images/burger1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (4, 1, N'Trộn 20gr trà hoa trân số 09 với 20gr trà đen Phúc Long, rồi nấu trên lửa nhỏ khoảng 15 phút. Tắt bếp và ủ trà từ 1-2 tiếng. Sau đó lọc phần bã trà qua rây để lấy nước.', N'Images/flan1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (5, 1, N'Đầu tiên, 400gr da heo sơ chế sạch, cho vào nồi nước sôi luộc với 1 muỗng cà phê muối và 5gr gừng lát. Khi da heo chín thì vớt ra cho vào tô nước lạnh để da heo trắng và giữ được độ giòn.', N'Images/daheo1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (6, 1, N'Đối với phần nhân, bạn chuẩn bị Phô mai, sữa chua, và sữa đặc vô 1 tô lớn để tán mịn hỗn hợp. Sau đó cho vào túi bắt kem để tủ đá 30 phút. Nhớ dùng sữa chua không đường nhé, độ ngọt của sữa đặc đã đủ làm dịu độ ngọt của bánh. Để túi bắt kem vào ly cho việc đổ hỗn hợp vào túi dễ dàng.', N'Images/sandwich1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (7, 1, N'200gr tôm bóc vỏ, rửa sạch, cắt riêng phần đuôi, băm nhuyễn phần thịt. 50gr củ sen băm nhuyễn, 20gr hành lá cắt nhỏ. Cho tất cả nguyên liệu đã băm nhuyễn vào tô cùng 100gr giò sống, thêm 1/2 muỗng cà phê đường, 1 muỗng cà phê hạt nêm, 1/2 muỗng cà phê tiêu, 1/2 muỗng cà phê ớt bột, 1 muỗng cà phê dầu hào và cuối cùng là 20gr bột bắp. Trộn đều lên và để ướp khoảng 15 phút.', N'Images/tomvien1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (8, 1, N'Khoai lang được gọt vỏ sạch. Bào mỏng và ngâm nước muối 15 phút. Rửa sạch lại và để thật khô ráo.', N'Images/bimbimkhoailang1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (9, 1, N'
Thịt bò thái lát mỏng vừa ăn. Ướp với 5gr tỏi băm, 5gr hành tím băm, 1 muỗng canh dầu hào và 1 muỗng cà phê hạt nêm trong 15 phút.', N'Images/thitboxaodauhalan1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (10, 1, N'Bắc nồi nóng, trụng sơ 300gr sườn non để khử mùi hôi và bụi bẩn.', N'Images/canhsuonraucu1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (11, 1, N'Cho 250gr thịt ba chỉ cắt nhỏ vừa ăn vào xào săn cùng một ít dầu ăn. Tiếp đó đổ 50ml nước hàng vào, cùng 1.5 muỗng canh nước mắm, 1/2 muỗng canh đường, 2 muỗng cà phê hạt nêm và 1/2 muỗng cà phê tiêu xay. Kho đến khi thịt có màu đẹp mắt.', N'Images/thitkhotrungcut1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (12, 1, N'- Tôm sú: rửa sạch, cắt bỏ phần vỏ cứng ở đầu và làm sạch phần chất bẩn màu đen. Sau đó, bạn dùng tay hoặc kẹp rút bỏ phần chỉ đen ở sống lưng tôm. 
- Tỏi, ớt sừng và ớt chỉ thiên cắt nhỏ rồi xay nhuyễn, tùy vào khẩu vị cay mà bạn thêm bớt lượng ớt cho phù hợp. Nếu không có máy xay bạn băm nhuyễn cũng được.
- Xiên tre bạn ngâm vào nước lạnh, khi nướng tôm bằng bếp xiên sẽ không bị cháy.
', N'Images/tomsunuongmuoiot1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (13, 1, N'Rửa sạch lá lốt, để ráo nước. Nhặt lấy những chiếc lá lốt to bằng nhau để riêng lát cuốn thịt. Đem cắt nhỏ và băm nhuyễn những lá lốt nhỏ và non còn lại để trộn cùng thịt.', N'Images/bocuonlalotchien1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (14, 1, N'Thịt gà sau khi ướp, lăn qua chén bột năng, tiếp theo đun nóng dầu ăn thả gà vào chiên vàng đều hai mặt.', N'Images/gasotcam1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (15, 1, N'Ngâm 100gr sườn non chay vào nước cho nở mềm rồi vắt ráo nước, thái thánh miếng vừa ăn.', N'Images/suonchaychiensaot1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (16, 1, N'Để làm bánh xèo đầu tiên chúng ta chuẩn bị phần nhân gồm 300gr tôm sú và 300gr thịt ba chỉ. Tôm sú cắt bỏ đầu và đuôi, bỏ phần chân rồi xẻ dọc thân ra làm đôi. Thịt ba chỉ thái thành miếng mỏng. Bắc lên bếp 1 chiếc chảo nóng, cho vào 2 muỗng canh dầu ăn sau đó thêm 15gr hành tím thái lát vào phi thơm. Tiếp theo cho tôm và thịt ba chỉ đã sơ chế vào, nêm 1 muỗng canh hạt nêm và 1/2 muỗng cà phê tiêu, xào đều tay cho thịt ba chỉ chín săn lại và tôm chín đỏ là được.', N'Images/banhxeocotduatomthit1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (17, 1, N'Phần sốt: Bắc chảo cho 50gr đường thốt nốt nấu tan, rồi cho thêm 30ml nước, 2 muỗng canh nước mắm, 2 muỗng canh nước cốt me, nấu trong 10 phút ở lửa nhỏ cho đến sốt sệt lại.', N'Images/padthai1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (18, 1, N'Chuối xanh lột vỏ rồi ngâm ngay vào tô nước có pha 1/2 quả chanh và 1 muỗng cà phê muối trong 10 phút để chuối ra bớt mủ và giữ được màu trắng.', N'Images/snackchuoichienme1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (19, 1, N'Đùi gà rửa sạch, thấm khô. Khoai lang gọt vỏ, rửa sạch, cắt que vừa ăn. Ướp gà với 1 muỗng cà phê muối, 1 muỗng cà phê tiêu, 2 muỗng canh mật ong, 1 muỗng cà phê dầu hào, 1 muỗng cà phê hạt nêm trong 10 phút.', N'Images/duiganuongkhoailang1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (20, 1, N'Bắc chảo lên bếp rồi phi thơm 15gr hành tím băm, cho 200gr thịt heo xay và 200gr thịt bò xay vào xào chín. Cho vào thịt 50gr củ sắn, 50gr cà rốt, 50gr nấm mèo đã băm nhỏ, 20gr hành lá cắt nhuyễn. Nêm vào thịt 1 muỗng canh đường, 1/2 muỗng canh hạt nêm, 1/2 muỗng canh tiêu, 1 muỗng canh nước mắm, xào chín đều.', N'Images/banhmihapnhanthitbam1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (21, 1, N'Mực ống sơ chế, rửa sạch với chút rượu trắng để bớt tanh, sau đó khứa vảy rồng rồi cắt thành miếng vừa ăn. Trụng nhanh mực qua nước sôi rồi để ráo. Ướp thêm vào 1 muỗng cà phê hạt nêm, trộn đều để ngấm gia vị 10 phút.', N'Images/mucxaosate1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (22, 1, N'Cho 2 viên phô mai con bò cười vào chén cùng với 300ml sữa tươi không đường, dùng phới lồng khuấy đều.', N'Images/miysodiepsotphomai1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (23, 1, N'Rửa sạch 1kg mực lá với 30gr gừng và 100ml rượu trắng để khử mùi tanh. Sau đó để ráo, thấm khô mực. Phần râu mực cắt thành hạt lựu.', N'Images/chamuc1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (24, 1, N'Xé sợi nhỏ thanh cua. Đánh tan 2 quả trứng gà cùng 1 muỗng cà phê hạt nêm. Sau đó trộn đều với thanh cua. Tráng đều ít dầu ăn trong chảo, cho chén trứng vào, dàn đều. Chiên lửa vừa, đậy nắp vung, đợi ít phút cho trứng chiên thanh cua chín là được.', N'Images/trungchienthanhcuasotnam1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (25, 1, N'Thịt ba chỉ cắt miếng vừa ăn, tiếp theo ướp thịt với 1 muỗng canh tỏi băm, 2 muỗng canh dầu hào, 1 muỗng canh hạt nêm, trộn đều cho thịt ngấm gia vị. Sau đó ít dầu ăn vào chảo, áp chảo cho vàng hai mặt miếng thịt.', N'Images/comkimchithitbachi1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (26, 1, N'Đầu tiên rửa sạch thịt gà phi lê rồi đem xay nhuyễn, cho vào tô lớn thêm 150gr hành tây đã xắt hạt lựu, 2 lòng đỏ trứng gà, 10 gr bột khoai tây, nêm thêm 1 muỗng hạt nêm, 1/2 muỗng tiêu. Sau đó trộn đều nguyên liệu, dùng muỗng quết để tạo độ dai cho thịt.', N'Images/gaviensotcachua1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (27, 1, N'Để thực hiện món bơ hạnh nhân này bạn cần chuẩn bị 1kg hạnh nhân không vỏ, 1 chiếc cối xay thực phẩm và 1 chiếc chảo không dính. Để đảm bảo chất lượng của bơ thì bạn phải chọn mua hạnh nhân ở nơi uy tín, lựa những hạt to, không bị mốc và không quá nhăn. Khi dùng thử bạn sẽ cảm nhận được mùi vị thơm ngon. Đầu tiên hâm nóng chảo trên lửa vừa, rang hạnh nhân và đảo đều 1 phút đến khi chín thơm. Ngoài cách rang bạn có thể nướng hạnh nhân ở nhiệt độ 178°C trong vòng 8 phút. Sau khi hạnh nhân đã được rang để nguội một chút.', N'Images/bohanhnhanhuuco1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (28, 1, N'Cách làm củ kiệu ngâm: Rửa thật sạch củ kiệu. Hoà 30g muối với nước đun sôi để nguội, thả củ kiệu đã rửa sạch vào ngâm trong nước muối 1 đêm để củ kiệu tiết hết mùi hăng và khử sạch các chất bẩn còn bám trên củ kiệu. Sau khi ngâm, các bạn vớt kiệu ra, rửa thật sạch và để ráo nước. Rồi cắt phần rễ và đuôi, bạn chú ý không cắt phần đầu phạm vào trong nếu không kiệu sẽ ngấm nước mà mất đi độ giòn ngon của kiệu.', N'Images/cukieungamngaytet1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (29, 1, N'Mực ống 1kg làm sạch ruột, rồi để ráo. Trong khi đó bạn chuẩn bị các gia vị ướp: 10gr tỏi băm, 10gr hành tím băm, 5gr ớt hiểm, 10gr ớt sa tế. Cho mực vào tô trộn đều cùng các gia vị tỏi băm, hành tím băm, ớt hiểm, ớt sa tế và ướp 15 phút.', N'Images/mucnuongdahapbia1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (30, 1, N'
Ướp 200gr thịt bò nguyên miếng với 20gr gia vị hoàn chỉnh Barona - thịt nướng ngũ vị. Sau đó cho vào lò nướng chín ở 200 độ C trong 15 phút. Sau đó cắt bò thành những lát xéo vừa ăn.', N'Images/saladphobonuongnguvi1.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (1, 2, N'- Bạn nấu sôi nước hầm xương bò trong nồi áp suất khoảng 40 phút sau đó cho lần lượt các gia vị như hành tây, mía, gừng, rễ mùi, túi dụng hỗn hợp các loại gia vị vào nước dùng rồi hầm trong 3 tiếng. Chú ý điều chỉnh nêm nếm gia vị sao cho vừa ăn.', N'Images/phobo2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (2, 2, N'Pha loãng 3 thìa cafe mắm ruốc với 5 thìa cafe nước lọc cho thật đều. Tiếp đến, bạn bỏ phần thịt giò heo, bắp bò, nạm bò và gân bò vào ướp với mắm muối tiêu theo một lượng vừa phải. Cuối cùng, bạn đổ phần nước mắm ruốc đã hoà loãng vào ướp cùng trong khoảng nửa tiếng.
		Sả cây bạn bóc đi lớp bẹ già, úa bên ngoài, rửa sạch rồi chẻ đôi cây sả. Về phần gừng, bạn gọt vỏ rồi tiếp đến cắt lát mỏng hoặc thái chỉ. Xong xuôi, bạn xếp phần gừng và sả này xuống dưới đáy nồi sẽ dùng để triển khai chín phần thịt.
		Cho phầnthịt bò bắp gân bò và nạm bò vào làm chín trước. Khi nồi thịt đã sôi được chừng 10 phút thì bạn cho tiếp phần giò heo và móng heo vào ninh cùng cho tới khi phần các nguyên vật liệu này mềm thì tắt bếp và vớt ra để nguội.', N'Images/bunbohue2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (3, 2, N'Cho thịt bò vào áp chảo cùng dầu olive khoảng 2-3 phút mỗi mặt, nên để lửa vừa để thịt được chín từ từ. Khi thịt chín đều các mặt, ta tắt bếp rồi thêm miếng phô mai trên mặt để phô mai tan chảy.', N'Images/burger2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (4, 2, N'Đun nóng nhẹ trên bếp 200ml sữa tươi không đường, 200ml sữa đặc, 100ml kem béo và 30gr đường. Khuấy đều cho tan rồi cho hỗn hợp sữa đã đun vào 300ml nước trà đen đã lọc để tạo thành hỗn hợp trà sữa.', N'Images/flan2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (5, 2, N'Tiếp đó, dùng nĩa xăm xung quanh miếng da, rắc ít muối lên mặt ngoài da heo và chà xát rồi cắt thành miếng nhỏ vừa ăn. Sau đó, trải đều da heo lên trên khay nướng và cho vào lò nướng 30 phút để nhiệt độ 160 độ, nướng đến khi miếng da có độ khô cứng.', N'Images/daheo2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (6, 2, N'Tiếp đến bạn chuẩn bị cắt viền sandwich, dùng chài cán bột để cán mỏng bánh. Sau khi cán xong, bạn quết sữa đặc hoặc sữa tươi quanh 3 mép bánh. Sau đó gấp đôi bánh lại và dùng nĩa ấn cố định 2 mép bánh lại, bạn nhớ ấn cả 2 bên mặt. Sữa giúp 2 mép bánh dính lại với nhau hơn. Bỏ qua bước này thành phẩm bánh sẽ không dẻ mịn và khi bơm hỗn hợp sữa chua phô mai vào vỏ bánh xốp sẽ không giữ được nhân bên trong. Bạn lưu ý nhé.', N'Images/sandwich2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (7, 2, N'Tiếp đến, dùng bao tay nilong, thoa một chút dầu ăn lên bao tay rồi vo và nặn viên tôm thành viên tròn. Để lên 1 cái đĩa có thoa 1 chút dầu ăn. Nhúng viên tôm qua bột chiên giòn, đến trứng gà, và cuối cùng là bột chiên xù. Phần đuôi tôm cắm vào viên tôm cho đẹp.', N'Images/tomvien2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (8, 2, N'Cho dầu vào chảo và lấy giấy ăn lau qua chảo dầu, cho khoai lang vào, lật mặt khoai đến khi khoai vàng giòn đều thì cho ra.', N'Images/bimbimkhoailang2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (9, 2, N'Trụng sơ 50gr đậu Hà Lan trong 2 phút để giúp đậu vẫn giữa được màu xanh khi xào và nhanh chín hơn.', N'Images/thitboxaodauhalan2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (10, 2, N'
Cho vào nồi Tchef Casserole 2 lít nước, đậy nắp nồi, nấu đến khi sôi thì cho sườn vào hầm trong 10 phút cùng 1 muỗng cà phê muối.', N'Images/canhsuonraucu2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (11, 2, N'
Thả 10 quả trứng cút đã luộc và bóc vỏ vào, nhẹ nhàng đảo đều tay. Kho thêm 10 phút thì tắt bếp.', N'Images/thitkhotrungcut2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (12, 2, N'- Làm hỗn hợp muối ướp: Cho tỏi và ớt băm nhuyễn vào chén trộn đều, sau đó bạn thêm 1 muỗng cà phê muối hạt, ½ muỗng cà phê đường, ½ muỗng cà phê tiêu và 2 muỗng cà phê dầu ăn vào trộn đều. Tiếp đó, cho thêm 1 muỗng cà phê nước cốt chanh vào hỗn hợp muối, trộn đều để các gia vị hòa quyện vào nhau.
- Ướp tôm: Cho tôm vào một cái tô, đổ hỗn hợp muối ớt vào ướp tôm. Bạn có thể đeo bao tay nilong rồi dùng tay chà xát hỗn hợp muối ớt vào từng con tôm để tôm thấm đều gia vị. Ướp tôm trong khoảng 30 phút. Sau 30 phút, bạn dùng xiên tre đã được ngâm vào nước đá, xiên vào từng con tôm từ đuôi lên đến đầu để khi nướng xong tôm sẽ thẳng đẹp. Làm lần lượt cho đến hết, mỗi xiên là một con tôm. (nếu nướng bằng lò nướng bạn có thể bỏ qua bước này).
', N'Images/tomsunuongmuoiot2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (13, 2, N'Làm nhân bò cuốn lá lốt chiên: Cho thịt bò băm, thịt heo băm vào âu, thêm hành tím băm, lá lốt băm nhỏ. Gia vị gồm bột ngọt, bột canh, tiêu bắc. Tất cả các nguyên liệu trộn đều với nhau, rồi để tầm 5 phút cho ngấm. Đặt từng chiếc lá lốt đã rửa sạch, lau khô lên chiếc khay to, cho từng thìa thịt lên trên rồi gói lá lốt lại. Cứ làm lần lượt cho đến khi hết lá lốt và thịt.', N'Images/bocuonlalotchien2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (14, 2, N'Thịt đùi gà rửa sạch, lóc bỏ da, xương, cắt thành từng lát vừa ăn. Thêm vào chén thịt 1 muỗng cà phê muối, tiêu, trộn đều, ướp khoảng 20-30 phút. Hành lá cắt nhỏ.', N'Images/gasotcam2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (15, 2, N'Đem đi chiên vàng đều 2 mặt, rồi vớt ra để ráo dầu.', N'Images/suonchaychiensaot2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (16, 2, N'Tiếp theo đến bước pha bột: đổ ra tô lớn 1 gói bột cốt dừa Taky (500gr), đổ gói bột cốt dừa nhỏ sẵn có trong bịch bột vào tô, thêm vào 1.3 lít nước lọc rồi khuấy lên thật đều. Lúc này bạn sẽ thấy những vụn hành sấy nở ra, bột nghệ trộn lẫn trong bột cũng hòa tan vào nước, chuyển hỗn hợp sang màu vàng nhạt.', N'Images/banhxeocotduatomthit2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (17, 2, N'300gr tôm bóc vỏ áp chảo vàng đều, vớt ra để riêng. ', N'Images/padthai2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (18, 2, N'Sau đó, vớt chuối ra lau khô, rồi bào miếng không quá dày cũng không quá mỏng. Sau khi bào, thả lại miếng chuối vào tô nước muối pha 1/2 quả chanh, rửa sạch lần nữa. Sau đó cho các miếng chuối lên mẹt phơi khô trước gió khoảng 1 tiếng.', N'Images/snackchuoichienme2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (19, 2, N'Làm nóng nồi chiên không dầu ở chế độ Preheat. Sau đó, cho gà và khoai vào nồi, dùng cọ phết mật ong lên khoai để khoai không bị khô và chỉnh chế độ nướng gà ở nhiệt độ 160 độ C trong 10 phút.', N'Images/duiganuongkhoailang2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (20, 2, N'Cắt bánh mì thành từng lát vừa ăn, sau đó xịt nước 2 mặt bánh mì. Bắc nồi lên bếp, xếp bánh mì vào nồi, đem hấp trong khoảng 5 phút.', N'Images/banhmihapnhanthitbam2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (21, 2, N'Cho dầu vào chảo cho nóng, phi thơm 1 muỗng canh tỏi băm, 1 muỗng canh hành tím băm, 1 muỗng canh ớt băm, trút mực vào xào với lửa lớn.', N'Images/mucxaosate2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (22, 2, N'Luộc 80gr mì Ý với nước sôi và 1 muỗng cà phê muối trong 8 phút. Gắp mì Ý ra dĩa để riêng.', N'Images/miysodiepsotphomai2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (23, 2, N'Cho mực nguyên con vào cối giã nhuyễn bằng chày. Khi mực đã nhuyễn cho vào 15gr tỏi băm, 15gr hành tím băm, 1 muỗng canh nước mắm, 1 muỗng cà phê tiêu rồi tiếp tục giã nguyễn.', N'Images/chamuc2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (24, 2, N'Ngâm nấm đông cô vào nước cho nở, rửa sạch, thái sợi nhỏ. Đun nóng 1 muỗng canh dầu mè, phi thơm tỏi băm rồi thêm 1 muỗng canh dầu hào. Khi hỗn hợp sôi thì đổ vào 100ml nước, đun sôi, hạ nhỏ lửa. Hòa tan bột bắp với ít nước lọc, đổ từ từ nước bột bắp vào hỗn hợp đang đun, khuấy đều nhẹ nhàng. Sau đó thêm nấm đông cô vào, đợi hỗn hợp sôi đều ít phút thì tắt bếp.', N'Images/trungchienthanhcuasotnam2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (25, 2, N'Phi thơm 1 muỗng canh hành tím băm, cho 200gr kim chi đã cắt nhỏ vào xào trong 2 phút. Sau đó cho vào 1 muỗng canh hạt nêm, 1,5 muỗng canh đường xào thêm 2 phút nữa.', N'Images/comkimchithitbachi2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (26, 2, N'Kế tiếp vò viên thịt gà đã quết thành từng viên vừa ăn. Cho dầu vào chảo, đợi dầu nóng thả từng viên gà vào chiên vàng đều mặt.', N'Images/gaviensotcachua2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (27, 2, N'Khi các bạn chuẩn bị xay nhớ để ý nếu máy xay thực phẩm của mình có công suất yếu thì có thể cho vào 1 ít mật ong đối với bạn dùng ngọt hoặc dầu olive, dầu đậu phộng,.. để hạnh nhân xay được mịn hơn không bị đặc lại mà vẫn giữ vị ngon. Bơ sau khi xay xong sẽ rất mịn và dẻo quánh, ngoài ra còn có hương thơm rất đặc trưng của hạnh nhân. Bơ hạnh nhân rất tiện dùng như dùng chung với các loại bánh mì nướng hay để làm bánh, ăn kèm trái cây tươi hoặc khô, ngũ cốc, sữa chua, sinh tố, hoặc làm những món ăn mặn… cũng rất ngon. Và đặc biệt món này siêu phù hợp với các bạn tập gym, muốn tăng cơ giảm mỡ nhé.', N'Images/bohanhnhanhuuco2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (28, 2, N'Cách làm kiệu ngâm giòn: Pha nước và 50gr phèn chua rồi cho kiệu đã gọt sạch rễ vào ngâm 2 tiếng sau rồi rửa lại lần nữa cho sạch. Rồi đem kiệu phơi 2-3 nắng gắt cho đến khi kiệu khô lại, sơ chế lại kiệu thêm lần nữa, lột bớt màng kiệu và phần rễ khô còn sót lại.', N'Images/cukieungamngaytet2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (29, 2, N'Sau khi mực thấm gia vị, gắp đá nóng gắp bỏ vào nồi. Đổ mực đã ướp vào ngay sau khi gắp đá bỏ vào nồi để giữ được nhiệt độ cao nhất. Đổ 1 lon bia vào để nước đậm vị cho mực hơn. Đậy nắp lại và đợi, sau 10 phút mở nắp rồi gắp mực nóng hổi ra dĩa.', N'Images/mucnuongdahapbia2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (30, 2, N'Bắc chảo nhỏ lên bếp, cho vào chảo 50gr gia vị hoàn chỉnh Barona - thịt nướng ngũ vị và 20ml nước lọc. Đảo đều cho sốt sôi lên thì tắt bếp.', N'Images/saladphobonuongnguvi2.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (1, 3, N'- Do thịt bò có hương vị đặc trưng nên sử dụng hành gừng nướng trong nước dùng rất quan trọng để át mùi hôi của bò. Khi rửa thịt bạn nên dùng hành gừng nướng giã nhuyễn chà sát lên bề mặt của thịt rồi rửa lại với nước sạch.
- Thịt bò bạn thái mỏng theo thớ ngang hoặc để thịt mềm bạn dùng chày giã sơ qua thịt bò trước khi cắt. Để làm phở bò tái bạn trần qua thịt bò với nước sôi rồi để riêng.
- Khi ăn bạn trần phở qua nước sôi rồi xếp vào bát sau đó cho thịt bò tái đã trần sơ qua, các loại rau thơm ở trên. Rồi chan nước dùng để làm chín thịt bò.
- Khi ăn bạn ăn cùng quẩy, rau sống, giá, chanh, ớt, tương ớt…sẽ rất ngon.', N'Images/phobo3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (2, 3, N'Phần xương ninh làm nước dùng này bạn có thể thực hiện đồng thời cùng lúc với việc nấu thịt để tiết kiệm trong khoảng thời gian Ninh xương kỹ trong khoảng 1 tiếng xong bạn cho chung phần nước luộc thịt đã sẵn có đó vào hoà cùng.
		Đun sôi phần nước này, tiếp đến bạn nêm phần nước mắm, muối,hạt nêm đường và mắm ruốc cho đủ ăn. Để nước dùng có màuưa nhìn bạn phi thơm phần tỏi băm với 2 thìa cafe sa tế và mắm chưng rồi trút vào nồi nước dùng.', N'Images/bunbohue3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (3, 3, N'Một thành phần cũng rất đặc biệt để góp phần tạo nên độ ngon của chiếc burger đó chính là hành tây caramel. Cách làm cũng rất đơn giản, cho vào chảo 3gr bơ lạt, cho 100gr hành tây (đã cắt dọc) đảo đều, nêm thêm 3gr muối và 10gr đường rồi đảo nhẹ tay đến khi hành ngả màu vàng nâu đẹp mắt thì tắt bếp.', N'Images/burger3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (4, 3, N'Cho vào tô 6 quả trứng gà và 4 lòng đỏ trứng, khuấy tan nhẹ để tránh tạo bọt khí. Cho hỗn hợp trà sữa vào phần trứng, khuấy đều cho hòa quyện rồi đem lọc qua rây nhiều lần để phần flan được mịn nhất.', N'Images/flan3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (5, 3, N'Cho dầu vào 1/2 chảo dầu, cho 10gr lá chanh vào chiên sơ rồi vớt ra. Sau đó, cho da heo đã khô vào chiên da chiên phồng rồi vớt ra.', N'Images/daheo3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (6, 3, N'Sau khi gấp và ấn mép bánh thành hình dạng chiếc túi, bạn từ từ bơm hỗn hợp sữa chua phô mai đã để đông lúc nãy vào bánh, cuối cùng dùng nĩa ấn cố định mép bánh còn lại là đã hoàn tất chiếc bánh sandwich sữa chua nhỏ xinh ngon miệng rồi. Bạn nhớ cắt lại các mép bánh cho đẹp mắt. Bạn có thể bảo quản bánh trong tủ lạnh, nhưng nhớ bọc bánh bằng lớp màng thực phẩm nhé. Không là lớp bánh sandwich sẽ bị khô và mất ngon nhé.', N'Images/sandwich3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (7, 3, N'Cho dầu vào chảo, thử dầu nóng già thì cho viên tôm vào. Để lửa vừa, chiên đều tôm cho vàng đều là được.', N'Images/tomvien3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (8, 3, N'Các bạn lưu ý để khoai thật nguội thì ăn lúc đó mới giòn tan.Chúc các bạn thành công!', N'Images/bimbimkhoailang3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (9, 3, N'Bắc chảo Tchef Fry Pan, quẹt một lớp dầu mỏng rồi phi thơm 5gr tỏi băm. Sau đó cho thịt bò vào xào sơ rồi trút ra đĩa.', N'Images/thitboxaodauhalan3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (10, 3, N'
Tiếp theo cho khoai tây đã cắt miếng vừa ăn và hạt sen vào hầm cùng trong 10 phút rồi nêm với 1 muỗng canh hạt nêm, 1/2 muỗng canh đường. Cuối cùng cho cà rốt vào nấu với lửa vừa đến khi các loại củ quả chín mềm là được.', N'Images/canhsuonraucu3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (11, 3, N'Món thịt kho trứng cút là món ăn rất ngon và đưa cơm, đặc biệt vào những ngày Tết. Cùng Tupperware học cách nấu món này để cả gia đình quây quần thưởng thức bạn nhé.', N'Images/thitkhotrungcut3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (12, 3, N'- Nướng tôm bằng lò nướng: Bạn có thể bỏ qua bước xiên tôm. Xếp tôm lên khay có lót sẵn giấy nướng, cho vào lò nướng ở nhiệt độ 180 độ C trong khoảng 10 – 15 phút cho đến khi tôm chín đỏ là được.', N'Images/tomsunuongmuoiot3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (13, 3, N'Bắc chảo lên bếp, thêm dầu ăn, đợi đầy nóng già thì cho chả vào. Để lửa nhỏ cho chả được chín đều. Khi 2 mặt vàng đều thì gắp ra giấy thấm dầu.', N'Images/bocuonlalotchien3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (14, 3, N'Gà sau khi chiên, vớt ra đĩa có lót giấy thấm dầu ăn. Tiếp tục đun nóng 2 muỗng cà phê dầu ăn ở chảo, phi hành tím băm, tỏi băm thơm cho thịt gà vào đảo khoảng 3-5 phút, rưới vào 1 muỗng cà phê dầu hào, 1/2 muỗng cà phê đường.', N'Images/gasotcam3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (15, 3, N'Cho 1 canh dầu ăn vào chảo đun nóng, cho 1 muỗng canh hành tím băm, 50gr sả băm vào phi thơm. cho thêm 30ml nước lọc, 1.5 muỗng canh nước mắm, 1 muỗng canh tương ớt, 1 muỗng cà phê hạt nêm, 1.5 muỗng canh đường, dùng đũa khuấy đều cho hôn hợp hơi sệt. Rồi trút phần sườn non chay đã chiên vàng vào và đảo đều cho phần hỗn hợp áo đều miếng sườn.', N'Images/suonchaychiensaot3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (16, 3, N'Đến công đoạn tráng bánh xèo: bắc chảo lên bếp, để chảo thật nóng rồi phết 1 lớp mỏng dầu ăn vào trong lòng chảo. Múc 70gr bột bánh xèo vào, nhanh tay tráng cho bột bánh trải đều khắp lòng chảo thành 1 lớp bánh xèo mỏng (bánh xèo tráng càng mỏng thì càng giòn). Tiếp đó bạn rưới vào lòng bánh xèo 1 muỗng canh dầu ăn rồi tráng cho dầu áo đều vào lòng bánh.', N'Images/banhxeocotduatomthit3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (17, 3, N'Cho tiếp 30gr tôm khô xay nhuyễn, 20gr hành tím cắt nhỏ, 20gr tỏi cắt nhỏ, 50gr củ cải muối, 1 muỗng cà phê ớt bột rồi xào trong 5 phút.', N'Images/padthai3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (18, 3, N'Đem chuối đã phơi khô vào một tô lớn, trộn với 20gr gừng băm, 30gr mè rang, 30gr bột mì, 30gr đường. Tiến hành xóc đều nhẹ nhàng tránh làm chuối bị nát.', N'Images/snackchuoichienme3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (19, 3, N'Sau đó, mở lò ra, lật mặt thịt gà lại, phết dầu hào lên gà và nướng thêm 5 phút ở nhiệt độ 160 độ C. Tiếp đến, gắp khoai ra ngoài đĩa, trở mặt thịt một lần nữa rồi nướng ở nhiệt độ 180 độ trong 5 phút để cho phần da của thịt có màu vàng óng đẹp mắt là hoàn thành.', N'Images/duiganuongkhoailang3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (20, 3, N'Làm mỡ hành: 30gr hành lá cắt nhỏ cho vào chén thêm 1/2 muỗng cà phê muối, 1 muỗng cà phê đường, cho dầu nấu nóng già vào chén hành rồi trộn đều.', N'Images/banhmihapnhanthitbam3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (21, 3, N'
Nêm vào mực 1 muỗng canh nước mắm, 1 muỗng canh dầu hào, 1 muỗng canh sa tế, 1 muỗng canh đường, đảo nhanh tay và đều.', N'Images/mucxaosate3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (22, 3, N'Làm nóng dầu ăn rồi cho 500gr cồi sò điệp vào áp chảo vàng đều 2 mặt để ra dĩa riêng.', N'Images/miysodiepsotphomai3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (23, 3, N'
Cho mực đã giã ra tô trộn cùng râu mực cắt hạt lựu. Sau đó cho mực vào ngăn đông tủ lạnh 30 phút. Sau đó dùng bao tay ni lông xoa chút dầu ăn rồi nặn chả tròn bẹt theo lượng đều nhau.', N'Images/chamuc3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (24, 3, N'Múc cơm ra chén, phủ lớp trứng chiên thanh cua lên trên. Rưới đều hỗn hợp sốt nấm đông cô lên, rắc thêm ít hành lá thái nhỏ nữa là có thể thưởng thức.', N'Images/trungchienthanhcuasotnam3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (25, 3, N'Cho cơm trắng vào tô, xếp thịt ba chỉ xung quanh, cho thêm kim chi, 1 lòng đỏ trứng đã chần sơ, rắc thêm một ít mè rang, rưới thêm nước sốt kim chi là đã có được một món ăn ngon cho cả gia đình.', N'Images/comkimchithitbachi3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (26, 3, N'Tiếp theo, cà chua đem bỏ hạt, xắt hạt lựu. Cho một ít dầu ăn vào chảo, trút cà chua vào xào trong vòng 2 phút, cho thêm 50 ml nước lọc, 1 muỗng hạt nêm,1.5 muỗng đường, 1.5 muỗng dầu hào. Đảo đều cho tới khi nước sốt sệt lại. Thả gà viên đã chiên vàng vào nấu thêm 2 phút nữa.', N'Images/gaviensotcachua3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (27, 3, N'Mình xay mịn bơ hạnh nhân như này rồi cho vào lọ thủy tinh để bảo quản trong tủ mát 2 đến 3 tháng. Bơ hạnh nhân là 1 trong những loại bơ rất tốt cho sức khỏe vì giúp no lâu, giàu năng lượng. Như bạn thấy đấy, bơ hạnh nhân có thể kết hợp với rất nhiều món như ăn vặt với hoa quả, cho vào sinh tố hoặc ăn kèm bánh mì vào buổi sáng và thậm chí dùng làm bánh rất là hay ho.', N'Images/bohanhnhanhuuco3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (28, 3, N'Cách làm củ kiệu ngâm đường: Xếp lần lượt 1 lớp đường - 1 lớp kiệu cho đến hết 300gr đường và kiệu (trên cùng là lớp đường). Đậy nắp lại ngâm củ kiệu từ 10 -14 ngày. Đây là cách làm kiệu không hăng, chua tự nhiên, vừa giúp kiệu giòn, có màu trong lại vừa để được lâu mà không sợ kiệu bị chua nhiều.', N'Images/cukieungamngaytet3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (29, 3, N'Mực nướng đá hấp bia là món ăn có sức hấp dẫn, bởi mùi hương của bia hòa quyện cùng mực, kèm theo màu sắc bắt mắt. Mực được nướng trên đá sẽ giữ được nước ngọt bên trong nhưng vẫn có đồ giòn tươi. Đây sẽ là món ngon để thực hiện vào những dịp cuối tuần hoặc chiêu đãi gia đình, bạn bè. Bạn nhớ lưu công thức lại để cùng Cooky thực hiện món mực nướng đá hấp bia nhé!', N'Images/mucnuongdahapbia3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (30, 3, N'
Phở gạo lứt trụng chín rồi cho ra đĩa. Xếp dưa leo, các loại rau thơm, cà rốt cùng giá xung quanh. Cho thịt bò lên mặt, rưới sốt rồi rắc hạt điều rang lên mặt. Vậy là món salad phở bò nướng ngũ vị đã hoàn thành rồi.', N'Images/saladphobonuongnguvi3.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (2, 4, N'Thịt bắp heo, bắp bò, nạm bò bạn đem thái thành các miếng mỏng. Phần gân bò bạn bổ thành các khúc nhỏ cho vừa ăn. Với phần móng giò, bạn dùng dao sắc và chặt thành các miếng mỏng.\nChuẩn bị kỹ (rửa sạch + ngâm muối loãng) phần rau sống và bày sẵn ra bát Bún bạn trụng qua nước sôi cho sạch hơn rồi cho vào bát tô. Xếp phầnthịt heo thịt bò và móng giò lên ở trên Tiếp đến, rắc phần hành, rau thơm thái nhỏ dại lên rồi chế nước dùng vào và thưởng thức.', N'Images/bunbohue4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (3, 4, N'Các nguyên liêu đã chuẩn bị xong, giờ đến công đoạn thành phẩm thôi. Bánh burger cắt làm đôi, phết sốt mayonnaise đều trong mặt bánh, phủ xà lách và cà chua cắt lát rồi cho miếng bò đã áp chảo lên tầng tiếp theo, thêm vài lát hành tây caramel trên đầu, phủ thêm một lớp tương cà trên mặt nữa là có ngay một chiếc burger tuyệt vời rồi!', N'Images/burger4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (4, 4, N'Làm Caramen: Cho 70gr đường và 50ml nước vào chảo đun trên bếp. Trong quá trình đun nhớ để yên không khuấy. Khi hỗn hợp bắt đầu chuyển sang màu vàng nhạt thì vắt nước cốt chanh vào, lắc nhẹ chảo để đường tan đều. Khi màu đường chuyển sang màu nâu cánh gián đẹp mắt thì tắt bếp. Cho phần caramen vào khuôn và để trong tủ đông khoảng 1 tiếng.', N'Images/flan4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (5, 4, N'Cho 1 muỗng canh dầu ăn vào chảo, phi thơm 30gr tỏi băm, 20gr ớt băm cho vàng. Sau đó để lửa nhỏ, cho 1 muỗng canh nước mắm, 1.5 muỗng canh đường, 1 muỗng canh tương ớt, 1 muỗng canh nước cốt chanh, khuấy đến khi tan hỗn hợp.', N'Images/daheo4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (7, 4, N'Cho tôm viên ra đĩa, ăn cùng tương ớt Chin-Su rất ngon. Chỉ với chút biến tấu bạn đã có món tôm viên củ sen hấp dẫn, giòn ngon cho cả nhà rồi.', N'Images/tomvien4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (9, 4, N'Cho đậu Hà Lan, bắp non vào xào đều, nêm với 1 muỗng cà phê hạt nêm rồi xào trong 3 phút. Sau đó cho thịt bò vào đảo đều đến khi thịt bò nóng thì tắt bếp.', N'Images/thitboxaodauhalan4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (10, 4, N'Như vậy là chỉ với 30 phút và 3 bước làm đơn giản, món canh sườn hầm rau củ đã hoàn thành rồi, thật đơn giản phải không nào. Món canh này sẽ giúp bữa cơm nhà bạn trở nên rực rỡ hơn với màu sắc của các loại rau củ và cung cấp đầy đủ chất dinh dưỡng nữa. Bạn còn chần chừ gì mà không nấu ngay thôi?', N'Images/canhsuonraucu4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (13, 4, N'Bò cuốn lá lốt chiên là món ăn phổ biến cực kỳ đưa cơm. Bò cuốn lá lốt chiên có thịt bò băm trộn đều với thịt heo băm và ít gia vị, được cuộn kín trong lá lốt rồi chiên nhỏ lửa tỏa hương thơm ngào ngạt, vị béo ngon hấp dẫn, ăn kèm với cơm hoặc bún đều rất ngon.', N'Images/bocuonlalotchien4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (14, 4, N'Cam rửa sạch, dùng dao bén hay đồ bào chuyên dụng, bào lấy một ít vỏ cam, lưu ý không bào đến phần cùi trắng vì sẽ bị đắng. Bổ quả cam, vắt lấy nước cam để ra ly, bỏ hạt (nếu có).', N'Images/gasotcam4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (15, 4, N'Tắt bếp, cho sườn ra dĩa rắc vào lắc ớt để món ăn bắt mắt hơn và dùng chung với cơm nóng và dưa leo ăn kèm.', N'Images/suonchaychiensaot4.jpg')
GO
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (16, 4, N'Tiếp theo rải đậu xanh hấp chính, giá đỗ và nhân tôm thịt xào vào giữa bánh, phết 1 lớp mỏng dầu ăn xung quanh viền, chiên lửa nhỏ thêm 10 phút để vỏ bánh thật giòn. Cuối cùng khi vỏ bánh đã giòn thì bạn gấp bánh lại và cho ra dĩa thưởng thức thôi.', N'Images/banhxeocotduatomthit4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (17, 4, N'Cho tiếp bánh phở đã ngâm, đậu hũ chiên, tôm đã áp chảo vào cùng phần sốt đã chuẩn bị vào xào đều tay. Sau đó, dùng xẻng gạt phần phở xào qua 1 bên, 1/2 chảo còn lại cho 1 muỗng canh dầu ăn rồi thêm 4 quả trứng gà vào đảo đều tay.', N'Images/padthai4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (18, 4, N'Bắc chảo lên bếp, để lửa lớn đến khi dầu sôi, sau đó giảm lửa vừa, cho chuối vào chiên ngập dầu. Cho từng mẻ chuối nhỏ vào chiên lần lượt, dùng đũa tách chuối ra trong lúc chiên để chuối không bị dính nhau. Chiên đến khi chuối vàng giòn thì lấy ra để trên giấy thấm dầu.', N'Images/snackchuoichienme4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (19, 4, N'Dọn món ra đĩa, rắc hành lá, tiêu lên trên và thưởng thức ngay. Cắn vào một miếng thịt bạn sẽ cảm nhận ngay phần da, thịt gà mềm béo, thơm ngon, không bị ngấy bởi dầu mỡ thừa, phần khoai lang mềm bùi khiến bạn càng ăn càng mê.', N'Images/duiganuongkhoailang4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (20, 4, N'Làm nước mắm chấm: Cho vào chén 2 muỗng canh đường, 1 muỗng canh nước ấm, 1 muỗng canh nước mắm, khuấy tan. Cho vào 1 muỗng canh tỏi băm và 1 muỗng canh ớt băm vào, khuấy tan đều, thêm đồ chua vào cho nước mắm vào có vị vừa ăn.', N'Images/banhmihapnhanthitbam4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (21, 4, N'Cho hành tây cắt múi cau vào đảo nhanh cho hành chín, sau đó cho hành lá cắt khúc vào tiếp tục đảo nhanh tay rồi tắt bếp.', N'Images/mucxaosate4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (22, 4, N'Cho 1 muỗng canh dầu ăn cùng 1 muỗng canh bột mì vào chảo, dùng sạn xào cho chín bột. Tiếp đó đổ hỗn hợp sữa phô mai vào chảo, đảo đều khoảng 2 phút đến khi sốt sệt lại.', N'Images/miysodiepsotphomai4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (23, 4, N'
Đun dầu sôi lăn tăn trong chảo sâu lòng, thả chả mực vào chiên. Khi chín tới, chả sẽ tự nổi lên trên mặt dầu, mặt trên chả còn trắng nhưng mặt dưới đã vàng, chỉ việc lật chả sang mặt kia cho vàng đều hai mặt là được', N'Images/chamuc4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (24, 4, N'
Món trứng chiên thanh cua sốt nấm nóng hổi, giàu dinh dưỡng, thích hợp cho các bữa sáng gia đình. Tùy vào khẩu vị mỗi người có thể chuẩn bị thêm nước tương rưới lên ăn kèm cho vừa miệng nhé.', N'Images/trungchienthanhcuasotnam4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (26, 4, N'
Trình bày món ăn ra dĩa, rắc thêm ít hành lá cắt nhỏ cho món ăn thêm phần hấp dẫn hơn. Gà viên sốt cà ăn cùng cơm nóng thì còn gì bằng, cùng vào bếp và thực hiện ngay món ăn này thôi!', N'Images/gaviensotcachua4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (28, 4, N'Củ kiệu ngâm đường 10 -14 ngày đã lên men và có thể thưởng thức. Vị củ kiệu ngâm chua ngọt, thơm giòn của kiệu chua ăn cùng với thịt kho hoặc kết hợp với trứng bách thảo tôm khô sẽ cực kì hấp dẫn.', N'Images/cukieungamngaytet4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (30, 4, N'Trộn đều phở cùng các loại rau củ và thịt bò rồi thưởng thức. Món salad phở bò nướng ngũ vị với hương vị đậm đà từ thịt bò mềm mọng ăn cùng phở gạo lứt và các loại rau củ thanh mát, đây sẽ là món ăn nhiều dinh dưỡng và tốt cho sức khoẻ. Đã có công thức rồi, bạn còn chờ gì nữa mà không vào bếp ngay để trổ tài nấu nướng của mình nào!', N'Images/saladphobonuongnguvi4.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (3, 5, N'Bày hamburger ra đĩa và thưởng thức. Bánh burger bò phô mai sốt mayonnaise đơn giản, nhanh chóng với hương vị béo ngậy, mềm tan và thơm lừng trong miệng khiến ai cũng mê mẩn không thôi. Vậy còn chờ gì mà không lưu lại công thức và làm ngay cho bữa sáng!', N'Images/burger5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (4, 5, N'Cho hỗn hợp flan vào khuôn, bọc giấy bạc trên mặt và nướng cách thủy 2 tiếng với nhiệt độ là 155 độ C. Phần nước sôi đổ vào các bạn nhớ đổ ngập 3/4 khuôn nhé để phần flan được nóng và chín đều.', N'Images/flan5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (5, 5, N'Rồi cho da heo đã chiên phồng và lá chanh chiên rồi đảo đều cho hỗn hợp sốt áo đều miếng da heo thì tắt bếp.', N'Images/daheo5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (9, 5, N'Khi ăn rắc thêm 1 ít tiêu và ngò. Vậy là chỉ với vài phút, bạn đã có thể hoàn thành xong một món ăn vô cùng hấp dẫn và đầy đủ chất dinh dưỡng rồi. Món này ăn nóng sẽ rất ngon đấy.', N'Images/thitboxaodauhalan5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (14, 5, N'Cho phần nước cam vào chảo, đun lửa nhỏ, tiếp tục đun khoảng 5-10 phút thì tắt bếp thêm hành lá cắt nhỏ và vỏ cam.', N'Images/gasotcam5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (16, 5, N'Làm nên linh hồn cho món bánh xèo bằng cách pha một chén nước mắm thật ngon gồm 20ml nước mắm, 30gr đường, 40ml nước lọc, 10ml nước cốt chanh, khuấy đều cho đường tan. Sau đó thêm 10gr tỏi băm, 10gr ớt băm, cà rốt và củ cải trắng bào sợi là hoàn tất.', N'Images/banhxeocotduatomthit5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (17, 5, N'Cuối cùng cho 50gr đậu phộng rang (giã nhỏ), giá sống, hẹ cắt khúc, tôm áp chảo vào xào thêm 2 phút, rồi tắt bếp.', N'Images/padthai5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (18, 5, N'Cuối cùng thì chúng ta cũng có một đĩa snack chuối vàng tươi, thơm lừng, cắn vào thì giòn tan với vị ngọt tự nhiên. Chuối chiên xong để nguội cho vào hộp kín bảo quản ở nơi thoáng mát dùng dần bạn nhé, có thể cho vào ngăn mát tủ lạnh để giữ độ khô và giòn lâu hơn!', N'Images/snackchuoichienme5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (20, 5, N'Cho phần thịt xào lên mặt bánh mì, rưới mỡ hành, rắc thêm hành phi lên mặt. Bánh mì hấp có thể ăn kèm các loại rau sống và nước mắm chua ngọt rất ngon, thích hợp cho bữa sáng hay những ngày bận rộn mà vẫn muốn có một bữa ăn ngon miệng.', N'Images/banhmihapnhanthitbam5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (21, 5, N'Trình bày món ăn ra dĩa, dùng kèm với bát cơm nóng thì ngon còn gì bằng.', N'Images/mucxaosate5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (22, 5, N'Cho sò điệp cùng với mì Ý vào chảo sốt, trộn đều. Cho mì Ý sò điệp sốt phô mai ra dĩa, rắc thịt xông khói lên trên.', N'Images/miysodiepsotphomai5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (23, 5, N'Chỉ vài bước với cách làm chả mực đơn giản này, cả nhà bạn sẽ có món ăn ngon và hấp dẫn để thưởng thức. Chả mực khi chín có màu vàng ruộm hấp dẫn, khi ăn thấy mực giòn sần sật, hòa quyện cùng gia vị thơm lừng. Đã có công thức rồi, bạn còn chờ gì nữa mà không vào bếp ngay để trổ tài nấu nướng của mình nào!', N'Images/chamuc5.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (4, 6, N'Chiếc bánh flan khổng lồ đã sẵn sàng trên đĩa, rưới một ít trân châu đường đen và đá nhuyễn là ta có thể thưởng thức ngay rồi nè! Hãy cảm nhận vị béo ngậy của chiếc bánh flan được hòa quyện cùng vị ngọt thơm của vị trà sữa, lại còn được kết hợp cùng trân châu đường đen dẻo dai, ngọt dịu, thật sự rất tuyệt vời. Công thức Cooky đã có sẵn, còn chờ gì mà không bắt tay vào làm ngay thôi!', N'Images/flan6.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (5, 6, N'Da heo chiên giòn tỏi ớt vẫn giữ được độ giòn rụm, cảm giác nhai như tan vào trong miệng. Trong đó, còn hòa quyện chút vị mằn mặn vừa phải, chút cay nồng từ ớt, cháy giòn thơm của tỏi. Đảm bảo kích thích vị giác của bạn trên từng miếng da heo luôn.', N'Images/daheo6.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (14, 6, N'Múc đùi gà sốt cam ra đĩa, rắc mè trắng rang lên trên. Dùng làm món mặn ăn với cơm.', N'Images/gasotcam6.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (16, 6, N'Dọn bánh xèo ra mâm cùng với nước mắm và thật nhiều rau rồi thưởng thức thôi nào. Bánh xèo với lớp vỏ ngoài giòn rụm béo vị nước cốt dừa, bọc lấy nhân tôm thịt cùng giá đỗ đậu xanh, giòn bùi mặn ngọt đủ vị, cuốn chung với các loại sau sống rồi chấm vào nước mắm chua ngọt, nghe thôi cũng đã thấy thèm lắm rồi. Vào những ngày trời mưa rả rích mà có dĩa bánh xèo cốt dừa tôm thịt để cả nhà quây quần bên nhau thì tuyệt vời biết mấy đúng không?', N'Images/banhxeocotduatomthit6.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (17, 6, N'Món Pad Thái thưởng thức ngon hơn khi vắt thêm chanh trộn đều, bạn có thể rắc thêm ớt bột để tùy chỉnh mức độ ăn cay của mình nhé.', N'Images/padthai6.jpg')
INSERT [dbo].[FoodCookingStep] ([IdFoodRecipes], [NumberStep], [Step], [ImageStep]) VALUES (22, 6, N'Trang trí món mì Ý sò điệp sốt phô mai với một ít tiêu xay và ngò tây cắt nhỏ, để món ăn thơm và đẹp mắt hơn. Món ăn này vừa ngon mà cách làm lại vừa nhanh chóng và đơn giản. Ngoài sò điệp, các bạn có thể dùng bất cứ loại hải sản nào mình thích để thay thế nha.', N'Images/miysodiepsotphomai6.jpg')
GO
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (1, N'Phở bò', N'Phở bò là món ăn phổ biến khắp các vùng miền với công thức chế biến khác nhau, nổi tiếng ngon nhất là ở Hà Nội và Nam Định. Hãy tham khảo ngay cách nấu phở bò gia truyền dưới đây để cả gia đình cùng thưởng thức hương vị thơm ngon đậm đà vừa đơn giản mà lại tiết kiệm.', N'- Thịt bò thăn: 500 gram
- Xương bò: 2 kg
- Hành tây: 200 gram
- Rễ cây ngò gai (rau mùi): 6 rễ
- Mía: 2 lóng (mỗi lóng dài khoảng 10 cm)
- Bánh phở: 500 gram
- Gia vị: Bột ngọt, mắm, muối, đường, tiêu, dầu ăn, tương ớt, tương đen, quế khô, hoa hồi, thảo quả, gừng tươi, hành tím, hạt mùi ...
- Các loại rau thơm, giá, ớt sừng, chanh, rau mùi, hành lá …', N'Images/phobo3.jpg', N'https://youtu.be/yJuQ4tS6O18')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (2, N'Bún bò Huế', N'Món bún bò Huế là một trong những món ăn đặc trưng của người miền Trung, sẽ thật tuyệt vời nếu bạn có thể tự tay làm những tô bún thơm ngon để cả nhà cùng thưởng thức vào dịp cuối tuần.', N'-Xương Ống heo 2 kí
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
-Chả lá Huế 20 cái', N'Images/bunbohue4.jpg', N'https://youtu.be/43uGYn0iyNw')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (3, N'Burger thịt bò phô mai', N'Bữa ăn sẽ thật tuyệt vời và tràn đầy năng lượng với chiếc bánh burger với nhân thịt bò đậm đà quyến rũ cùng lớp phô mai béo ngậy, bên dưới là lớp rau xanh cùng cà chua mọng nước quyện với sốt mayonnaise và tương cà hấp dẫn.', N'- Thịt bò xay sẵn: 300gr
- Tỏi băm: 5gr
- Muối, ớt bột, tiêu xay
- Lòng đỏ trứng gà: 1 quả', N'Images/burger5.jpg', N'https://youtu.be/3KQs3EqQ9SA')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (4, N'Bánh Flan trà sữa trân châu đường nâu', N'Bạn thích bánh flan, bạn cũng thích nhâm nhi trà sữa với trân châu đường nâu ngọt lịm. Vậy tại sao không kết hợp 2 món ăn hấp dẫn này lại với nhau để tạo thành món bánh flan trà sữa trân châu đường đen hấp dẫn. Nhà Cooky còn hướng dẫn các bạn làm món bánh flan này với size cỡ bự nữa đó nha, đảm bảo ăn hoài không hết luôn, thỏa mãn cơn thèm bánh flan lẫn trà sữa của các tín đồ mê ăn vặt nha!', N'- 20gr trà hoa trân số 09
- 20gr trà đen Phúc Long
- 200ml sữa tươi không đường
- 200ml sữa đặc
- 100ml kem béo
- 30gr đường
- 10 quả trứng gà', N'Images/flan5.jpg', N'https://youtu.be/YqgDpVxgA7E')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (5, N'Da heo chiên tỏi ớt', N'Da heo chiên tỏi ớt, món ăn vặt được nhiều người yêu thích. Da heo chiên vẫn giữ được độ giòn rụm, cảm giác nhai như tan vào trong miệng. Trong đó, còn hòa quyện chút vị mằn mặn vừa phải, chút cay nồng từ ớt, cháy giòn thơm của tỏi. Với hương vị nồng nàn, hấp dẫn, bạn hãy từ từ cản nhận độ giòn, xốp của từng miếng da heo đậm đà và thỏa mãn vị giác của mình.', N'- 400gr da heo
- 1 muỗng cà phê muối
- 5gr gừng lát', N'Images/daheo6.jpg', N'https://youtu.be/3vI7CNSyQEo')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (6, N'Bánh Sandwich sữa chua', N'Bánh Sandwich sữa chua nhỏ xinh, lớp nhân sữa chua thanh mát làm dịu nhẹ độ béo của phô mai, không quá ngấy ăn vào lại muốn ăn tiếp. Bánh ngon, thực hiện nhanh trong vòng 1 nốt nhạc, không cần phải nấu.', N'Phô mai, sữa chua, và sữa đặc', N'Images/sandwich3.jpg', N'https://youtu.be/N4Z2eSbC2JQ')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (7, N'Tôm viên củ sen chiên giòn', N'Một chút biến tấu với củ sen thanh ngọt và thịt tôm được bọc bởi một lớp bột giòn xù sẽ đem lại cảm giác thích thú ngay từ cái nhìn đầu tiên. Món tôm viên củ sen chiên giòn đã tạo nên sự kết hợp hài hòa giữa hải sản và củ sen tạo nên một phong cách ẩm thực mới mẻ lạ miệng cho gia đình bạn thưởng thức vào ngày cuối tuần đấy.', N'- 200gr tôm bóc vỏ.
- 50gr củ sen băm nhuyễn.
- 20gr hành lá cắt nhỏ. 
- 100gr giò sống
- 1/2 muỗng cà phê đường
- 1 muỗng cà phê hạt nêm
- 1/2 muỗng cà phê tiêu
- 1/2 muỗng cà phê ớt bột
- 1 muỗng cà phê dầu hào 
- 20gr bột bắp', N'Images/tomvien4.jpg', N'https://youtu.be/dSpo7o6Msw0')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (8, N'Bim bim khoai lang', N'Bim bim khoai lang là món ăn vặt được yêu thích bởi sự giòn tan của khoai lang mà vẫn giữ được hương vị ban đầu.', N'Khoai lang, dầu ăn', N'Images/bimbimkhoailang3.jpg', N'https://youtu.be/jwcjuhwX2AQ')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (9, N'Thịt bò xào đậu Hà Lan', N'Thịt bò xào đậu Hà Lan là một món ăn quen thuộc đối với mọi nhà nhưng với sự biến tấu, thêm vào một ít nguyên liệu và gia vị thân quen đã có thể biến món ăn này thành một phiên bản khác, thơm ngon hơn và đầy đủ chất dinh dưỡng hơn. Với sự hỗ trợ của chảo Tchef Fry Pan của Tupperwware sẽ giúp bạn rút ngắn thời gian nấu nướng nhưng vẫn giữ được vẹn nguyên hương vị của món ăn. ', N'- 300gr Thịt bò
- 50gr Đậu Hà Lan
- 50gr Bắp non
- 10gr Tỏi băm
- 5gr Hành tím băm
- 1 Muỗng canh Dầu hào
- 1/2 Muỗng cà phê Tiêu
- 2 Muỗng cà phê Hạt nêm', N'Images/thitboxaodauhalan.jpg', N'https://youtu.be/x8S482hfOfI')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (10, N'Canh sườn rau củ', N'Món canh sườn heo hầm cùng những loại rau củ thơm ngon, hấp dẫn lại cung cấp được đầy đủ những dưỡng chất thiết yếu sẽ giúp cho bữa cơm của gia đình bạn ấm áp và hấp dẫn hơn rất nhiều. Với nồi Tchef Casserole của Tupperwware món canh sườn heo hầm rau củ sẽ trở nên đơn giản hơn bao giờ hết, bạn đã sẵn sàng để thử chưa?', N'- 300gr Sườn non
- 100gr Khoai tây
- 100gr Hạt sen tươi
- 100gr Cà rốt
- 1 Muỗng canh Hạt nêm
- 1/2 Muỗng canh Muối
- 2 Lít Nước', N'Images/canhsuonraucu.jpg', N'https://youtu.be/x8S482hfOfI')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (11, N'Thịt kho trứng cút', N'Thịt kho trứng cút là món ăn tương đối dễ dàm, đơn giản nhưng lại là 1 món ăn ngon, phù hợp với bất kỳ mùa nào trong năm. Đặc biệt vào những ngày Tết mà có 1 nồi thịt kho trứng cút đậm đà, nóng hổi thì rất hao cơm. Hãy cùng Tupperware thực hiện món ngon này nhé!', N'- 250gr Thịt ba chỉ
- 50ml Nước hàng
- 10 Quả Trứng cút
- 1.5 Muỗng canh Nước mắm
- 1/2 Muỗng canh Đường trắng
- 2 Muỗng cà phê Hạt nêm
- 1/2 Muỗng cà phê Tiêu xay', N'Images/thitkhotrungcut.jpg', N'https://youtu.be/_fkbfcn24nM')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (12, N'Tôm sú nướng muối ớt', N'Tôm nướng muối ớt là một món ăn rất quen thuộc mỗi khi chúng ta nhắc đến các món ăn về tôm, một chút cay của ớt, một chút mằn mặn của muối biển hòa cùng thịt tôm giòn ngọt, tất cả sẽ hòa quyện với nhau mang đến cho bạn một trải nghiệm thú vị khi thưởng thức.', N'-Tôm sú tươi: 500g
- Ớt sừng: 1 trái
- Ớt chỉ thiên: 2 trái
- Chanh tươi: 1 trái
- Tỏi khô: 1 củ
', N'Images/tomsunuongmuoiot.jpg', N'https://www.youtube.com/watch?v=NEt_wN-QXV0')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (13, N'Bò cuốn lá lốt chiên', N'Bò cuốn lá lốt chiên là món ăn ngon phổ biến, cực kỳ đưa cơm trong các bữa tiệc hoặc bữa cơm gia đình. Cách làm thịt bò cuộn lá lốt chiên rất đơn giản nhé.', N'- Thịt heo bầm: 100g
- Thịt bò: 300g
- Lá lốt: 50g
- Bột canh: nửa muỗng cà phê
- Bột ngọt: nửa muỗng cà phê
- Tiêu: nửa muỗng cà phê
- Dầu ăn: 2 muỗng canh.
', N'Images/bocuonlalotchien.jpg', N'https://www.youtube.com/watch?v=H0Jmn3vXZ9Q')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (14, N'Gà sốt cam', N'Đùi gà sốt cam với vị ngọt dịu của cam, phần thịt thấm gia vị, thoang thoảng mùi thơm của hạt mè và vỏ cam, dùng làm món mặn ăn với cơm rất đậm đà.', N'- Đùi gà: 4 cái
- Cam: 2 trái
- Bột năng: 2 Muỗng canh
- Muối: 1 Muỗng cà phê
- Đường trắng: 1/2 Muỗng cà phê
- Tiêu: 1/2 Muỗng cà phê
- Tỏi băm: 1/2 Muỗng cà phê
- Hành tím băm: 1/2 Muỗng cà phê
- Dầu hào: 1 Muỗng cà phê
- Mè trắng: 1/2 Muỗng cà phê
- Hành lá: 1/2 Cây
- Dầu ăn: 1 Chén
', N'Images/gasotcam.jpg', N'https://www.youtube.com/watch?v=jdRAvdqUdxo')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (15, N'Sườn chay chiên sả ớt', N'Sườn chay chiên sả ớt, món ăn thanh đạm nhưng vẫn mang hương vị đậm đà và hấp dẫn, miếng sườn chay chiên giòn xốp trong miệng vô cùng mới lạ, phủ lên lớp sả ớt thơm nồng, làm cho món ăn càng thêm hoàn hảo. Chỉ mất vài phút vào bếp là bạn đã có ngay món ăn ngon miệng nay rồi', N'Sườn non chay: 100gr
Sả băm: 50gr
Hành tím băm: 1 muỗng canh
Ớt băm: 1/2 muỗng canh
Nước mắm: 1.5 muỗng canh
Đường :1.5 muỗng canh
Hạt nêm: 1 muỗng cà phê
Tương ớt: 1 muỗng canh
Nước lọc: 30ml
', N'Images/suonchaychiensaot.jpg', N'https://youtu.be/sX8rCDnPC2c')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (16, N'Bánh xèo cốt dừa tôm thịt', N'Bánh xèo cốt dừa tôm thịt là một món ăn rất được các gia đình ưa chuộng đăc biệt là vào những ngày mưa khi các thành viên quây quần bên nhau. Vỏ bánh xèo được đổ từ bột pha theo công thức chuẩn vừa giòn vừa béo vị cốt dừa, quyện với nhân tôm thịt đậu xanh giá đỗ ngọt bùi, cuốn với thật nhiều rau rừng rồi chấm nước mắm là hết xảy.', N'Bột bánh xèo cốt dừa Taky: 500 Gr
Thịt ba chỉ: 300 Gr
Tôm sú tươi: 300 Gr
Giá đỗ: 500 Gr
Đậu xanh không vỏ: 110 Gr
Hành tím: 15 Gr
Nước mắm: 20 ml
Đường trắng: 30 Gr
Nước cốt chanh: 10 ml
Tỏi: 10 Gr
Ớt: 10 Gr
Củ cải trắng: 1/2 củ
Cà rốt: 1/2 củ
', N'Images/banhxeocotduatomthit.jpg', N'https://youtu.be/Bs-VttCSeC4')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (17, N'Pad Thái', N'Món Pad Thái với hương vị đậm đà, rất đặc biệt mang phong cách ẩm thực của xứ sở Thái Lan. Phần sốt chua ngọt thấm đều vào từng sợi phở, thêm vị tươi ngon của tôm và chút béo bùi của đậu hũ, khiến cho món Pad này càng khó cưỡng hơn khi thưởng thức.', N'Tôm sú: 300gr
Đường thốt nốt bột: 50gr
Nước cốt me: 2 muỗng canh
Bánh phở Thái: 300gr
Hành lá: 50gr
Đậu hũ chiên nhỏ 100gr
Củ cải muối 50gr
Trứng gà 4 quả
Giá sống 50gr
Đậu phộng rang (không vỏ) 50gr
Chanh xanh không hạt 1 quả
Tôm khô 30gr
', N'Images/padthai.jpg', N'https://youtu.be/ClxFuKPsY30')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (18, N'Snack chuối chiên mè', N'Chuối xanh là loại quả không mấy phổ biến bởi nó vừa cứng vừa chát. Tuy nhiên, vẫn có một cách sẽ khiến cho quả chuối xanh vô vị này trở nên hấp dẫn hơn rất nhiều. Cùng bắt tay vào làm món Snack chuối chiên mè sau đây bạn nhé, bạn sẽ thấy món này cực dễ làm mà độ ngon thì đúng chuẩn.', N'Chuối xiêm xanh: 1 nải
Chanh: 1 trái
Muối: 1 muỗng cà phê
Bột mì: 30gr
Đường: 40gr
Gừng: 20gr
Mè rang: 30gr
', N'Images/snackchuoichienme.jpg', N'https://youtu.be/EANhMhsZ-A4')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (19, N'Đùi gà nướng khoai lang', N'Đùi gà nướng khoai lang là món ăn thơm ngon, hấp dẫn, bổ dưỡng rất thích hợp để chiêu đãi bạn bè, người thân. Thay vì cách làm thông thường bạn sẽ mất hơn vài giờ đồng hồ để hoàn thành thì Nồi chiên không dầu Corosi sẽ giúp bạn giải quyết vấn đề đó, mặt khác còn giúp cho bạn giảm thiểu tối đa lượng mỡ thừa khi chế biến thức ăn.', N'Đùi gà góc tư: 1 đùi
Khoai lang: 2 củ
Muối: 1 muỗng cà phê
Tiêu: 1 muỗng cà phê
Mật ong: 2 muỗng canh
Dầu hào: 1 muỗng cà phê
Hạt nêm: 1 muỗng cà phê
Hành lá: 20 gram
', N'Images/duiganuongkhoailang.jpg', N'https://youtu.be/cMgQ5HfSGgc')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (20, N'Bánh mì hấp nhân thịt băm', N'Bánh mì hấp nhân thịt băm là món ăn dễ làm nhưng rất ngon miệng, thích hợp cho bữa sáng và những ngày ngán cơm. Cùng Cooky học ngay cách làm món bánh mì hấp ngon tuyệt dưới đây nhé!', N'Bánh mì: 3 ổ
Thịt heo xay: 200gr
Thịt bò xay: 200gr
Cà rốt: 50gr
Củ sắn: 50gr
Nấm mèo (ngâm nở): 50gr
Hành lá: 50gr
Nước mắm: 1 muỗng canh
Đường: 2 muỗng canh
Nước ấm: 1 muỗng canh
Tỏi băm: 1 muỗng canh
Ớt băm: 1 muỗng canh
', N'Images/banhmihapnhanthitbam.jpg', N'https://youtu.be/Hh2Gm5GGG6Y ')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (21, N'Mực xào sa tế', N'Mực Xào Sa Tế - món ngon cho bữa cơm gia đình hay dịp tụ họp bạn bè. Vị giòn tươi của mực, thanh mát của các loại rau củ kết hợp với vị cay nồng của sa tế, tất cả hoà quyện lại với nhau tạo nên món ăn siêu kích thích vị giác. Hãy cùng Cooky chuẩn bị nguyên liệu và bắt tay vào làm ngay thôi.', N'- 500gr Mực ống
- 10gr Hành tây
- 5gr Hành lá
- 1 Muỗng canh Sa tế
- 1 Muỗng canh Tỏi băm
- 1 Muỗng canh Hành tím băm
- 1 Muỗng canh Ớt băm
- 1 Muỗng cà phê Hạt nêm
- 1 Muỗng canh Đường trắng
- 1 Muống canh Nước mắm', N'Images/mucxaosate.jpg', N'https://youtu.be/k86IWzp5EHg')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (22, N'Mì ý sò điệp sốt phô mai', N'Món mì Ý sò điệp sốt phô mai, bạn đã từng nghĩ đến? Món ăn này không những bổ dưỡng mà còn rất nhanh gọn, phù hợp với những bạn là tín đồ của mì Ý sốt kem. Chỉ cần bỏ ra một ít thời gian thực hiện với một số thao tác đơn giản, bạn và gia đình sẽ có ngay món mì Ý sò điệp sốt phô mai hấp dẫn vào những ngày cuối tuần nhé!', N'- 500gr Cồi sò điệp
- 80gr Mì Ý
- 300ml Sữa tươi không đường
- 2 Viên Phô mai
- 1 Muỗng canh Bột mì
- 1 Muỗng cà phê Muối', N'Images/miysodiepsotphomai.jpg', N'https://youtu.be/VFsiURDqAFI')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (23, N'Chả mực', N'Mực tươi là loại hải sản quen thuộc trong bữa ăn hàng ngày, có thể chế biến thành nhiều món ngon như mực xào, mực chiên, mực nướng và trong đó có món chả mực tươi giã tay rất được yêu thích. Cách làm chả mực tươi ngon này cũng rất đơn giản. Chỉ với vài bước, cả nhà bạn sẽ có món ăn ngon và hấp dẫn để thưởng thức.', N'- 1kg Mực lá
- 10gr Tỏi băm
- 10gr Hành tím băm
- 1 Muỗng canh Nước mắm
- 1 Muỗng cà phê Tiêu
- 30gr Gừng
- 100ml Rượu trắng', N'Images/chamuc.jpg', N'https://youtu.be/m-ij-hAV4as')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (24, N'Trứng chiên thanh cua sốt nấm', N'Trứng chiên thanh cua sốt nấm - món ngon dễ làm cho bữa cơm gia đình. Cách làm trứng chiên thanh cua sốt nấm đơn giản với thanh cua xé sợi, chiên chín cùng trứng, thơm phức. Đặc biệt còn có thêm sốt nấm đông cô đặc sệt, gia vị nêm nếm hợp với khẩu vị nhiều người, chắc chắn đây sẽ là món ngon cho bữa cơm gia đình bạn.', N'- 1 Chén Cơm
- 2 Quả Trứng gà
- 50gr Thanh cua
- 50gr Nấm đông cô
- 1 Muỗng canh Dầu mè
- 1 Muỗng canh Tỏi băm
- 1 Muỗng canh Dầu hào
- 1 Muỗng cà phê Bột bắp
- 1 Muỗng cà phê Hạt nêm
- 1 Nhành Hành lá', N'Images/trungchienthanhcuasotnam.jpg', N'https://youtu.be/2SczSr4EE5w')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (25, N'Cơm kim chi thịt ba chỉ', N'Cơm kim chi thịt ba chỉ là một món ăn ngon của xứ sở kim chi. Thịt ba chỉ đậm đà quyện lẫn vị chua cay, giòn giòn của kim chi, món ăn này chắc chắn sẽ khiến bữa ăn gia đình bạn thêm phần ngon miệng và hấp dẫn.', N'- 300gr Thịt ba chỉ
- 200gr Kim chi cải thảo
- 1 Quả Trứng gà
- 1 Muỗng canh Hành tím băm
- 1 Muỗng canh Tỏi băm
- 2 Muỗng canh Dầu hào
- 2 Muỗng canh Hạt nêm
- 1.5 Muỗng canh Đường trắng
- 5gr Mè rang', N'Images/comkimchithitbachi.jpg', N'https://youtu.be/TnNz5QtW55E')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (26, N'Gà viên sốt cà chua', N'Gà viên sốt cà chua là món ăn có cách chế biến không cầu kì nhưng lại vô cùng hấp dẫn. Gà viên dai dai nhưng lại mềm thịt hoà quyện với sốt cà chua ngọt, làm tăng thêm hương vị cho bữa cơm gia đình. ', N'- 400gr Phi lê gà
- 150gr Hành tây
- 2 Quả Trứng gà
- 300gr Cà chua
- 2 Muỗng canh Hạt nêm
- 1 Muỗng cà phê Tiêu
- 1/2 Muỗng canh Đường trắng
- 1 Muỗng canh Dầu ăn
- 1.5 Muỗng canh Dầu hào
- 50ml Nước', N'Images/gaviensotcachua.jpg', N'https://youtu.be/xXD15pNlzvs')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (27, N'Bơ hạnh nhân hữu cơ', N'Bơ hạnh nhân hữu cơ không còn quá xa lạ với những bạn đang theo đuổi phong cách ăn uống lành mạnh, là thực phẩm giúp cho quá trình Eat Clean của bạn dễ dàng hơn rất nhiều. Hầu hết bơ hạnh nhân đều được bán sẵn tại các cửa hàng thực phẩm, siêu thị nhưng có giá thành cao, có chất bảo quản hoặc có lượng đường không phù hợp cho những bạn đang muốn hoàn thiện quá trình ăn uống lành mạnh. Vì vậy, hôm nay Cooky sẽ hướng dân các bạn cách thực hiện ngay tại nhà để có', N'- 500gr Hạt hạnh nhân
- 20ml Dầu olive', N'Images/bohanhnhanhuuco.jpg', N'https://youtu.be/dGtuuHCBmbE')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (28, N'Củ kiệu ngâm ngày tết', N'Củ Kiệu Ngâm Đường - món ngon ngày Tết, phổ biến trong nhiều bữa tiệc đầu năm mới. Cách làm củ kiệu không hăng, trắng giòn không khó. Chỉ với 3 bước đơn giản sau đây, món củ kiệu ngâm đường giòn sựt, hòa quyện vị ngọt và cay nồng đã hoàn tất rồi nhé. Món củ kiệu ngâm giòn này ăn kèm với thịt mỡ chống ngán hoặc tước nhỏ trộn với bắp cải, thịt gà, cho bữa cơm ngày Tết đều rất tuyệt vời.', N'- 500gr Củ kiệu
- 300gr Đường trắng
- 50gr Phèn chua
- 30gr Muối', N'Images/cukieungamngaytet.jpg', N'https://youtu.be/mD5lGkyrDrg')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (29, N'Mực nướng đá hấp bia', N'Mực nướng đá hấp bia được hấp chín trên đá cuội giúp giữ được lượng nước và không làm mất đi nhiều chất dinh dưỡng trong từng miếng mực, và còn hấp thu thêm khoáng chất từ bia và đá cuội làm cho món ăn trở nên ngon, đặc sắc hơn. Sau đây, hãy cùng Cooky khám phá công thức món mực nướng đá hấp bia để mời cả gia đình hay bạn bè thưởng thức nhé!', N'- 1kg Mực ống
- 10 Viên Đá
- 1 Lon bia
- 100gr Sa tế tôm
- 20gr Tỏi băm
- 20gr Hành tím
- 20gr Hành lá
- 20gr Ớt', N'Images/mucnuongdahapbia.jpg', N'https://youtu.be/NE_3LA8GS0s')
INSERT [dbo].[FoodRecipes] ([ID], [NameFood], [DishDescription], [CookingIngredients], [FoodImage], [ulrVideo]) VALUES (30, N'Salad phở bò nướng ngũ vị', N'Salad phở bò nướng ngũ vị là món ăn hoàn toàn mới lạ với sự kết hợp từ các nguyên liệu tốt cho sức khoẻ như thịt bò, phở gạo lứt và các loại rau củ. Với gia vị hoàn chỉnh Barona - thịt nướng ngũ vị, việc thực hiện món ăn này sẽ trở nên dễ dàng hơn bao giờ hết. Cùng theo dõi công thức dưới đây để biết cách làm chi tiết món salad hấp dẫn này nhé!', N'- 200gr Thịt bò
- 200gr Phở gạo lứt
- 70gr Xốt thịt nướng ngũ vị Barona
- 40gr Cà rốt
- 40gr Dưa leo
- 40gr Xà lách
- 20gr Húng quế
- 20gr Rau thơm
- 20gr Húng lũi
- 20gr Giá đỗ
- 10gr Hạt điều', N'Images/saladphobonuongnguvi.jpg', N'https://youtu.be/Uz8ydGzL6U4')
GO
ALTER TABLE [dbo].[FavoriteFood]  WITH CHECK ADD  CONSTRAINT [fk_FavoriteFood_FoodRecipes] FOREIGN KEY([IdFoodRecipes])
REFERENCES [dbo].[FoodRecipes] ([ID])
GO
ALTER TABLE [dbo].[FavoriteFood] CHECK CONSTRAINT [fk_FavoriteFood_FoodRecipes]
GO
ALTER TABLE [dbo].[FoodCookingStep]  WITH CHECK ADD  CONSTRAINT [fk_FoodCookingStep_FoodRecipes] FOREIGN KEY([IdFoodRecipes])
REFERENCES [dbo].[FoodRecipes] ([ID])
GO
ALTER TABLE [dbo].[FoodCookingStep] CHECK CONSTRAINT [fk_FoodCookingStep_FoodRecipes]
GO
