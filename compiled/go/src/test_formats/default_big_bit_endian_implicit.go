// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type DefaultBigBitEndianImplicit struct {
	One uint64
	_io *kaitai.Stream
	_root *DefaultBigBitEndianImplicit
	_parent interface{}
}
func NewDefaultBigBitEndianImplicit() *DefaultBigBitEndianImplicit {
	return &DefaultBigBitEndianImplicit{
	}
}

func (this *DefaultBigBitEndianImplicit) Read(io *kaitai.Stream, parent interface{}, root *DefaultBigBitEndianImplicit) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsInt(20)
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
