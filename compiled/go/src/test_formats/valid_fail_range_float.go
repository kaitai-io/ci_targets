// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidFailRangeFloat struct {
	Foo float32
	_io *kaitai.Stream
	_root *ValidFailRangeFloat
	_parent kaitai.Struct
}
func NewValidFailRangeFloat() *ValidFailRangeFloat {
	return &ValidFailRangeFloat{
	}
}

func (this ValidFailRangeFloat) IO_() *kaitai.Stream {
	return this._io
}

func (this *ValidFailRangeFloat) Read(io *kaitai.Stream, parent kaitai.Struct, root *ValidFailRangeFloat) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadF4le()
	if err != nil {
		return err
	}
	this.Foo = float32(tmp1)
	if !(this.Foo >= 0.2) {
		return kaitai.NewValidationLessThanError(0.2, this.Foo, this._io, "/seq/0")
	}
	if !(this.Foo <= 0.4) {
		return kaitai.NewValidationGreaterThanError(0.4, this.Foo, this._io, "/seq/0")
	}
	return err
}
