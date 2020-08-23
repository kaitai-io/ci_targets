// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type CombineStr struct {
	StrTerm string
	StrLimit string
	StrEos string
	_io *kaitai.Stream
	_root *CombineStr
	_parent interface{}
	_f_limitOrCalcBytes bool
	limitOrCalcBytes string
	_f_limitOrCalc bool
	limitOrCalc string
	_f_termOrLimit bool
	termOrLimit string
	_f_limitOrEos bool
	limitOrEos string
	_f_calcOrCalcBytes bool
	calcOrCalcBytes string
	_f_strCalcBytes bool
	strCalcBytes string
	_f_eosOrCalc bool
	eosOrCalc string
	_f_termOrCalc bool
	termOrCalc string
	_f_termOrCalcBytes bool
	termOrCalcBytes string
	_f_termOrEos bool
	termOrEos string
	_f_strCalc bool
	strCalc string
	_f_eosOrCalcBytes bool
	eosOrCalcBytes string
	_f_calcBytes bool
	calcBytes []byte
}
func NewCombineStr() *CombineStr {
	return &CombineStr{
	}
}

func (this *CombineStr) Read(io *kaitai.Stream, parent interface{}, root *CombineStr) (err error) {
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
func (this *CombineStr) LimitOrCalcBytes() (v string, err error) {
	if (this._f_limitOrCalcBytes) {
		return this.limitOrCalcBytes, nil
	}
	var tmp4 string;
	if (true) {
		tmp4 = this.StrLimit
	} else {
		tmp5, err := this.StrCalcBytes()
		if err != nil {
			return "", err
		}
		tmp4 = tmp5
	}
	this.limitOrCalcBytes = string(tmp4)
	this._f_limitOrCalcBytes = true
	return this.limitOrCalcBytes, nil
}
func (this *CombineStr) LimitOrCalc() (v string, err error) {
	if (this._f_limitOrCalc) {
		return this.limitOrCalc, nil
	}
	var tmp6 string;
	if (false) {
		tmp6 = this.StrLimit
	} else {
		tmp7, err := this.StrCalc()
		if err != nil {
			return "", err
		}
		tmp6 = tmp7
	}
	this.limitOrCalc = string(tmp6)
	this._f_limitOrCalc = true
	return this.limitOrCalc, nil
}
func (this *CombineStr) TermOrLimit() (v string, err error) {
	if (this._f_termOrLimit) {
		return this.termOrLimit, nil
	}
	var tmp8 string;
	if (true) {
		tmp8 = this.StrTerm
	} else {
		tmp8 = this.StrLimit
	}
	this.termOrLimit = string(tmp8)
	this._f_termOrLimit = true
	return this.termOrLimit, nil
}
func (this *CombineStr) LimitOrEos() (v string, err error) {
	if (this._f_limitOrEos) {
		return this.limitOrEos, nil
	}
	var tmp9 string;
	if (true) {
		tmp9 = this.StrLimit
	} else {
		tmp9 = this.StrEos
	}
	this.limitOrEos = string(tmp9)
	this._f_limitOrEos = true
	return this.limitOrEos, nil
}
func (this *CombineStr) CalcOrCalcBytes() (v string, err error) {
	if (this._f_calcOrCalcBytes) {
		return this.calcOrCalcBytes, nil
	}
	var tmp10 string;
	if (false) {
		tmp11, err := this.StrCalc()
		if err != nil {
			return "", err
		}
		tmp10 = tmp11
	} else {
		tmp12, err := this.StrCalcBytes()
		if err != nil {
			return "", err
		}
		tmp10 = tmp12
	}
	this.calcOrCalcBytes = string(tmp10)
	this._f_calcOrCalcBytes = true
	return this.calcOrCalcBytes, nil
}
func (this *CombineStr) StrCalcBytes() (v string, err error) {
	if (this._f_strCalcBytes) {
		return this.strCalcBytes, nil
	}
	tmp13, err := this.CalcBytes()
	if err != nil {
		return "", err
	}
	this.strCalcBytes = string(string(tmp13))
	this._f_strCalcBytes = true
	return this.strCalcBytes, nil
}
func (this *CombineStr) EosOrCalc() (v string, err error) {
	if (this._f_eosOrCalc) {
		return this.eosOrCalc, nil
	}
	var tmp14 string;
	if (false) {
		tmp14 = this.StrEos
	} else {
		tmp15, err := this.StrCalc()
		if err != nil {
			return "", err
		}
		tmp14 = tmp15
	}
	this.eosOrCalc = string(tmp14)
	this._f_eosOrCalc = true
	return this.eosOrCalc, nil
}
func (this *CombineStr) TermOrCalc() (v string, err error) {
	if (this._f_termOrCalc) {
		return this.termOrCalc, nil
	}
	var tmp16 string;
	if (true) {
		tmp16 = this.StrTerm
	} else {
		tmp17, err := this.StrCalc()
		if err != nil {
			return "", err
		}
		tmp16 = tmp17
	}
	this.termOrCalc = string(tmp16)
	this._f_termOrCalc = true
	return this.termOrCalc, nil
}
func (this *CombineStr) TermOrCalcBytes() (v string, err error) {
	if (this._f_termOrCalcBytes) {
		return this.termOrCalcBytes, nil
	}
	var tmp18 string;
	if (false) {
		tmp18 = this.StrTerm
	} else {
		tmp19, err := this.StrCalcBytes()
		if err != nil {
			return "", err
		}
		tmp18 = tmp19
	}
	this.termOrCalcBytes = string(tmp18)
	this._f_termOrCalcBytes = true
	return this.termOrCalcBytes, nil
}
func (this *CombineStr) TermOrEos() (v string, err error) {
	if (this._f_termOrEos) {
		return this.termOrEos, nil
	}
	var tmp20 string;
	if (false) {
		tmp20 = this.StrTerm
	} else {
		tmp20 = this.StrEos
	}
	this.termOrEos = string(tmp20)
	this._f_termOrEos = true
	return this.termOrEos, nil
}
func (this *CombineStr) StrCalc() (v string, err error) {
	if (this._f_strCalc) {
		return this.strCalc, nil
	}
	this.strCalc = string("bar")
	this._f_strCalc = true
	return this.strCalc, nil
}
func (this *CombineStr) EosOrCalcBytes() (v string, err error) {
	if (this._f_eosOrCalcBytes) {
		return this.eosOrCalcBytes, nil
	}
	var tmp21 string;
	if (true) {
		tmp21 = this.StrEos
	} else {
		tmp22, err := this.StrCalcBytes()
		if err != nil {
			return "", err
		}
		tmp21 = tmp22
	}
	this.eosOrCalcBytes = string(tmp21)
	this._f_eosOrCalcBytes = true
	return this.eosOrCalcBytes, nil
}
func (this *CombineStr) CalcBytes() (v []byte, err error) {
	if (this._f_calcBytes) {
		return this.calcBytes, nil
	}
	this.calcBytes = []byte([]uint8{98, 97, 122})
	this._f_calcBytes = true
	return this.calcBytes, nil
}
