// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ExprMod struct {
	IntU uint32
	IntS int32
	_io *kaitai.Stream
	_root *ExprMod
	_parent kaitai.Struct
	_f_modNegConst bool
	modNegConst int
	_f_modNegSeq bool
	modNegSeq int
	_f_modPosConst bool
	modPosConst int
	_f_modPosSeq bool
	modPosSeq int
}
func NewExprMod() *ExprMod {
	return &ExprMod{
	}
}

func (this ExprMod) IO_() *kaitai.Stream {
	return this._io
}

func (this *ExprMod) Read(io *kaitai.Stream, parent kaitai.Struct, root *ExprMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.IntU = uint32(tmp1)
	tmp2, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.IntS = int32(tmp2)
	return err
}
func (this *ExprMod) ModNegConst() (v int, err error) {
	if (this._f_modNegConst) {
		return this.modNegConst, nil
	}
	this._f_modNegConst = true
	tmp3 := -9837 % 13
	if tmp3 < 0 {
		tmp3 += 13
	}
	this.modNegConst = int(tmp3)
	return this.modNegConst, nil
}
func (this *ExprMod) ModNegSeq() (v int, err error) {
	if (this._f_modNegSeq) {
		return this.modNegSeq, nil
	}
	this._f_modNegSeq = true
	tmp4 := this.IntS % 13
	if tmp4 < 0 {
		tmp4 += 13
	}
	this.modNegSeq = int(tmp4)
	return this.modNegSeq, nil
}
func (this *ExprMod) ModPosConst() (v int, err error) {
	if (this._f_modPosConst) {
		return this.modPosConst, nil
	}
	this._f_modPosConst = true
	tmp5 := 9837 % 13
	if tmp5 < 0 {
		tmp5 += 13
	}
	this.modPosConst = int(tmp5)
	return this.modPosConst, nil
}
func (this *ExprMod) ModPosSeq() (v int, err error) {
	if (this._f_modPosSeq) {
		return this.modPosSeq, nil
	}
	this._f_modPosSeq = true
	tmp6 := this.IntU % 13
	if tmp6 < 0 {
		tmp6 += 13
	}
	this.modPosSeq = int(tmp6)
	return this.modPosSeq, nil
}
