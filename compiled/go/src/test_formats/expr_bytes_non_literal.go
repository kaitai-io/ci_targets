// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ExprBytesNonLiteral struct {
	One uint8
	Two uint8
	_io *kaitai.Stream
	_root *ExprBytesNonLiteral
	_parent interface{}
	_f_calcBytes bool
	calcBytes []byte
}
func NewExprBytesNonLiteral() *ExprBytesNonLiteral {
	return &ExprBytesNonLiteral{
	}
}

func (this *ExprBytesNonLiteral) Read(io *kaitai.Stream, parent interface{}, root *ExprBytesNonLiteral) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Two = tmp2
	return err
}
func (this *ExprBytesNonLiteral) CalcBytes() (v []byte, err error) {
	if (this._f_calcBytes) {
		return this.calcBytes, nil
	}
	this.calcBytes = []byte([]uint8{this.One, this.Two})
	this._f_calcBytes = true
	return this.calcBytes, nil
}
