pragma circom 2.0.0;

template multiplier () {  

   signal input inputsignal_1;  
   signal input inputsignal_2;  

   signal x;
   signal y;

   //Declaration of final signal output
   signal output Q;

   component andGate=AND();
   component notGate=NOT();
   component orGate=OR();

   //circuit logic
   andGate.inputsignal_1 <== inputsignal_1;
   andGate.inputsignal_2 <== inputsignal_2;
   x <== andGate.out;

   notGate.in <== inputsignal_2;
   y <== notGate.out;

   orGate.inputsignal_1 <== x;
   orGate.inputsignal_2 <== y;
   Q <== orGate.out;

   //Value of Q when input a=0 & b=1;
   log("Q equal to:", Q);

}

template AND() {
    signal input a;
    signal input b;
    signal output out;

    out <== a*b;
}

template NOT() {
    signal input in;
    signal output out;

    out <== 1 + in - 2*in;
    // if(in>0)
    // out = 0
}

template OR() {
    signal input a;
    signal input b;
    signal output out;

    out <== a + b - a*b;
}

component main = multiplier();