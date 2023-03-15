# hdl_tester

Python -- Cpp -- Verilog    (Verilator)  

subprocess 将子进程的标准输入或输出重定向到管道中，使用 subprocess.PIPE 或 文件管道（FIFO）进行激励 

实现一个基于Python的硬件验证平台，用Verilog实现硬件设计，用Python编写仿真测试，实现协同仿真，提高编程效率。  

解析：Verilator会提供一个验证模型(Verilated Model)。在C++输出模式(--cc)下，Verilator生成的模型类是一个简单的C++类。用户必须为仿真编写一个C++包装器和主循环，实例化模型类，并与Verilated模型链接，我们通过该模型对内部信号进行激励。因此，通过对进程的标准输入输出进行重定向，我们可以在Python这层通过管道或文件将激励信息注入到harness文件中，然后通过得到的Verilog设计文件和harness测试文件，实现仿真验证。
