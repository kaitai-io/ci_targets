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
	if !( ((this.Foo == 5) || (this.Foo == 6) || (this.Foo == 7) || (this.Foo == 8) || (this.Foo == 10) || (this.Foo == 11) || (this.Foo == 12) || (this.Foo == 47)) ) {
		return kaitai.NewValidationNotAnyOfError(this.Foo, this._io, "/seq/0")
	}
	return err
}
