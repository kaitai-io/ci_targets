// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type MetaTags struct {
	_io *kaitai.Stream
	_root *MetaTags
	_parent kaitai.Struct
}
func NewMetaTags() *MetaTags {
	return &MetaTags{
	}
}

func (this MetaTags) IO_() *kaitai.Stream {
	return this._io
}

func (this *MetaTags) Read(io *kaitai.Stream, parent kaitai.Struct, root *MetaTags) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
