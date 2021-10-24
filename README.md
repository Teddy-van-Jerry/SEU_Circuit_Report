# SEU Circuit Report
LaTeX Template for SEU Circuit Experiment Report - 东南大学电路实验 LaTeX 模板

## Guidance - 使用说明

### Basic Information - 基本情况
- Version 1.1 (2021/10/24)
- The template basically has a LaTeX class `SEU-Circuit-Report` in file `SEU-Circuit-Report.cls`.
  > 模板主要包括 `SEU-Circuit-Report.cls` 中的 `SEU-Circuit-Report` 类。

### Compilation - 编译环境
- This template should be compiled with `XeLaTeX` and `Biber`(for reference).
  > 模板需要使用 `XeLaTeX` 和 `Biber`（用于参考文献）编译。
- It is recommended that the latest LaTeX version is installed.
  > 建议使用最新版本的 LaTeX。

### Title Page - 封面页
- To change the contents on the title page, just modify the following contents in file `SEU-Circuit-Report.tex`.
  The header on the right will also change accordingly.
  > 修改文件 `Circuit Experiment Report.tex` 中的内容以改变封面页中的信息。
  > 文档的页眉信息也会跟着改变。

```latex
%% 使用实验报告模板类（字体大小 12pt 最适合）
\documentclass[12pt]{SEU-Circuit-Report}

%%%%%%%%%%%%%%%%%%%% 报告基本信息 %%%%%%%%%%%%%%%%%%%%
\expno{3} % 实验序号
\expname{应用Multisim软件工具设计电路验证网络定理} % 实验名称
\exphouse{TVJ Group} % 学院
\expmajor{\LaTeX\ Design} % 专业
\expauthor{Teddy van Jerry} % 姓名
\expID{123456} % 学号
\explab{} % 实验室
\expgroup{} % 实验组别
\expmates{} % 同组人员
\expdate{2021年10月19日} % 实验日期
\expgrade{} % 成绩评定
\exptutor{Mentor Name} % 评阅老师
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
```

### Bibliography - 参考文献
- Change the contents in file `ref/ref.bib` and compile with `Biber` (not `BibTeX`). There is an example below.
  > 参考文献需修改 `ref/ref.bib` 中的内容并用 `Biber` 编译而不是 `BibTeX`。下方是一个参考文献范例。
```bib
@book{circuit_book,
  title = {电路与电子线路基础. 电路部分},
  author = {王志功 and 沈永朝 and 赵鑫泰},
  publisher = {高等教育出版社},
  edition = {2},
  address = {北京},
  year = {2015},
  month = {7}
}
```

### Other Information - 其他信息
- For images inserted in Word as *Visio*, right click and Open, and export as PDF.
  Open with Acrobat Pro and crop page to remove white margin.
  Finally export it as an `eps` file.
  > Word 版报告模板中的电路图以 *Visio* 格式内嵌，右击选择打开，
  再导出为 PDF，可以再使用 Acrobat Pro 裁去白边框（Remove White Margin）并导出成 `eps` 格式。
- To insert vector graph of Multisim, copy contents into Word and open as a zip file.
  Find `emf` file in `word/media`, convert it into `eps` file on https://cloudconvert.com/emf-to-eps or https://www.aconvert.com/image/emf-to-eps.
  > 在报告中插入 Multisim 矢量图需要先将 Multisim 选中内容复制到 Word，再将 Word 当作压缩包打开，在 `word/media` 中找到对应的 `emf` 图片，在 https://cloudconvert.com/emf-to-eps 或 https://www.aconvert.com/image/emf-to-eps 中转换成 `eps` 即可插入。

## License - 开源许可证
[MIT License](LICENSE)
