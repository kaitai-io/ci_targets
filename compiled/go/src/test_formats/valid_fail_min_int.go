// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidFailMinInt struct {
	Foo uint8
	_io *kaitai.Stream
	_root *ValidFailMinInt
	_parent interface{}
}
func NewValidFailMinInt() *ValidFailMinInt {
	return &ValidFailMinInt{
	}
}

func (this *ValidFailMinInt) Read(io *kaitai.Stream, parent interface{}, root *ValidFailMinInt) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Foo = tmp1
	if !(this.Foo >= 123) {
		return kaitai.NewValidationLessThanError(123, this.Foo, this._io, "/seq/0")
	}
	return err
}
