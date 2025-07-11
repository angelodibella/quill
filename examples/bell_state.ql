// A simple script to define a Bell state.

// 1. Declare a 2-qubit register.
qreg q[2];

// 2. Apply a Hadamard to the first qubit.
h q[0];

// 3. Apply a CNOT controlled by the first qubit.
cnot q[0], q[1];

// 4. "Measure" all qubits in the register.
measure q;
