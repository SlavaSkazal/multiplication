pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract multiplication {
    
	uint public number = 1;

	constructor() public {
		require(tvm.pubkey() != 0, 101);
		require(msg.pubkey() == tvm.pubkey(), 102);
		tvm.accept();
	}

	function multiply (uint value) public {
		require(value > 0 && value < 11, 101);
    	tvm.accept();
    	number *= value;
	}
}