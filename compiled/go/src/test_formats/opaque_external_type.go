// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type OpaqueExternalType struct {
	One *TermStrz
	_io *kaitai.Stream
	_root *OpaqueExternalType
	_parent interface{}
}
func NewOpaqueExternalType() *OpaqueExternalType {
	return &OpaqueExternalType{
	}
}

func (this *OpaqueExternalType) Read(io *kaitai.Stream, parent interface{}, root *OpaqueExternalType) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewTermStrz()
	err = tmp1.Read(this._io, this, nil)
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
