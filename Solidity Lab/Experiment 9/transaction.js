
const Counter = artifacts.require("Counter");
module.exports = async function (callback) {
    try {
        const accounts = await web3.eth.getAccounts();
        const counter = await Counter.deployed();

        // Read the initial state
        console.log("Initial count:", (await counter.count()).toString());
        console.log("Initial message:", await counter.message());

        // Transaction 1: Increment the counter
        const tx1 = await counter.increment({
            from: accounts[0]
        });

        console.log("\nTransaction 1: Increment");
        console.log("Transaction hash:", tx1.tx);
        console.log("Gas used:", tx1.receipt.gasUsed);
        console.log("Block number:", tx1.receipt.blockNumber);
        console.log("Count:", (await counter.count()).toString());

        // Transaction 2: Increment the counter again
        const tx2 = await counter.increment({
            from: accounts[0]
        });

        console.log("\nTransaction 2: Increment");
        console.log("Transaction hash:", tx2.tx);
        console.log("Gas used:", tx2.receipt.gasUsed);
        console.log("Block number:", tx2.receipt.blockNumber);
        console.log("Count:", (await counter.count()).toString());

        // Transaction 3: Update the message
        const tx3 = await counter.setMessage(
            "Hello from Blockchain Class",
            { from: accounts[1] }
        );

        console.log("\nTransaction 3: Set Message");
        console.log("Transaction hash:", tx3.tx);
        console.log("Gas used:", tx3.receipt.gasUsed);
        console.log("Block number:", tx3.receipt.blockNumber);
        console.log("Message:", await counter.message());

        console.log("\nAll transactions completed successfully!");

    } catch (error) {
        console.error("Transaction error:", error);
    }

    callback();
};

