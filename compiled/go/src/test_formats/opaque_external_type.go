// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type OpaqueExternalType struct {
	One *TermStrz
	_io *kaitai.Stream
	_root *OpaqueExternalType
	_parent kaitai.Struct
}
func NewOpaqueExternalType() *OpaqueExternalType {
	return &OpaqueExternalType{
	}
}

func (this OpaqueExternalType) IO_() *kaitai.Stream {
	return this._io
}

func (this *OpaqueExternalType) Read(io *kaitai.Stream, parent kaitai.Struct, root *OpaqueExternalType) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewTermStrz()
	err = tmp1.Read(this._io, nil, nil)
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
