// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"golang.org/x/text/encoding/japanese"
	"golang.org/x/text/encoding/charmap"
)

type ExprStrEncodings struct {
	LenOf1 uint16
	Str1 string
	LenOf2 uint16
	Str2 string
	LenOf3 uint16
	Str3 string
	LenOf4 uint16
	Str4 string
	_io *kaitai.Stream
	_root *ExprStrEncodings
	_parent kaitai.Struct
	_f_str1Eq bool
	str1Eq bool
	_f_str2Eq bool
	str2Eq bool
	_f_str3Eq bool
	str3Eq bool
	_f_str3EqStr2 bool
	str3EqStr2 bool
	_f_str4Eq bool
	str4Eq bool
	_f_str4GtStrCalc bool
	str4GtStrCalc bool
	_f_str4GtStrFromBytes bool
	str4GtStrFromBytes bool
}
func NewExprStrEncodings() *ExprStrEncodings {
	return &ExprStrEncodings{
	}
}

func (this ExprStrEncodings) IO_() *kaitai.Stream {
	return this._io
}

func (this *ExprStrEncodings) Read(io *kaitai.Stream, parent kaitai.Struct, root *ExprStrEncodings) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf1 = uint16(tmp1)
	tmp2, err := this._io.ReadBytes(int(this.LenOf1))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this.Str1 = string(tmp2)
	tmp3, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf2 = uint16(tmp3)
	tmp4, err := this._io.ReadBytes(int(this.LenOf2))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this.Str2 = string(tmp4)
	tmp5, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf3 = uint16(tmp5)
	tmp6, err := this._io.ReadBytes(int(this.LenOf3))
	if err != nil {
		return err
	}
	tmp6 = tmp6
	tmp7, err := kaitai.BytesToStr(tmp6, japanese.ShiftJIS.NewDecoder())
	if err != nil {
		return err
	}
	this.Str3 = tmp7
	tmp8, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf4 = uint16(tmp8)
	tmp9, err := this._io.ReadBytes(int(this.LenOf4))
	if err != nil {
		return err
	}
	tmp9 = tmp9
	tmp10, err := kaitai.BytesToStr(tmp9, charmap.CodePage437.NewDecoder())
	if err != nil {
		return err
	}
	this.Str4 = tmp10
	return err
}
func (this *ExprStrEncodings) Str1Eq() (v bool, err error) {
	if (this._f_str1Eq) {
		return this.str1Eq, nil
	}
	this.str1Eq = bool(this.Str1 == "Some ASCII")
	this._f_str1Eq = true
	return this.str1Eq, nil
}
func (this *ExprStrEncodings) Str2Eq() (v bool, err error) {
	if (this._f_str2Eq) {
		return this.str2Eq, nil
	}
	this.str2Eq = bool(this.Str2 == "\u3053\u3093\u306b\u3061\u306f")
	this._f_str2Eq = true
	return this.str2Eq, nil
}
func (this *ExprStrEncodings) Str3Eq() (v bool, err error) {
	if (this._f_str3Eq) {
		return this.str3Eq, nil
	}
	this.str3Eq = bool(this.Str3 == "\u3053\u3093\u306b\u3061\u306f")
	this._f_str3Eq = true
	return this.str3Eq, nil
}
func (this *ExprStrEncodings) Str3EqStr2() (v bool, err error) {
	if (this._f_str3EqStr2) {
		return this.str3EqStr2, nil
	}
	this.str3EqStr2 = bool(this.Str3 == this.Str2)
	this._f_str3EqStr2 = true
	return this.str3EqStr2, nil
}
func (this *ExprStrEncodings) Str4Eq() (v bool, err error) {
	if (this._f_str4Eq) {
		return this.str4Eq, nil
	}
	this.str4Eq = bool(this.Str4 == "\u2591\u2592\u2593")
	this._f_str4Eq = true
	return this.str4Eq, nil
}
func (this *ExprStrEncodings) Str4GtStrCalc() (v bool, err error) {
	if (this._f_str4GtStrCalc) {
		return this.str4GtStrCalc, nil
	}
	this.str4GtStrCalc = bool(this.Str4 > "\u2524")
	this._f_str4GtStrCalc = true
	return this.str4GtStrCalc, nil
}
func (this *ExprStrEncodings) Str4GtStrFromBytes() (v bool, err error) {
	if (this._f_str4GtStrFromBytes) {
		return this.str4GtStrFromBytes, nil
	}
	tmp11, err := kaitai.BytesToStr([]uint8{180}, charmap.CodePage437.NewDecoder())
	if err != nil {
		return false, err
	}
	this.str4GtStrFromBytes = bool(this.Str4 > tmp11)
	this._f_str4GtStrFromBytes = true
	return this.str4GtStrFromBytes, nil
}
