// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type CombineBytes struct {
	BytesTerm []byte
	BytesLimit []byte
	BytesEos []byte
	_io *kaitai.Stream
	_root *CombineBytes
	_parent interface{}
	_f_limitOrCalc bool
	limitOrCalc []byte
	_f_termOrLimit bool
	termOrLimit []byte
	_f_limitOrEos bool
	limitOrEos []byte
	_f_eosOrCalc bool
	eosOrCalc []byte
	_f_termOrCalc bool
	termOrCalc []byte
	_f_bytesCalc bool
	bytesCalc []byte
	_f_termOrEos bool
	termOrEos []byte
}

func (this *CombineBytes) Read(io *kaitai.Stream, parent interface{}, root *CombineBytes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytesTerm(124, false, true, true)
	if err != nil {
		return err
	}
	this.BytesTerm = tmp1
	tmp2, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this.BytesLimit = tmp2
	tmp3, err := this._io.ReadBytesFull()
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.BytesEos = tmp3
	return err
}
func (this *CombineBytes) LimitOrCalc() (v []byte, err error) {
	if (this._f_limitOrCalc) {
		return this.limitOrCalc, nil
	}
	var tmp4 []byte;
	if (false) {
		tmp4 = this.BytesLimit
	} else {
		tmp5, err := this.BytesCalc()
		if err != nil {
			return nil, err
		}
		tmp4 = tmp5
	}
	this.limitOrCalc = []byte(tmp4)
	this._f_limitOrCalc = true
	return this.limitOrCalc, nil
}
func (this *CombineBytes) TermOrLimit() (v []byte, err error) {
	if (this._f_termOrLimit) {
		return this.termOrLimit, nil
	}
	var tmp6 []byte;
	if (true) {
		tmp6 = this.BytesTerm
	} else {
		tmp6 = this.BytesLimit
	}
	this.termOrLimit = []byte(tmp6)
	this._f_termOrLimit = true
	return this.termOrLimit, nil
}
func (this *CombineBytes) LimitOrEos() (v []byte, err error) {
	if (this._f_limitOrEos) {
		return this.limitOrEos, nil
	}
	var tmp7 []byte;
	if (true) {
		tmp7 = this.BytesLimit
	} else {
		tmp7 = this.BytesEos
	}
	this.limitOrEos = []byte(tmp7)
	this._f_limitOrEos = true
	return this.limitOrEos, nil
}
func (this *CombineBytes) EosOrCalc() (v []byte, err error) {
	if (this._f_eosOrCalc) {
		return this.eosOrCalc, nil
	}
	var tmp8 []byte;
	if (true) {
		tmp8 = this.BytesEos
	} else {
		tmp9, err := this.BytesCalc()
		if err != nil {
			return nil, err
		}
		tmp8 = tmp9
	}
	this.eosOrCalc = []byte(tmp8)
	this._f_eosOrCalc = true
	return this.eosOrCalc, nil
}
func (this *CombineBytes) TermOrCalc() (v []byte, err error) {
	if (this._f_termOrCalc) {
		return this.termOrCalc, nil
	}
	var tmp10 []byte;
	if (true) {
		tmp10 = this.BytesTerm
	} else {
		tmp11, err := this.BytesCalc()
		if err != nil {
			return nil, err
		}
		tmp10 = tmp11
	}
	this.termOrCalc = []byte(tmp10)
	this._f_termOrCalc = true
	return this.termOrCalc, nil
}
func (this *CombineBytes) BytesCalc() (v []byte, err error) {
	if (this._f_bytesCalc) {
		return this.bytesCalc, nil
	}
	this.bytesCalc = []byte([]uint8{82, 110, 68})
	this._f_bytesCalc = true
	return this.bytesCalc, nil
}
func (this *CombineBytes) TermOrEos() (v []byte, err error) {
	if (this._f_termOrEos) {
		return this.termOrEos, nil
	}
	var tmp12 []byte;
	if (false) {
		tmp12 = this.BytesTerm
	} else {
		tmp12 = this.BytesEos
	}
	this.termOrEos = []byte(tmp12)
	this._f_termOrEos = true
	return this.termOrEos, nil
}
