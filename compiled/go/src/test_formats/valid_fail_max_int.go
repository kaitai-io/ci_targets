// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidFailMaxInt struct {
	Foo uint8
	_io *kaitai.Stream
	_root *ValidFailMaxInt
	_parent interface{}
}
func NewValidFailMaxInt() *ValidFailMaxInt {
	return &ValidFailMaxInt{
	}
}

func (this *ValidFailMaxInt) Read(io *kaitai.Stream, parent interface{}, root *ValidFailMaxInt) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Foo = tmp1
	if !(this.Foo <= 12) {
		return kaitai.NewValidationGreaterThanError(12, this.Foo, this._io, "/seq/0")
	}
	return err
}
