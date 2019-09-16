:- encoding(utf8).

:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/html_write)).
:- use_module(library(http/http_parameters)).
:- http_server(http_dispatch, [port(80)]).

:- http_handler(/, index, []).

index(_Request):-

reply_html_page(title('Danh bạ điện thoại'),
	style('type="text/css"  body{background-color: #f3f3f3;}
	* {
		box-sizing: border-box;
		-moz-box-sizing: border-box;
		-webkit-box-sizing: border-box;
		border-radius: 0px;
	}
	body {
		font-family: "Source Sans Pro", sans, Arial, sans-serif;
		font-weight: 100;
		color:	#333;
		padding: 0;
		margin: 0 ;
		background-color:#FEFFEE;
			
	}
	.menu{
		margin: 0 ;
		padding: 0;
		clear: both;
		text-align: center;
		display: table;
		width: 100%;
		 border: 1px solid #d57719;
		 background: #ef9439;
		border-radius: 2px;
	}
	.menu > li{
		list-style-type: none;
		float: left;
		display: table-cell;
		padding: 0px;
		margin: 0;
		// width: 15%;
		border: 1px solid #b57719;	
		background-color: #FF9751;
		border-radius: 3px;
		position: relative;
	}
	.menu > li a{
		display: block;
		padding: 8px;
		background-color: #ef9439; 
		color: #fff;
		text-decoration: none;
		font-family: Open Sans, sans-serif; 
	}
	.menu > li a:hover{
		background-color: #FFA300;
		color: #0055A8;
		
	}
	.hidden{
	    margin: 0;
		padding: 0;
		display: none;
		position: absolute;
		width: 100%;
	}
	.hidden li{
		display: block;
		margin: 0;
		padding: 0;
		
	}
	#container{
		padding-left: 150px;
		padding-right: 150px;
		position: relative;
		left: 0;
		//background-color: #fff;
	}
	#baner{
		//margin: 10px;
		//padding: 10px;		
		text-align: center;
		background-color: #FF0000;
	}
	#logo{		
		
		padding: 7px;
	}
	#comment{
		padding: 7px;
				
		
	}
	#tieude{
		margin: 10px;
		padding: 10px;		
		text-align: center;
	}
	#chan{		
		
		padding: 10px;
		text-align: center;
		background-color: #ef9439;
	}
	li.drop-down:hover .hidden, .hidden:hover{
   display: block;}'
   ),
	div('id="container"',
		[
			div('id="baner"',	%----------Baner---------
			[	div('id="logo"',	%----------logo---------
					b(font('size="6" face="Times New Roman" color="#FFF900"','VĨNH LONG'))
				),
				div('id="comment"',	%----------comment---------
					b(font('size="5" face="Times New Roman" color="#fff"','DANH BẠ ĐIỆN THOẠI'))
				)
			]),
			div(	%-------menu---------
				ul('class="menu"',
					[
					li(a('href="/"','Trang chủ')),
					li('class="drop-down"',
						[
						a('href="#"','Cập nhật Danh bạ'),
						ul('class="hidden"',
							[li(a('href="themmoi"','Thêm mới')),
							li(a('href="dieuchinh"','Điều chỉnh'))
							]
						)
						]
					),
					li('class="drop-down"',
						[
						a('href="#"','Tra cứu Danh bạ'),
						ul('class="hidden"',
							[li(a('href="coQuan"','Cơ quan')),
							li(a('href="dsNghihuu"','Cá nhân'))
							]
						)
						]
					),
					li('class="drop-down"',
						[
						a('href="#"','Quản lý Hệ thống'),
						ul('class="hidden"',
							[
							li(a('href="napCSTT"','CS tri thức')),
							li(a('href="dsDangvienAI"','Danh sách AI')),
							li(a('href="xetHuyhieuAI"','Xét huy hiệu'))	
							]
						)
						]
					)
					]
				)
			),
			div('id = "tieude"',	%---------Tiêu đề xử lý-------------	
				
						b(font('size="6" face="Times New Roman" color="#EA151E"','TRA CỨU DANH BẠ ĐIỆN THOẠI'))
					
			),			
			div('id = "chan"',	%---------xử lý chan-------------
				b(font('size="1" color="#225486"','Vĩnh Long Coppy 2019'))
				
			)
					
		])%------Div tổng------------
			
).
/* ----------------in danh sách bảng ghi------------------------ */
print_List4(List):-
		format('<html>~n', []),
        format('<div id="container">'),
		format('<table id=table4 bgcolor=#FEFFEE cellSpacing=0 width=100% align=left border=-1 height=100%>~n'),
		atom_codes(TT,[83, 84, 84]),
		atom_codes(H,[72, 7885, 32, 118, 224, 32, 116, 234, 110]),
		atom_codes(Ns,[78, 103, 224, 121, 32, 115, 105, 110, 104]),
		atom_codes(D,[272, 7883, 97, 32, 99, 104, 7881]),
		atom_codes(N,[78, 103, 224, 121, 32,118, 224, 111, 32, 273, 7843, 110, 103]),
		
        format('<tr>
		<td align="center" bgcolor="51DBFF" width="5%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w
		<td align="center" bgcolor="51DBFF" width="20%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w
		<td align="center" bgcolor="51DBFF" width="10%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w
		<td align="center" bgcolor="51DBFF" width="40%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w
		<td align="center" bgcolor="51DBFF" width="15%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w',[TT,H,Ns,D,N]),
		STT=0,
		print_record(List,STT),
		
        format('~n</table>~n'),
		format('</div>'),
        format('</html>~n', []).
%print list 6
print_List6(List):-
		format('<html>~n', []),
        format('<div id="container">'),
		format('<table id=table4 bgcolor=#FEFFEE cellSpacing=0 width=100% align=left border=-1 height=100%>~n'),
		
        format('<tr>
		<td align="center" bgcolor="51DBFF" width="5%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w
		<td align="center" bgcolor="51DBFF" width="20%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w
		<td align="center" bgcolor="51DBFF" width="10%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w
		<td align="center" bgcolor="51DBFF" width="40%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w
		<td align="center" bgcolor="51DBFF" width="15%" style="padding-left: 4px; padding-right: 4px">
			<font size="5" color="#225486">~w',[TT,H,Ns,D,N]),
		STT=0,
		print_record(List,STT),
		
        format('~n</table>~n'),
		format('</div>'),
        format('</html>~n', []).
	

/*-----------------------------in dòng bảng-------------------------*/
print_Record4([]).
print_Record4(A,C) :-
	[X|Z] =A,
	(
	%kiểm tra nếu là phần tử cuối cùng của danh sách thì ngưng
	last(A,X) -> true 
	;
		(
		[C1,C2,C3,C4]=X,
		%C=1,
	
		STT is C + 1,
        format('<tr>
		<td align="center" bgcolor="" width="5%" style="padding-left: 4px; padding-right: 		4px"><font size="4" color="#225486">~w
		
		<td align="left" bgcolor="" width="20%" style="padding-left: 4px; padding-right: 		4px"><font size="4" color="#225486">~w
		
		<td align="left" bgcolor="" width="10%" style="padding-left: 4px; padding-right: 4px"><font size="4" color="#225486">~w
		
		<td align="left" bgcolor="" width="40%" style="padding-left: 4px; padding-right: 4px"><font size="4" color="#225486">~w
		
		<td align="left" bgcolor="" width="15%" style="padding-left: 4px; padding-right: 4px"><font size="4" color="#225486">~w', [STT,C1,C2,C3,C4]),
		
        print_Record(Z,STT)
		)
	).
print_Record6([]).
print_Record6(A,C) :-
	[X|Z] =A,
	(
	%kiểm tra nếu là phần tử cuối cùng của danh sách thì ngưng
	last(A,X) -> true 
	;
		(
		[C1,C2,C3,C4]=X,
		%C=1,
	
		STT is C + 1,
        format('<tr>
		<td align="center" bgcolor="" width="5%" style="padding-left: 4px; padding-right: 		4px"><font size="4" color="#225486">~w
		
		<td align="left" bgcolor="" width="20%" style="padding-left: 4px; padding-right: 		4px"><font size="4" color="#225486">~w
		
		<td align="left" bgcolor="" width="10%" style="padding-left: 4px; padding-right: 4px"><font size="4" color="#225486">~w
		
		<td align="left" bgcolor="" width="40%" style="padding-left: 4px; padding-right: 4px"><font size="4" color="#225486">~w
		
		<td align="left" bgcolor="" width="15%" style="padding-left: 4px; padding-right: 4px"><font size="4" color="#225486">~w', [STT,C1,C2,C3,C4]),
		
        print_Record(Z,STT)
		)
	).	

/*===================================================Database============================================*/


phone('Cơ quan','đơn vị','Họ Tên','Chức vụ','ĐT CQ','Di động').
phone('Cơ quan','Địa chỉ','Điện thoại','FAX').


find_Name(Name,List):- 
	findall([A,B,C,D,E,F],(phone(A,B,C,D,E,F),C==Name),List).
find_Organ(Name,List):- 
	findall([A,B,C,D,E,F],(phone(A,B,C,D,E,F),A==Name),List).	
find_Office(Name,List):- 
	findall([A,B,C,D,E,F],(phone(A,B,C,D,E,F),B==Name),List).		
	
	
	
	
	
	
	
	
	