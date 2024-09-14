---
title: FPGA基础知识
urlname: FPGA基础知识
mathjax: false
date: 2024-07-15 17:40:21
categories: FPGA
tags: FPGA
---

# Verilog基础介绍

## 数据类型

### 常量

- 整数：整数可以用二进制 b 或 B ，八进制 o 或 O ，十进制 d 或 D ，十六进制 h 或 H 表示
- x 和 z：x 代表不定值，z 代表高阻值
- 下划线 _：在位数过长时可以用来分割位数，提高程序可读性
- 参数 parameter：parameter 可以用标识符定义常量，运用时只使用标识符即可，提高可读性及维护性
如定义 parameter width = 8；定义寄存器 reg [width-1 : 0] a; 即定义了8位宽度的寄存器
参数的传递：在一个模块中如果有定义参数，在其他模块调用此模块时可以传递参数，并可以修改参数，如下所示，在module后面用# ()表示
例如定义模块如下

```verilog
module rom #(
  parameter	depth   =   15  ,
  parameter	width   =   8   
) (
  input     [depth-1: 0]    addr    ,
  input     [width-1: 0]    data    ,
  output                    result  
);

endmodule
```
调用模块
```verilog
module top();
wire    [31:0]  addr    ;
wire    [15:0]  data    ;
wire            result  ;

rom #(
    .depth  (32     )   ,
    .width  (16     )   
) r1(
    .addr   (addr   )   ,
    .data   (data   )   ,
    .result (result )   
);
endmodule
```

Parameter 可以用于模块间的参数传递，而 localparam 仅用于本模块内使用，不能用于参数传递。Localparam 多用于状态机状态的定义

