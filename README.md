# XDUthesis 西安电子科技大学学位论文模板
---
Xidian University thesis template
---
---

本模板目前还处于测试阶段，目前仅含有本科版。

关于硕博的版本，正在尝试。

## 写在前面

- 西安电子科技大学学位论文模板已有我校**齐飞**老师制作的 [xduthesis](https://github.com/fredqi/xduthesis).

- 本人制作基于 [ctex套件](https://github.com/CTeX-org/ctex-kit) 中的 ctexbook, TeXLive 制作，为个人版使用，不具有权威价值，仅供参考。

- 关于封面以及诚信说明书
	模板里自动生成的封面以及诚信声明书不具有权威价值，暂时仅供展示，大家以学校教务处官方提供的表格为准。

	教务处封面模板下载地址: [http://sjjx.xidian.edu.cn/down/html/?18.html](http://sjjx.xidian.edu.cn/down/html/?18.html)

	教务处诚信声明书下载地址: [http://sjjx.xidian.edu.cn/down/html/?6.html](http://sjjx.xidian.edu.cn/down/html/?6.html)
	
	感谢 [BDZNH](https://github.com/BDZNH) 同学提供的链接地址。

- 在 Demo.tex 中的 `1.1.1 字体设置` 一节，我花式使用了各种 Windows 字体以展示各种字体的使用方式，非 Windows 系统用户编译预览文档时可以注释掉这一节内容。

## 使用方法

**使用前，请仔细阅读 XDUthesis.pdf 模板用户手册！**

- Windows用户

	双击运行 `make.cmd` 脚本，首先根据提示完成模板的生成和用户说明手册的生成。然后再生成示例论文。


- Linux/Mac用户

	- 生成模板以及用户说明手册

		```bash
		$ make template
		```

	- 生成示例

		使用`XeLaTeX`:

		```bash
		$ make xelatex
		```

		使用`LaTeXMk`:

		```bash
		$ make latexmk
		```

	- 清理文件夹

		```bash
		$ make clean
		```

## 模板文件介绍

- 模板文件

	+ XDUthesis.dtx - 模板文档类、启动文件与说明文档混排文件
	+ gbt7714-plain.bst/gbt7714-unsrt.bst - GB/T 7714-2015 参考文献样式

- 示例文件

	+ Code/ 源代码存放文件夹
	+ Figure/ 图片存放文件夹
	+ ThesisFiles/ 模板章节、参考文献、附录等文件夹
	+ Demo.tex - 模板示例文档主文件

	> 注：文件夹内容不再介绍。

- 编译脚本

	- For Windows

		+ make.cmd - 模板生成脚本

	- For Linux/Mac

		+ Makefile - Linxu/Mac用的Makefile

## 更新记录
- v0.1.10 版本更新，详情如下：
    - 修复了 TeXLive 2020 下模板文件无法生成错误，以及 xelatex/pdflatex 编译，下划线等命令失效或报错问题。
    - 上述问题一部分是由于新版本的 ctex 套件移除了 xeCJKfntef 包的加载以及 CJKfntef 包 xetex 下不起作用引起的。一部分是由于 amsmath 包的加载顺序导致的(pdflatex 下引入了新的数学字体包)。
    - 此外，尚有一个问题暂未完全解决，即更新了 fancyhdr 包版本到 v4.0+ 的话，生成的 pdf 中页眉的标题编号会变成英文的 “CHAPTER 1.”，参见[ctex-kit issue 554](https://github.com/CTeX-org/ctex-kit/issues/554)，以及[fduthesis issue 174](https://github.com/stone-zeng/fduthesis/issues/174). 比较靠谱的解决方案是对 fancyhdr 降级，在终端中执行如下命令：
        ```Bash
        tlmgr restore fancyhdr 49886
        ```
    fancyhdr 和 ctex 均已有了解决方案，问题正在修复，之后再更新官方应该会解决该问题。

- v0.1.9 版本更新，详情如下：
	- 新增 fandol 字体判断:解决用户不设置字体,非 Windows 系统下,没有 SimHei 字体错误。Mac 系统下有待验证
	- 增加摘要、目录以及致谢的页眉标题定义，使得文章标题内容与页眉标题内容分别显示：即，内容标题中间有空格，页眉标题/以及目录中没有空格分隔
	- 新增 `print` 参数，在打印论文时留出装订线距离（之前版本默认的）；增加电子版预览样式(两边等宽)，默认开启，但在Demo.tex设置了 `print` 还原回了之前版本默认的打印模式。感谢 [BDZNH](https://github.com/BDZNH) 同学
	- 新增三个定理环境，感谢 [BDZNH](https://github.com/BDZNH) 同学
	- 重定义了目录，重定义了目录命令,文章内容目录标题以页眉标题能够分别设置
	- 重新调整了目录无点连接模式的标题缩进参数，使之与正常模式缩进相同
- v0.1.8 版本更新，详情如下：
	- 重新兼容了PDFLaTeX，可能有些地方会不太理想（目前问题是标题西文字体无法设置为黑体，以及正文西文字体非 Times New Roman 只是很像而已）
	- 去除了Fandol字体的默认支持，改由系统自行判断决定
	- 新增了 windowsn, windowsf, adobe, mac 等字体参数，可以手动选择字体参数说明见 Demo.tex 开头部分
	- 有个别学弟/学妹反应学生手册目录样式修改了，新增了 contentsnd 参数，去除了目录中标题与页码间的点
	- 参考文献样式更新为 [gpt7714](https://github.com/CTeX-org/gbt7714-bibtex-style) 样式，删除了我本人写的 XDUbib
	- 重新修正了封面，对于班级号和学号的长度重新进行了设置。此外有些同学想要班级号居中这里采用了\phantom{}占位符命令。
	- 修正了黑体不能加粗问题。
	- 最后还是要推荐使用 XeLaTeX 编译

- v0.1.7 版本更新，详情如下：
	- 中文 Fandol 字体族下，添加英文字体设置，防止默认字体不符合要求
	- 删除 fontenc 宏包，使得正文英文字体相关设置生效
	- 修改参考文献条目间距，使之间距较为合理。

	题外话，今天咨询了 [Fandol](https://github.com/clerkma/fandol-fonts) 字体的开发者[马起园](https://github.com/clerkma)老师，Fandol宋体里缺少一些字，如“瞭”字；因此，作为 TeXLive2015 自带的中文字体族，考虑多平台兼容，仅供备用，大家尽量使用自己系统里稳定的正式中文字体族。

	Windows 系统本模板已经默认给出；Mac OS 在不装新字体的情况下，推荐使用华文字体族；Linux 系统在不装新字体的情况下，可以参考ctex宏集Linux系统的字体设置方法，在XDUthesis.cfg中进行设置。

- v0.1.6 版本更新，详情如下：
	- 修正目录中章的索引符为空问题，修正为点。感谢 [git4xuan](https://github.com/git4xuan) 同学。
	- 修正章节标题错误加粗问题 By [XDXX](https://github.com/XDXX) 同学。
	- 修该原来图表编号后冒号为大空格，符合工作手册的样例。感谢 [git4xuan](https://github.com/git4xuan) 同学。
	- 其他若干问题修复。
	- 关于参考文献使用的解释
		[git4xuan](https://github.com/git4xuan) 同学在 issues 里面提到了一些关于参考文献的疑问，个人觉得很有意义。但是有些没有在工作手册中找到相关规定。不敢直接进行修改。特在此说明一下。

		对于参考文献样式，本模板提供了XDUbib.bst样式，以及对应不排序的样式。个人以为基本符合工作手册要求。如有同学觉得有问题，可以参考齐飞老师的模板使用IEEEtran的参考文献样式。使用方法，将Demo.tex文件里的

			\bibliographystyle{XDUbibunsrt}

		代码修改为

			\bibliographystyle{IEEEtran}

		即可。
	- 关于封面以及诚信说明书
		模板里自动生成的封面以及诚信声明书不具有权威价值，暂时仅供展示，大家以学校教务处官方提供的表格为准。
		教务处封面模板下载地址: [http://sjjx.xidian.edu.cn/down/html/?18.html](http://sjjx.xidian.edu.cn/down/html/?18.html)
		教务处诚信声明书下载地址: [http://sjjx.xidian.edu.cn/down/html/?6.html](http://sjjx.xidian.edu.cn/down/html/?6.html)
		感谢 [BDZNH](https://github.com/BDZNH) 同学提供的链接地址。

	**注：本版本更新对章标题进行了重新设置。所需 `ctex` 宏集为2016/02/02 v2.3版本。希望大家使用 `TeX Live Manager` 进行更新。**

	> 解释下：老版本的 `ctex` 宏集（v2.0.2）中章设置（chapter）中的format参数不起作用，因而之前的设置分开来设置的，如下：
	``` LaTeX
	\ctexset{
		%…………%
		chapter/titleformat = {\zihao{3}\heiti\centering},%
		chapter/nameformat = {\zihao{3}\heiti\centering},
		%…………%
	}
	```
	> 然而，在新版本的 `ctex` 宏集（2016/02/02 v2.3版本）中，上面的设置会引发一些小错误，对章标题误加粗；但是format参数起作用了，且能正常工作，因此对新版本的 `ctex` 宏集进行了修复：
	``` LaTeX
	\ctexset{
		%…………%
		chapter/format = {\zihao{3}\heiti\centering},
		%…………%
	}
	```
	> 这样又引发了老版本的不支持（前面提到的format不起作用）；综上，对于懂得LaTeX的熟练用户，大家如不想升级，可以再改回原来的设置。对于新手，建议更新 `ctex` 宏集。（众口难调，好累啊。又不是我的锅（委屈脸 ( T﹏T )））

- v0.1.5 版本更新，详情如下：

	- 首先，添加页面边距的装订线距离（之前忽略了，汗-_-||）

	- 添加了新参数 `WordOneHalf` 可选参数，可将行距设置为Word版同等高度

		在本次更新中，设置为了默认选上了，详情 Main.tex 文件。

	- 新添加不排序的参考文献样式 `XDUbibunsrt.bst` 文件，同样本次更新默认为它（应广大用户需求，按照引用次序列表参考文献）

- v0.1.4 版本更新，详情如下：
	- 首先，修复了生成后的PDF复制乱码问题；

	- 默认使用者为Windows系统

	- 默认使用华文中宋（STZhongsong）作为中易宋体（SimSun）的粗体
		
		原因是中易宋体根本没有粗体，强制对其加粗会造成一些问题。word的处理很投机，它对正常宋体进行了差值再计算（详情见http://blog.csdn.net/windtailljj/article/details/7422344），华文中宋与中易宋体的word加粗版很像，故而采用之。
		
	- 对于其他系统以及不想使用华文中宋作为中易宋体粗体的用户，还添加`Fandol`参数以使用[Fandol](https://github.com/clerkma/fandol-fonts)字体族。
		
		Windows用户注意，启用此命令就没有了隶书（`\lishu`），幼圆（`\youyuan`），微软雅黑（`\yahei`）三个字体的预定义命令了，本文提供的范例很有可能会编译不通过；不用担心，将Chapters.tex中使用的相关命令删掉即可，如果使用批处理编译的话强行回车也行。

	- 添加`nologo`参数，封面不使用Logo

	- 修复封面标题英文未加黑体问题，感谢[lanthree](https://github.com/lanthree)同学

	- 修复英文摘要关键词名称不对的问题，感谢[lanthree](https://github.com/lanthree)同学

	- 此外，感谢自本模板发布以来，一直关注本模板的同学们。如果对本次的更新不满意，v0.1.3版本的做了Release，可以继续使用。

