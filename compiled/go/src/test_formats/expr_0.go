// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type Expr0 struct {
	LenOf1 uint16
	_io *kaitai.Stream
	_root *Expr0
	_parent kaitai.Struct
	_f_mustBeAbc123 bool
	mustBeAbc123 string
	_f_mustBeF7 bool
	mustBeF7 int
}
func NewExpr0() *Expr0 {
	return &Expr0{
	}
}

func (this Expr0) IO_() *kaitai.Stream {
	return this._io
}

func (this *Expr0) Read(io *kaitai.Stream, parent kaitai.Struct, root *Expr0) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf1 = uint16(tmp1)
	return err
}
func (this *Expr0) MustBeAbc123() (v string, err error) {
	if (this._f_mustBeAbc123) {
		return this.mustBeAbc123, nil
	}
	this._f_mustBeAbc123 = true
	this.mustBeAbc123 = string("abc" + "123")
	return this.mustBeAbc123, nil
}
func (this *Expr0) MustBeF7() (v int, err error) {
	if (this._f_mustBeF7) {
		return this.mustBeF7, nil
	}
	this._f_mustBeF7 = true
	this.mustBeF7 = int(7 + 240)
	return this.mustBeF7, nil
}
