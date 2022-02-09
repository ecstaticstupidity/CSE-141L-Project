//This file defines the parameters used in the alu
// CSE141L
//	Rev. 2020.5.27
// import package into each module that needs it
//   packages very useful for declaring global variables
package definitions;
    
// Instruction map
    const logic [3:0]kLSH  = 4'b0000;
    const logic [3:0]kRSH  = 4'b0001;
    const logic [3:0]kAND  = 4'b0010;
    const logic [3:0]kOR   = 4'b0011;
	const logic [3:0]kGEQ  = 4'b1000;
    const logic [3:0]kEQ   = 4'b1001;
	const logic [3:0]kNEG  = 4'b1010;
    const logic [3:0]kADD  = 4'b1011;
    const logic [3:0]kNEQ  = 4'b1101;
// enum names will appear in timing diagram
    typedef enum logic[2:0] {
        ADD, LSH, RSH, XOR,
        AND, SUB, CLR } op_mne;
// note: kADD is of type logic[2:0] (3-bit binary)
//   ADD is of type enum -- equiv., but watch casting
//   see ALU.sv for how to handle this   
endpackage // definitions