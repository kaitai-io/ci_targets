// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type StrLiterals2 struct {
	_io *kaitai.Stream
	_root *StrLiterals2
	_parent interface{}
	_f_dollar1 bool
	dollar1 string
	_f_dollar2 bool
	dollar2 string
	_f_hash bool
	hash string
	_f_atSign bool
	atSign string
}

func (this *StrLiterals2) Read(io *kaitai.Stream, parent interface{}, root *StrLiterals2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *StrLiterals2) Dollar1() (v string, err error) {
	if (this._f_dollar1) {
		return this.dollar1, nil
	}
	this.dollar1 = string("$foo")
	this._f_dollar1 = true
	return this.dollar1, nil
}
func (this *StrLiterals2) Dollar2() (v string, err error) {
	if (this._f_dollar2) {
		return this.dollar2, nil
	}
	this.dollar2 = string("${foo}")
	this._f_dollar2 = true
	return this.dollar2, nil
}
func (this *StrLiterals2) Hash() (v string, err error) {
	if (this._f_hash) {
		return this.hash, nil
	}
	this.hash = string("#{foo}")
	this._f_hash = true
	return this.hash, nil
}
func (this *StrLiterals2) AtSign() (v string, err error) {
	if (this._f_atSign) {
		return this.atSign, nil
	}
	this.atSign = string("@foo")
	this._f_atSign = true
	return this.atSign, nil
}
