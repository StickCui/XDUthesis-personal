# XDUthesis 西安电子科技大学学位论文模板
---
## 插播一条通知：本人今日（2016年02月23日）发现一个八阿哥（bug），暂未修复；详情如下：

ctex v2.0.2版本的套件下，使用xelatex编译的时候，如果文章中有强制将宋体加粗（即`\songti\textbf{粗体}`）的情况，生成的PDF文件中，复制出来该段文字是乱码，打印查看不影响。如果使用在封面定制中，会更严重，很不幸，本人使用了。

然而，使用pdflatex编译没有这种情况。

**如有人知道如何解决，还请邮件联系本人！！！非常感谢！**（P.S. 不知道升级ctex套件能不能成功？改天有空试试。）

---
Xidian University thesis template

本模板目前还处于测试阶段，纯属个人爱好制作；仅仅含有本科版；

鉴于作者还是 LaTeX 的入门者；正在努力学习；会不定期维护。

## 写在前面

西安电子科技大学学位论文模板已有我校**齐飞**副教授制作 [xduthesis](https://github.com/fredqi/xduthesis).

本人制作基于[ctex套件v2.0.2](https://github.com/CTeX-org/ctex-kit) 中的 ctexbook, TeXLive2015 制作；

制作之初，面向 LaTeX 半个小白用户以及刚入门用户；因此生成好了 **XDUthesis.cls** 和 **XDUthesis.cfg**
文件。下载后即可使用；

## 使用方法

为方便 Windows 用户，专门写好了两种编译脚本；还有示例可供学习使用。

使用前，请仔细阅读 XDUthesis.pdf 模板用户手册。

里面的**生成模板.bat**是根据**XDUthesis.dtx**和**XDUthesis.ins**生成模板文档类**XDUthesis.cls**和模板配置文件**XDUthesis.cfg**的；由于本人已经为小白用户生成好了，下载后无需再运行了。

里面的**MakeXDUthesisPDF.bat**根据**XDUthesis.dtx**来生成用户说明文档的，由于本人已经为小白用户生成好了，下载后无需再运行了。

## 模板文件介绍
	XDUthesis.dtx 模板文档类与说明文档混排文件
	XDUthesis.ins 模板驱动文件
	XDUthesis.cls 模板文档类
	XDUthesis.cfg 模板配置文件
	XDUbib.bst 参考文献样式
	Main.tex 模板示例文档主文件
	XDUthesis.pdf 模板用户手册
	xelatex 编译.bat 模板的 XeLaTeX 编译脚本
	latexmk 编译.bat 模板的 latexmk 编译脚本
	clean.bat 模板中间文件清除脚本
	Code/ 源代码存放文件夹
	Figure/ 图片存放文件夹
	ThesisFiles/ 模板章节、参考文献、附录等文件夹
注：文件夹内容不再介绍。