// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type MetaTags struct {
	_io *kaitai.Stream
	_root *MetaTags
	_parent interface{}
}
func NewMetaTags() *MetaTags {
	return &MetaTags{
	}
}

func (this *MetaTags) Read(io *kaitai.Stream, parent interface{}, root *MetaTags) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
