
# ZK SNARK Designer

Welcome to the ZK SNARK Designer project! In this project, you will be designing a new zkSNARK circuit that implements logical operations. The goal is to implement the circuit and deploy a verifier on-chain to verify proofs generated from this circuit.

## Project Description

Imagine waking up to an exciting task from Polygon! Your mission is to design a zkSNARK circuit that performs specific logical operations. Your circuit will be used to generate proofs that can be verified on-chain using a deployed verifier.

## Getting Started

### Prerequisites

- Node.js and npm installed
- Hardhat framework

### Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/zk-snark-designer.git
   cd zk-snark-designer
   ```

2. Install project dependencies:

   ```bash
   npm install
   ```

### Designing the Circuit

1. Open the circuit file `logical_operations.circom`.

2. Design the zkSNARK circuit to implement the required logical operations.

### Deploying the Verifier

1. Rename `.env.example` to `.env`.

2. Update the `.env` file with your Ethereum private key.

3. Deploy the verifier contract:

   ```bash
   npx hardhat run scripts/deployVerifier.js --network <network-name>
   ```

   Replace `<network-name>` with the desired Ethereum network (e.g., `rinkeby`, `mainnet`).

### Generating Proofs

1. Use your designed zkSNARK circuit to generate proofs.

2. Store the generated proofs as needed.

## Verification

1. Call the `verifyProof` function on the deployed verifier contract, providing the necessary proof data.

## Author

[Navdeep](https://github.com/nxvtej)
Metacrafters Student
## License

This project is licensed under the [MIT License](LICENSE).

---

