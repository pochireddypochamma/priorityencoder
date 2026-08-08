# 4-to-2 Priority Encoder using Verilog

## 📌 Description

This project implements a **4-to-2 Priority Encoder** using Verilog HDL.

A priority encoder converts multiple input signals into a binary output. When more than one input is active, the input with the **highest priority** is selected.

In this project:

**D3 has the highest priority** and **D0 has the lowest priority**.

## 🔌 Inputs

* `D[3:0]` – Four input signals
* `D3` – Highest priority
* `D0` – Lowest priority

## 📤 Outputs

* `Y[1:0]` – 2-bit encoded output
* `Valid` – Indicates whether any input is active

## 📊 Truth Table

| D3 | D2 | D1 | D0 | Y  | Valid |
| -- | -- | -- | -- | -- | ----- |
| 0  | 0  | 0  | 0  | 00 | 0     |
| 0  | 0  | 0  | 1  | 00 | 1     |
| 0  | 0  | 1  | X  | 01 | 1     |
| 0  | 1  | X  | X  | 10 | 1     |
| 1  | X  | X  | X  | 11 | 1     |

`X` means the input can be either 0 or 1 because a higher-priority input is already active.

## ⭐ Priority Order

```text
D3 > D2 > D1 > D0
```

For example, if:

```text
D = 1111
```

all inputs are active, but **D3** has the highest priority.

Therefore:

```text
Y = 11
Valid = 1
```

## 📁 Project Structure

```text
Priority-Encoder-Verilog/
│
├── src/
│   └── priority_encoder.v
│
├── testbench/
│   └── priority_encoder_tb.v
│
├── simulation/
│   └── expected_output.txt
│
└── README.md
```

## 🛠️ Tools Used

* Verilog HDL
* Icarus Verilog
* ModelSim / Vivado

## ▶️ Simulation using Icarus Verilog

Compile the design and testbench:

```bash
iverilog -o priority_encoder_sim src/priority_encoder.v testbench/priority_encoder_tb.v
```

Run the simulation:

```bash
vvp priority_encoder_sim
```

## ✅ Expected Output

```text
D    | Y  | Valid
----------------
0000 | 00 |   0
0001 | 00 |   1
0010 | 01 |   1
0100 | 10 |   1
1000 | 11 |   1
1100 | 11 |   1
0110 | 10 |   1
1111 | 11 |   1
```

## 📚 Learning Outcomes

* Understanding priority encoders
* Understanding input priority
* Writing combinational Verilog
* Creating a Verilog testbench
* Creating and reading a truth table
* Simulating and verifying a digital circuit
