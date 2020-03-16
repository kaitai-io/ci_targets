// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type TypeIntUnaryOp struct {
	ValueS2 int16
	ValueS8 int64
	_io *kaitai.Stream
	_root *TypeIntUnaryOp
	_parent interface{}
	_f_unaryS2 bool
	unaryS2 int
	_f_unaryS8 bool
	unaryS8 int64
}

func (this *TypeIntUnaryOp) Read(io *kaitai.Stream, parent interface{}, root *TypeIntUnaryOp) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.ValueS2 = int16(tmp1)
	tmp2, err := this._io.ReadS8le()
	if err != nil {
		return err
	}
	this.ValueS8 = int64(tmp2)
	return err
}
func (this *TypeIntUnaryOp) UnaryS2() (v int, err error) {
	if (this._f_unaryS2) {
		return this.unaryS2, nil
	}
	this.unaryS2 = int(-(this.ValueS2))
	this._f_unaryS2 = true
	return this.unaryS2, nil
}
func (this *TypeIntUnaryOp) UnaryS8() (v int64, err error) {
	if (this._f_unaryS8) {
		return this.unaryS8, nil
	}
	this.unaryS8 = int64(-(this.ValueS8))
	this._f_unaryS8 = true
	return this.unaryS8, nil
}
