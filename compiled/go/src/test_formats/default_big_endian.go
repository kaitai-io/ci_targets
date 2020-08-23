// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type DefaultBigEndian struct {
	One uint32
	_io *kaitai.Stream
	_root *DefaultBigEndian
	_parent interface{}
}
func NewDefaultBigEndian() *DefaultBigEndian {
	return &DefaultBigEndian{
	}
}

func (this *DefaultBigEndian) Read(io *kaitai.Stream, parent interface{}, root *DefaultBigEndian) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4be()
	if err != nil {
		return err
	}
	this.One = uint32(tmp1)
	return err
}
