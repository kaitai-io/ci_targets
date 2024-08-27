// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type CombineStr struct {
	StrTerm string
	StrLimit string
	StrEos string
	_io *kaitai.Stream
	_root *CombineStr
	_parent kaitai.Struct
	_f_calcBytes bool
	calcBytes []byte
	_f_calcOrCalcBytes bool
	calcOrCalcBytes string
	_f_eosOrCalc bool
	eosOrCalc string
	_f_eosOrCalcBytes bool
	eosOrCalcBytes string
	_f_limitOrCalc bool
	limitOrCalc string
	_f_limitOrCalcBytes bool
	limitOrCalcBytes string
	_f_limitOrEos bool
	limitOrEos string
	_f_strCalc bool
	strCalc string
	_f_strCalcBytes bool
	strCalcBytes string
	_f_termOrCalc bool
	termOrCalc string
	_f_termOrCalcBytes bool
	termOrCalcBytes string
	_f_termOrEos bool
	termOrEos string
	_f_termOrLimit bool
	termOrLimit string
}
func NewCombineStr() *CombineStr {
	return &CombineStr{
	}
}

func (this CombineStr) IO_() *kaitai.Stream {
	return this._io
}

func (this *CombineStr) Read(io *kaitai.Stream, parent kaitai.Struct, root *CombineStr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytesTerm(124, false, true, true)
	if err != nil {
		return err
	}
	this.StrTerm = string(tmp1)
	tmp2, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this.StrLimit = string(tmp2)
	tmp3, err := this._io.ReadBytesFull()
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.StrEos = string(tmp3)
	return err
}
func (this *CombineStr) CalcBytes() (v []byte, err error) {
	if (this._f_calcBytes) {
		return this.calcBytes, nil
	}
	this._f_calcBytes = true
	this.calcBytes = []byte([]uint8{98, 97, 122})
	return this.calcBytes, nil
}
func (this *CombineStr) CalcOrCalcBytes() (v string, err error) {
	if (this._f_calcOrCalcBytes) {
		return this.calcOrCalcBytes, nil
	}
	this._f_calcOrCalcBytes = true
	var tmp4 string;
	if (false) {
		tmp5, err := this.StrCalc()
		if err != nil {
			return "", err
		}
		tmp4 = tmp5
	} else {
		tmp6, err := this.StrCalcBytes()
		if err != nil {
			return "", err
		}
		tmp4 = tmp6
	}
	this.calcOrCalcBytes = string(tmp4)
	return this.calcOrCalcBytes, nil
}
func (this *CombineStr) EosOrCalc() (v string, err error) {
	if (this._f_eosOrCalc) {
		return this.eosOrCalc, nil
	}
	this._f_eosOrCalc = true
	var tmp7 string;
	if (false) {
		tmp7 = this.StrEos
	} else {
		tmp8, err := this.StrCalc()
		if err != nil {
			return "", err
		}
		tmp7 = tmp8
	}
	this.eosOrCalc = string(tmp7)
	return this.eosOrCalc, nil
}
func (this *CombineStr) EosOrCalcBytes() (v string, err error) {
	if (this._f_eosOrCalcBytes) {
		return this.eosOrCalcBytes, nil
	}
	this._f_eosOrCalcBytes = true
	var tmp9 string;
	if (true) {
		tmp9 = this.StrEos
	} else {
		tmp10, err := this.StrCalcBytes()
		if err != nil {
			return "", err
		}
		tmp9 = tmp10
	}
	this.eosOrCalcBytes = string(tmp9)
	return this.eosOrCalcBytes, nil
}
func (this *CombineStr) LimitOrCalc() (v string, err error) {
	if (this._f_limitOrCalc) {
		return this.limitOrCalc, nil
	}
	this._f_limitOrCalc = true
	var tmp11 string;
	if (false) {
		tmp11 = this.StrLimit
	} else {
		tmp12, err := this.StrCalc()
		if err != nil {
			return "", err
		}
		tmp11 = tmp12
	}
	this.limitOrCalc = string(tmp11)
	return this.limitOrCalc, nil
}
func (this *CombineStr) LimitOrCalcBytes() (v string, err error) {
	if (this._f_limitOrCalcBytes) {
		return this.limitOrCalcBytes, nil
	}
	this._f_limitOrCalcBytes = true
	var tmp13 string;
	if (true) {
		tmp13 = this.StrLimit
	} else {
		tmp14, err := this.StrCalcBytes()
		if err != nil {
			return "", err
		}
		tmp13 = tmp14
	}
	this.limitOrCalcBytes = string(tmp13)
	return this.limitOrCalcBytes, nil
}
func (this *CombineStr) LimitOrEos() (v string, err error) {
	if (this._f_limitOrEos) {
		return this.limitOrEos, nil
	}
	this._f_limitOrEos = true
	var tmp15 string;
	if (true) {
		tmp15 = this.StrLimit
	} else {
		tmp15 = this.StrEos
	}
	this.limitOrEos = string(tmp15)
	return this.limitOrEos, nil
}
func (this *CombineStr) StrCalc() (v string, err error) {
	if (this._f_strCalc) {
		return this.strCalc, nil
	}
	this._f_strCalc = true
	this.strCalc = string("bar")
	return this.strCalc, nil
}
func (this *CombineStr) StrCalcBytes() (v string, err error) {
	if (this._f_strCalcBytes) {
		return this.strCalcBytes, nil
	}
	this._f_strCalcBytes = true
	tmp16, err := this.CalcBytes()
	if err != nil {
		return "", err
	}
	this.strCalcBytes = string(string(tmp16))
	return this.strCalcBytes, nil
}
func (this *CombineStr) TermOrCalc() (v string, err error) {
	if (this._f_termOrCalc) {
		return this.termOrCalc, nil
	}
	this._f_termOrCalc = true
	var tmp17 string;
	if (true) {
		tmp17 = this.StrTerm
	} else {
		tmp18, err := this.StrCalc()
		if err != nil {
			return "", err
		}
		tmp17 = tmp18
	}
	this.termOrCalc = string(tmp17)
	return this.termOrCalc, nil
}
func (this *CombineStr) TermOrCalcBytes() (v string, err error) {
	if (this._f_termOrCalcBytes) {
		return this.termOrCalcBytes, nil
	}
	this._f_termOrCalcBytes = true
	var tmp19 string;
	if (false) {
		tmp19 = this.StrTerm
	} else {
		tmp20, err := this.StrCalcBytes()
		if err != nil {
			return "", err
		}
		tmp19 = tmp20
	}
	this.termOrCalcBytes = string(tmp19)
	return this.termOrCalcBytes, nil
}
func (this *CombineStr) TermOrEos() (v string, err error) {
	if (this._f_termOrEos) {
		return this.termOrEos, nil
	}
	this._f_termOrEos = true
	var tmp21 string;
	if (false) {
		tmp21 = this.StrTerm
	} else {
		tmp21 = this.StrEos
	}
	this.termOrEos = string(tmp21)
	return this.termOrEos, nil
}
func (this *CombineStr) TermOrLimit() (v string, err error) {
	if (this._f_termOrLimit) {
		return this.termOrLimit, nil
	}
	this._f_termOrLimit = true
	var tmp22 string;
	if (true) {
		tmp22 = this.StrTerm
	} else {
		tmp22 = this.StrLimit
	}
	this.termOrLimit = string(tmp22)
	return this.termOrLimit, nil
}
