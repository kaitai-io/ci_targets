// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"unicode/utf8"
)

type Expr1 struct {
	LenOf1 uint16
	Str1 string
	_io *kaitai.Stream
	_root *Expr1
	_parent interface{}
	_f_lenOf1Mod bool
	lenOf1Mod int
	_f_str1Len bool
	str1Len int
}

func (this *Expr1) Read(io *kaitai.Stream, parent interface{}, root *Expr1) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf1 = uint16(tmp1)
	tmp2, err := this.LenOf1Mod()
	if err != nil {
		return err
	}
	tmp3, err := this._io.ReadBytes(int(tmp2))
	if err != nil {
		return err
	}
	this.Str1 = string(tmp3)
	return err
}
func (this *Expr1) LenOf1Mod() (v int, err error) {
	if (this._f_lenOf1Mod) {
		return this.lenOf1Mod, nil
	}
	this.lenOf1Mod = int((this.LenOf1 - 2))
	this._f_lenOf1Mod = true
	return this.lenOf1Mod, nil
}
func (this *Expr1) Str1Len() (v int, err error) {
	if (this._f_str1Len) {
		return this.str1Len, nil
	}
	this.str1Len = int(utf8.RuneCountInString(this.Str1))
	this._f_str1Len = true
	return this.str1Len, nil
}
