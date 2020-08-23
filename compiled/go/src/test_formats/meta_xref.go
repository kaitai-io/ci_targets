// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type MetaXref struct {
	_io *kaitai.Stream
	_root *MetaXref
	_parent interface{}
}
func NewMetaXref() *MetaXref {
	return &MetaXref{
	}
}

func (this *MetaXref) Read(io *kaitai.Stream, parent interface{}, root *MetaXref) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
