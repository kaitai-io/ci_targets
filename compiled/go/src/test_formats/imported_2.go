// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type Imported2 struct {
	One uint8
	_io *kaitai.Stream
	_root *Imported2
	_parent kaitai.Struct
}
func NewImported2() *Imported2 {
	return &Imported2{
	}
}

func (this Imported2) IO_() *kaitai.Stream {
	return this._io
}

func (this *Imported2) Read(io *kaitai.Stream, parent kaitai.Struct, root *Imported2) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
