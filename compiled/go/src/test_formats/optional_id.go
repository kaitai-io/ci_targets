// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type OptionalId struct {
	_unnamed0 uint8
	_unnamed1 uint8
	_unnamed2 []byte
	_io *kaitai.Stream
	_root *OptionalId
	_parent kaitai.Struct
}
func NewOptionalId() *OptionalId {
	return &OptionalId{
	}
}

func (this OptionalId) IO_() *kaitai.Stream {
	return this._io
}

func (this *OptionalId) Read(io *kaitai.Stream, parent kaitai.Struct, root *OptionalId) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this._unnamed0 = tmp1
	tmp2, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this._unnamed1 = tmp2
	tmp3, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this._unnamed2 = tmp3
	return err
}
