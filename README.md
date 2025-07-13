# Arq

⚠️ **Proof-of-Concept:** This project is an active work-in-progress and is being developed as a learning exercise. Its primary goal is to serve as a proof-of-concept for exploring the fundamentals of compilers and their application to quantum computing. The features are experimental and subject to change.

---

## About The Project

Arq is an interpreter for a toy quantum scripting language designed to be simple, intuitive, and educational. The project is heavily inspired by the phenomenal book ["Crafting Interpreters"](https://craftinginterpreters.com/) by Robert Nystrom and serves as a practical application of its teachings in the quantum domain.

The core idea is to create a lightweight tool for quickly sketching out quantum circuits and visualizing their structure without the overhead of larger, simulation-focused frameworks. It's built with **Rust** for performance, safety, and fun!

---

## Core Features

This project is being built iteratively. Here is a summary of the current features and the planned vision:

**Current:**
* **Simple Syntax:** A clean, minimal syntax for defining qubit registers and applying gates.
* **AST Representation:** Parses scripts into an Abstract Syntax Tree representing the quantum circuit.
* **Text-Based Visualizer:** "Executes" a script by printing a text-based diagram of the resulting circuit.

**Planned:**
* **Rule-Based Optimizer:** A compiler pass to apply simple circuit identities (e.g., `H -> H = I`) to simplify the circuit before visualization.
* **ZX-Calculus Target:** A compilation target that translates a circuit into a graph-based representation using the ZX-calculus, a powerful formalism for quantum circuit optimization.
* **Logical Qubit Abstraction:** A high-level macro system for defining logical qubits that expand into their underlying physical qubit structures using simple error-correcting codes.

---

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

* Rust toolchain (https://rustup.rs/)

### Installation & Running

1.  Clone the repo:
    ```sh
    git clone https://github.com/angelodibella/arq.git
    ```
2.  Navigate to the project directory:
    ```sh
    cd arq
    ```
3.  Build the project:
    ```sh
    cargo build --release
    ```
4.  Run a script file:
    ```sh
    cargo run --release -- examples/bell_state.ql
    ```

---

## Usage Example

Arq scripts are simple and declarative. Here is an example of creating a Bell state:

**`examples/bell_state.arq`**
```quill
// A simple script to define a Bell state.

// 1. Declare a 2-qubit register.
qreg q[2];

// 2. Apply a Hadamard to the first qubit.
h q[0];

// 3. Apply a CNOT controlled by the first qubit.
cnot q[0], q[1];

// 4. "Measure" all qubits in the register.
measure q;
```
