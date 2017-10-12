// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ImportedRoot struct {
	One uint8
	_io *kaitai.Stream
	_root *ImportedRoot
	_parent interface{}
}

func (this *ImportedRoot) Read(io *kaitai.Stream, parent interface{}, root *ImportedRoot) (err error) {
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
