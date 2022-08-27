library dynamicmerkletree;

pub fn calc_root_hash(_idx: u64, _len: u64, _leafHash: b256, _proof: b256) -> b256 {
	if(_len == 0) {
	  0x0000000000000000000000000000000000000000000000000000000000000000
	}
	
	_proofIdx: u64 = 0;
	_nodeHash: b256 = _leafHash;

	while(_len > 1) {
	_peerIdx: u64 = (_idx / 2) * 2;
	_peerHash: b256 = 0x0000000000000000000000000000000000000000000000000000000000000000;
	if(_peerIdx == _idx) {
	_peerIdx += 1;
	}
	if(_peerIdx < _len) {
	_peerHash = _proof[_proofIdx];
	_proofIdx += 1;
	}
	
	_parentHash: b256 = 0x0000000000000000000000000000000000000000000000000000000000000000;

	if(_peerIdx >= _len && _idx >= _len){}
	else if(_peerIdx > _idx){
	let _parentHash = sha256(_nodeHash+_peerHash);
	}
	else{
	let _parentHash = sha256(_nodeHash+_peerHash);
	}

	_len = (_len -1) / 2 + 1;
	_idx  = _idx / 2;
	_nodeHash = _parentHash;
	}
	_nodeHash
}

pub fn calc_root_hash_without_length(_idx: u64, _leafHash: b256, _proof: b256) -> b256 {
        _nodeHash: b256 = _leafHash;
	
}   

pub fn verify(_idx: u64, _len: u64, _root: b256, _oldleafHash: b256, _proof: b256) -> b256 {
        calc_root_hash()
}

pub fn update(_idx: u64, _len: u64, _oldRoot: b256 , _oldLeafHash: b256, _newLeafHash: b256, _proof: b256) -> b25 {
        //require verify
	calc_root_hash()
}

pub fn append(_len: u64, _oldRoot: b256, _leafHash: b256, _proof: b256) -> b256 {
	if(_len > 0) {
		if((_len & (_len - 1)) == 0){
	        //require
		}
	
		else{
		//require verify
		}
	}        
}         
