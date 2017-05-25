// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
type StrLiterals struct {
	_io *kaitai.Stream
	_root *StrLiterals
	_parent interface{}
	_f_octalEatup2 bool
	octalEatup2 string
	_f_backslashes bool
	backslashes string
	_f_octalEatup bool
	octalEatup string
	_f_doubleQuotes bool
	doubleQuotes string
	_f_complexStr bool
	complexStr string
}

func (this *StrLiterals) Read(io *kaitai.Stream, parent interface{}, root *StrLiterals) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
_f_octalEatup2 bool
octalEatup2 string
func (this *StrLiterals) OctalEatup2() (v string, err error) {
	if (this._f_octalEatup2) {
		return this.octalEatup2, nil
	}
	this.octalEatup2 = string("\0022")
	this._f_octalEatup2 = true
	return this.octalEatup2, nil
}
_f_backslashes bool
backslashes string
func (this *StrLiterals) Backslashes() (v string, err error) {
	if (this._f_backslashes) {
		return this.backslashes, nil
	}
	this.backslashes = string("\\\\\\")
	this._f_backslashes = true
	return this.backslashes, nil
}
_f_octalEatup bool
octalEatup string
func (this *StrLiterals) OctalEatup() (v string, err error) {
	if (this._f_octalEatup) {
		return this.octalEatup, nil
	}
	this.octalEatup = string("\00022")
	this._f_octalEatup = true
	return this.octalEatup, nil
}
_f_doubleQuotes bool
doubleQuotes string
func (this *StrLiterals) DoubleQuotes() (v string, err error) {
	if (this._f_doubleQuotes) {
		return this.doubleQuotes, nil
	}
	this.doubleQuotes = string("\"\"\"")
	this._f_doubleQuotes = true
	return this.doubleQuotes, nil
}
_f_complexStr bool
complexStr string
func (this *StrLiterals) ComplexStr() (v string, err error) {
	if (this._f_complexStr) {
		return this.complexStr, nil
	}
	this.complexStr = string("\000\001\002\007\010\n\r\t\013\014\033=\007\n$\u263b")
	this._f_complexStr = true
	return this.complexStr, nil
}
