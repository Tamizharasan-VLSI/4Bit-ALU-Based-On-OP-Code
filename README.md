# 🧮 Verilog ALU Design (Adder, Subtractor, Multiplier, Divider)

## 📘 Overview
This project implements a **4-bit Arithmetic Logic Unit (ALU)** in **Verilog HDL**, capable of performing basic arithmetic operations — **Addition, Subtraction, Multiplication, and Division** — using modular design.

Each operation is implemented in a **separate Verilog file** and integrated into the main **ALU module** using `include` directives.  
The ALU operation is selected through a 3-bit **opcode**.

---

## ⚙️ Features
- Modular design using four arithmetic units:
  - `adder.v`
  - `subtractor.v`
  - `multiplier.v`
  - `divider.v`
- Synchronous operation using **clock (`clk`)** and **reset (`rst`)**
- Supports **parameterized bit width** (`width = 4` by default)
- Cleanly structured **testbench** with random and directed tests
- Error handling for division by zero

---

## 🧩 ALU Operation Table

| Opcode | Operation    | Description                  |
|:------:|:-------------|:-----------------------------|
| `000`  | Addition     | `result = a + b`             |
| `001`  | Subtraction  | `result = a - b`             |
| `010`  | Multiplication | `result = a * b`           |
| `011`  | Division     | `result = a / b`             |

---

## 🧱 File Structure
## 🛠 Tools Used
- Verilog Simulator (EDA Playground/Xilinx Vivado)

---

## 👩‍💻 Author
**Tamizharasan**  
VLSI Enthusiast | Digital Design Learner  
More designs coming soon… 😊

---
