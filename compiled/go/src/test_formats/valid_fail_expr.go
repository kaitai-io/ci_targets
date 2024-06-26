// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidFailExpr struct {
	Foo uint8
	Bar int16
	_io *kaitai.Stream
	_root *ValidFailExpr
	_parent kaitai.Struct
}
func NewValidFailExpr() *ValidFailExpr {
	return &ValidFailExpr{
	}
}

func (this ValidFailExpr) IO_() *kaitai.Stream {
	return this._io
}

func (this *ValidFailExpr) Read(io *kaitai.Stream, parent kaitai.Struct, root *ValidFailExpr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Foo = tmp1
	{
		_it := this.Foo
		if !(_it == 1) {
			return kaitai.NewValidationExprError(this.Foo, this._io, "/seq/0")
		}
	}
	tmp2, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Bar = int16(tmp2)
	{
		_it := this.Bar
		if !( ((_it < -190) || (_it > -190)) ) {
			return kaitai.NewValidationExprError(this.Bar, this._io, "/seq/1")
		}
	}
	return err
}
