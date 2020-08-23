// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ValidFailAnyofInt struct {
	Foo uint8
	_io *kaitai.Stream
	_root *ValidFailAnyofInt
	_parent interface{}
}
func NewValidFailAnyofInt() *ValidFailAnyofInt {
	return &ValidFailAnyofInt{
	}
}

func (this *ValidFailAnyofInt) Read(io *kaitai.Stream, parent interface{}, root *ValidFailAnyofInt) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Foo = tmp1
	return err
}
