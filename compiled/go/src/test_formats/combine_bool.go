// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type CombineBool struct {
	BoolBit bool
	_io *kaitai.Stream
	_root *CombineBool
	_parent interface{}
	_f_boolCalc bool
	boolCalc bool
	_f_boolCalcBit bool
	boolCalcBit bool
}
func NewCombineBool() *CombineBool {
	return &CombineBool{
	}
}

func (this *CombineBool) Read(io *kaitai.Stream, parent interface{}, root *CombineBool) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsIntBe(1)
	if err != nil {
		return err
	}
	this.BoolBit = tmp1 != 0
	return err
}
func (this *CombineBool) BoolCalc() (v bool, err error) {
	if (this._f_boolCalc) {
		return this.boolCalc, nil
	}
	this.boolCalc = bool(false)
	this._f_boolCalc = true
	return this.boolCalc, nil
}
func (this *CombineBool) BoolCalcBit() (v bool, err error) {
	if (this._f_boolCalcBit) {
		return this.boolCalcBit, nil
	}
	var tmp2 bool;
	if (true) {
		tmp3, err := this.BoolCalc()
		if err != nil {
			return false, err
		}
		tmp2 = tmp3
	} else {
		tmp2 = this.BoolBit
	}
	this.boolCalcBit = bool(tmp2)
	this._f_boolCalcBit = true
	return this.boolCalcBit, nil
}
