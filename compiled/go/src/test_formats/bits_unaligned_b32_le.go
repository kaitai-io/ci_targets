// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type BitsUnalignedB32Le struct {
	A bool
	B uint64
	C uint64
	_io *kaitai.Stream
	_root *BitsUnalignedB32Le
	_parent kaitai.Struct
}
func NewBitsUnalignedB32Le() *BitsUnalignedB32Le {
	return &BitsUnalignedB32Le{
	}
}

func (this BitsUnalignedB32Le) IO_() *kaitai.Stream {
	return this._io
}

func (this *BitsUnalignedB32Le) Read(io *kaitai.Stream, parent kaitai.Struct, root *BitsUnalignedB32Le) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsIntLe(1)
	if err != nil {
		return err
	}
	this.A = tmp1 != 0
	tmp2, err := this._io.ReadBitsIntLe(32)
	if err != nil {
		return err
	}
	this.B = tmp2
	tmp3, err := this._io.ReadBitsIntLe(7)
	if err != nil {
		return err
	}
	this.C = tmp3
	return err
}
