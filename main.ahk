FileEncoding UTF-8

FileDelete,input.txt 	;删除之前创建的文件，以免内容重叠
FileAppend, 	;创建输入文件本体，顺带将使用信息呈现其中
(
在这里输入要粘贴的内容
然后按F5载入文本，在要粘贴的地方先按"T"键，再按"空格"键，即可粘贴。

修改文本内容后记得保存，再按F5重新载入内容。
),input.txt,UTF-8

F5::FileRead,itxt,*t input.txt 	;itxt 用来存储获取的数据的 变量 名  FileRead默认为ANSI编码

if not ErrorLevel 	; 加载成功
{
	;msgbox,%itxt%
	::t::
	SendInput %itxt%
	return
	itxt =  	; 清空占用的内存
}