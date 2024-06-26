// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type BitsShiftByB32Le struct {
	A uint64
	B uint64
	_io *kaitai.Stream
	_root *BitsShiftByB32Le
	_parent kaitai.Struct
}
func NewBitsShiftByB32Le() *BitsShiftByB32Le {
	return &BitsShiftByB32Le{
	}
}

func (this BitsShiftByB32Le) IO_() *kaitai.Stream {
	return this._io
}

func (this *BitsShiftByB32Le) Read(io *kaitai.Stream, parent kaitai.Struct, root *BitsShiftByB32Le) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsIntLe(32)
	if err != nil {
		return err
	}
	this.A = tmp1
	tmp2, err := this._io.ReadBitsIntLe(8)
	if err != nil {
		return err
	}
	this.B = tmp2
	return err
}
